require('nvim-autopairs').setup({  
    enable_moveright = true,        -- Allow moving right when typing closing quote  
    enable_afterquote = true,       -- Add bracket pairs after quotes  
    ignored_next_char = [=[[%w%%%'%[%"%.%`%$]]=], -- Characters to ignore when pairing
})

