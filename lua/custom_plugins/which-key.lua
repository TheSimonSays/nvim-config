local whichkey_status, whichkey = pcall(require, "which-key")

if not whichkey_status then
    return
end

local opt = {
    mode = "n",
    prefix = "<leader>",
    silent = true,
}

local mappings = {
    f = {
        name = "Fuzzy Find",
        f = { "Find Files" },
        g = { "Live grep on files" },
        c = { "Grep string" },
        b = { "Show buffers" },
        h = { "Show help tags" },
    },
    s = {
        name = "Window Spliting",
        v = { "Split window vertically" },
        h = { "Split window horizontally" },
        e = { "Set equal width" },
        x = { "Close current tab" },
    },
    n = {
        name = "Search",
        h = { "Clear searching" }
    },
    g = {
        name = "LSP",
        d = { "Peek definition" },
        D = { "Go to with new tab" },
    },
    ["<C-n>"] = {
        name = "Toggle tree"
    }
}


whichkey.setup({})
whichkey.register(mappings, opt)