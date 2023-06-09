local toggleterm_status, toggleterm = pcall(require, "toggleterm")

if not toggleterm_status then
    return
end

toggleterm.setup({
    size = 20,
    open_mapping = [[<leader>t]],
    hide_members = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mapping = true,
    persist_size = true,
    direction = "horizontal",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            backgroud = "Normal",
        },
    },
})

