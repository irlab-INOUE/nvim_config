local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x') -- "_ は_（アンダースコア）レジスタを使用するという意味で，データを残さないための書き方

-- j,k は表示の通りに移動する
keymap.set('n', 'j', 'gj')
keymap.set('n', 'k', 'gk')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'db', 'vb"_d')

-- Delete a word
keymap.set('n', 'dw', 'viw"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<Left>', '<C-w>h')
keymap.set('', 's<Up>', '<C-w>k')
keymap.set('', 's<Down>', '<C-w>j')
keymap.set('', 's<Right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')
-- Resize window
keymap.set('n', '<C-w><Left>', '<C-w><')
keymap.set('n', '<C-w><Right>', '<C-w>>')
keymap.set('n', '<C-w><Up>', '<C-w>+')
keymap.set('n', '<C-w><Down>', '<C-w>-')
-- Close window
keymap.set('n', 'sc', '<C-w>c', { silent = true })
