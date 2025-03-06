return{
    {"williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "texlab", "pylsp", "clangd", "marksman" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
		lazy = false,

        config = function()
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
			require("lspconfig").lua_ls.setup({
				capabilities = capabilities
			})
			--require("lspconfig").ccls.setup({})
			require("lspconfig").texlab.setup({
				capabilities = capabilities
			})
			require("lspconfig").pylsp.setup({
				capabilities = capabilities
			})	
            require("lspconfig").clangd.setup({
                capabilities = capabilities
			})

            require("lspconfig").marksman.setup({
                capabilities = capabilities
			})
		end
    }
}
