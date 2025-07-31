return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = function(_, opts)
    opts.format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    }
    opts.formatters = {
      ["biome-check"] = {
        command = "biome",
        args = {
          "format", -- Use format instead of check for cleaner output
          "--write",
          "$FILENAME",
          "> /dev/null 2>&1", -- Redirect all output to /dev/null
        },
        stdout = false, -- Formatter modifies file in place
        condition = function()
          return vim.fn.filereadable("biome.json") == 1
        end,
        post_format = function() -- Reload buffer to reflect changes
          vim.cmd("edit!")
        end,
      },
    }
    opts.formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      javascript = { "biome-check" },
      javascriptreact = { "biome-check" },
      typescript = { "biome-check" },
      typescriptreact = { "biome-check" },
    }
    opts.notify_on_error = true -- Enable temporarily for debugging
  end,
  keys = {
    {
      "<leader>ww",
      function()
        require("conform").format()
      end,
      desc = "Format buffer",
    },
  },
}
