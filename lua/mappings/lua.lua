local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- keybind list
-- map("", "<leader>c", '"+y')
map("n", "<C-h>", '<C-w>h')
map("n", "<C-j>", '<C-w>j')
map("n", "<C-k>", '<C-w>k')
map("n", "<C-l>", '<C-w>l')

-- Tabs
map("n", "<Tab>", 'gt')
map("n", "<S-Tab>", 'gt')

-- Opens edit with current path
-- don't know if this will work
map("n", "<Leader>e", ':e <C-R>=expand(%:p:h) . "/" <CR>')

-- open terminals  
map("n", "<C-b>" , [[<Cmd> vnew term://fish<CR>]] , opt) -- split term vertically , over the right  
map("n", "<C-n>" , [[<Cmd> split term://fish | resize 28 <CR>]] , opt) -- split term vertically , over the right  
