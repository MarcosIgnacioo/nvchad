require "nvchad.mappings"
-- add yours here

-- vim.cmd([[au! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])
-- vim.cmd([[au FocusLost * :wa]])
-- aaa
local map = vim.keymap.set
map("n", "<C-t>", "<M-i>", { desc = "Terminal" })
map("i", "kj", "<ESC>")
map("i", "<C-->", "_")
map("i", "<C-[>", "<")
map("i", "<C-]>", ">")
map("i", "<C-0>", "_")
map("i", "<C-'>", "-")
map('i', '<C-,>', '<', { noremap = true, silent = true })
map('i', '<C-.>', '>', { noremap = true, silent = true })
map('i', '<C-;>', '_', { noremap = true, silent = true })
map("v", "kj", "<ESC>")
map("v", "5", "%")
map("n", "<Leader>a", "<C-^>")
--kirby
map("v", "L", ":s/\\(.*\\)/\\1")
map("n", "<Leader>c", "o```c```<Esc>0fca<CR><Esc><S-o><Esc>p")
map("i", "<C-c>", "```c```<Esc>0fca<CR><Esc><S-o><Esc>p")
map("n", "<Leader>f[", "f{V%")
map("n", "<Leader>f]", "f}V%")
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>fn", ":e %:h/")
-- Mapeo para mover el cursor al inicio de la línea sin cambiar la columna
map('n', '0', '_', { noremap = true })
map('n', '9', '_', { noremap = true })
map('n', '<leader>b', '_', { noremap = true })
map('v', '<leader>b', '_', { noremap = true })
map('v', '0', '_', { noremap = true })
map('v', '9', '_', { noremap = true })

-- Mapeo para mover el cursor al final de la línea sin cambiar la columna
map('n', '4', '$', { noremap = true })
map('v', '4', '$', { noremap = true })

-- Mapeos para seleccionar texto entre paréntesis, corchetes y llaves
map('n', '<A-9>', 'vi(', { noremap = true })
map('n', '<A-{>', 'vi{', { noremap = true })
map('n', '<A-[>', 'vi[', { noremap = true })

-- Mapeos para cambiar el contenido entre paréntesis, corchetes y llaves
map('n', '<C-9>', 'f(ci(', { noremap = true })
map('n', '<leader>9', 'vi(', { noremap = true })
map('n', '<C-\'>', 'f"ci"', { noremap = true })
map('n', '<leader>\'', 'vi"', { noremap = true })
map('n', '<C-[>', 'f{ci{', { noremap = true })
map('n', '<leader>[', 'vi{', { noremap = true })
map('n', '<C-]>', 'f[ci[', { noremap = true })
map('n', '<leader>]', 'vi[', { noremap = true })

-- Mapeos para insertar líneas vacías encima y debajo de la línea actual
map('n', '<leader>\'', 'f{li<CR><Esc>ko<Tab>', { noremap = true })
map('n', '<leader>\\', 'f(li<CR><Esc>ko<Tab>', { noremap = true })
map('n', '<leader>o', 'ci{<CR><Esc>ko', { noremap = true })

-- Mapeos para comandos específicos
-- map('n', '<leader>w', ':GoImports<CR>', { noremap = true, silent = true })
-- map('n', '<C-w>', 'mAggvG=i<Esc>\'A', { noremap = true, silent = true })
map('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true })
map('n', '<leader>n', ':Telescope live_grep<CR>', { noremap = true, silent = true })
-- map('i', '<C-;>', 'System.out.println();<Esc>hi', { noremap = true, silent = true })
map('n', '<leader>v', ':GoImports<CR>', { noremap = true, silent = true })
map('i', '<D-/>', [[fmt.Println()<Esc>:GoImports<CR>ha]], { noremap = true, silent = true })
map('i', '<C-/>', [[fmt.Println()<Esc>:GoImports<CR>ha]], { noremap = true, silent = true })

map('n', '<C-;>', 'mA:Telescope lsp_definitions<CR>', { noremap = true, silent = true })
-- map('i', '<D-.>', [[if err != nil {<CR><Tab>return err<CR>}<Esc>k]],
--   { noremap = true, silent = true })
map('i', 'kj', '<Esc>', { noremap = true, silent = true })
map('v', 'kj', '<Esc>', { noremap = true, silent = true })
map('n', '<Leader>a', '<C-^>', { noremap = true, silent = true })

-- Mapeo para pegar desde diferentes registros con las teclas de función F1-F5 en modo normal
map('n', '<F1>', '"0p', { noremap = true, silent = true })
map('n', '<F2>', '"1p', { noremap = true, silent = true })
map('n', '<F3>', '"2p', { noremap = true, silent = true })
map('n', '<F4>', '"3p', { noremap = true, silent = true })
map('n', '<F5>', '"4p', { noremap = true, silent = true })

-- Mapeos para funcionalidades específicas asignadas a teclas de función
map('n', '<F6>', ':DBUIToggle<CR>', { noremap = true, silent = true })
map('n', '<F7>', ':w<CR>:!gcc % -lm && ./a.out <CR>', { noremap = true, silent = true })
map('n', '<leader>r', ':w<CR>:!gcc % && ./a.out <CR>', { noremap = true, silent = true })
map('n', '<leader>o', ':w<CR>:term gcc % && ./a.out <CR>', { noremap = true, silent = true })
-- TODO: Hacer que intente correr el main.go y si no lo encuentra correr el archivo actual
map('n', '<leader>ru', ':w<CR>:term go run main.go <CR>', { noremap = true, silent = true })
-- Mapeos para el historial del clipboard

map("n", "<F1>", '"0p', { noremap = true, silent = true })
map("n", "<F2>", '"1p', { noremap = true, silent = true })
map("n", "<F3>", '"2p', { noremap = true, silent = true })
map("n", "<F4>", '"3p', { noremap = true, silent = true })
map("n", "<F5>", '"4p', { noremap = true, silent = true })

-- Manera gamer de hacer las marcas globales
local low = function(i) return string.char(97 + i) end
local upp = function(i) return string.char(65 + i) end

for i = 0, 25 do vim.keymap.set("n", "m" .. low(i), "m" .. upp(i)) end
for i = 0, 25 do vim.keymap.set("n", "m" .. upp(i), "m" .. low(i)) end
for i = 0, 25 do vim.keymap.set("n", "'" .. low(i), "'" .. upp(i)) end
for i = 0, 25 do vim.keymap.set("n", "'" .. upp(i), "'" .. low(i)) end

-- map("n", "gl", vim.lsp.diagnostic.show_line_diagnostics, { noremap = true, silent = true })

-- Cerrar buffer actual
-- map('n', '<C-,>', ':bd<CR>', { noremap = true })

-- Abrir y cerrar el explorador
-- map('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true })
map('v', '<', '<gv', { noremap = true })
map('v', '>', '>gv', { noremap = true })
map({ "n", "t" }, "<leader>'", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal Toggle Floating term" })
-- map({ "n", "t" }, "<C-n>", function()
--     require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
-- end, { desc = "Terminal Toggle Floating term" })

map("n", "<leader>q", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })


map("n", "<D-j>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer Goto prev" })

map("n", "<D-k>", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer Goto next" })

map("i", "<D-k>", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer Goto next" })

map("i", "<D-j>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer Goto prev" })

-- quick fix list prev and next
vim.keymap.set("n", "<leader>;", "<cmd>cnext<CR>zz", { desc = "Forward qfixlist" })
vim.keymap.set("n", "<leader>h", "<cmd>cprev<CR>zz", { desc = "Backward qfixlist" })

vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
  desc = "Toggle Spectre"
})
vim.keymap.set('n', '<leader>sw', '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
  desc = "Search current word"
})
vim.keymap.set('v', '<leader>sw', '<esc><cmd>lua require("spectre").open_visual()<CR>', {
  desc = "Search current word"
})
vim.keymap.set('n', '<leader>sp', '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
  desc = "Search on current file"
})

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<C-,>", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set("n", "<C-.>", [[<cmd>vertical resize -5<cr>]])

vim.keymap.set("i", "<C-a>", "á", { noremap = true, silent = true })
vim.keymap.set("i", "<C-e>", "é", { noremap = true, silent = true })
vim.keymap.set("i", "<C-i>", "í", { noremap = true, silent = true })
vim.keymap.set("i", "<C-o>", "ó", { noremap = true, silent = true })
vim.keymap.set("i", "<C-u>", "ú", { noremap = true, silent = true })
vim.keymap.set("i", "<C-n>", "ñ", { noremap = true, silent = true })
vim.keymap.set("i", "<C-=>", "¿", { noremap = true, silent = true })
vim.keymap.set("i", "<D-1>", "¡", { noremap = true, silent = true })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('v', '/', "\"fy/\\V<C-R>f<CR>")
