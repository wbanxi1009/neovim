return{
    -- For luasnip users.
    "L3MON4D3/LuaSnip",
    dependencies = {
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
    },
    config = function()
        require('luasnip').setup({})

        local ls = require("luasnip")

        vim.keymap.set({"i"}, "<tab>", function() ls.expand() end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump( 1) end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-K>", function() ls.jump(-1) end, {silent = true})
    end
}

