-- install with yarn or npm
return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }
        vim.g.mkdp_browserfunc = "OpenMarkdownPreview"

        -- Key mapping
        vim.keymap.set("n", "<leader>ms", "<cmd>MarkdownPreviewToggle<CR>", { desc = "Toggle Markdown Preview" })
    end,
    ft = { "markdown" },
}
