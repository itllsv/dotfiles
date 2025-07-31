return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "main",
		dependencies = {
			{ "github/copilot.vim" },
			{ "nvim-lua/plenary.nvim" },
		},
		build = "make tiktoken",
		opts = {},
		keys = {
			{ "<leader>cco", "<cmd>CopilotChatOpen<cr>", desc = "Abrir Chat Copilot" },
			{ "<leader>ccc", "<cmd>CopilotChatClose<cr>", desc = "Fechar Chat Copilot" },
			{ "<leader>cct", "<cmd>CopilotChatToggle<cr>", desc = "Alternar Chat Copilot" },
			{ "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "Explicar código" },
			{ "<leader>ccr", "<cmd>CopilotChatReview<cr>", desc = "Revisar código" },
			{ "<leader>ccf", "<cmd>CopilotChatFixCode<cr>", desc = "Corrigir código" },
			{ "<leader>ccg", "<cmd>CopilotChatTests<cr>", desc = "Gerar testes" },
		},
	},
}
