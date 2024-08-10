require "nvchad.mappings"
-- add yours here

require "nvchad.mappings"
-- add yours here

-- vim.cmd([[au! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])
-- vim.cmd([[au FocusLost * :wa]])
-- aaa
local map = vim.keymap.set
local wtf = vim.keymap.del
wtf("n", "<leader>wk");
map("i", "<Esc>", "<Esc>", { desc = "" })
map("n", "W", "viW", { desc = "" })
map("n", "H", ":lua vim.lsp.buf.hover()<CR>", { desc = "" })
map("n", "dB", "dbcl", { desc = "" })
map("n", "f[", "f{", { desc = "" })
map("n", "f{", "f[", { desc = "" })
map("n", "<C-t>", "<M-i>", { desc = "Terminal" })
map("n", "<C-,>", "printf(\"% \n\",);<Esc>0f%a", { desc = "Terminal" })
map("i", "<C-,>", "printf(\"% \\n\",);<Esc>0f%a", { desc = "Terminal" })
map("v", "<C-,>", "yoprintf(\"% \\n\",<Esc>pa);<Esc>0f%a", { desc = "Terminal" })
map("i", "kj", "<ESC>")
map("i", "<C-q>", "=")
map("i", "<D-'>", "=")
map("v", "F",
  "yo<Esc>oif (!<Esc>pa)<CR>return NULL;<Esc>")
map("i", "<C-->", "_")
map("n", "dW", "ciW")
map("n", "D", "ciW")
map("n", "L", "A")
map("n", "dl", "d$a")
map("i", "<C-[>", "<")
map("n", "<D-[>", "ci{<CR><Esc><S-o>")
map("i", "<C-]>", ">")
map("i", "<C-0>", "_")
map("n", "<leader>s", "v$hd")
-- map("n", "<leader>g", ":vsplit<CR>")
map("i", "<C-'>", "_")
-- map('i', '<C-,>', '<', { noremap = true, silent = true })
-- map('i', '<C-.>', '>', { noremap = true, silent = true })
map('i', '<C-;>', '_', { noremap = true, silent = true })
map("v", "kj", "<ESC>")
map("v", "5", "%")
map("n", "<Leader>a", "<C-^>")
--kirby
map("v", "L", ":s/\\(.*\\)/\\1")
-- map("n", "<Leader>c", "o```c```<Esc>0fca<CR><Esc><S-o><Esc>p")
map("n", "<Leader>c'", "vi\"y")
map("n", "<Leader>c[", "vi{y")
map("n", "<Leader>c]", "vi]y")
map("n", "<Leader>c9", "vi(y")
map("n", "<Leader>c0", "vi(y")

map("n", "<Leader>v'", "vi\"<Esc>p")
map("n", "<Leader>v[", "vi{<Esc>p")
map("n", "<Leader>v]", "vi]<Esc>p")
map("n", "<Leader>v9", "vi(<Esc>p")
map("n", "<Leader>v0", "vi(<Esc>p")

map("n", "<Leader>d'", "vi\"d")
map("n", "<Leader>d[", "vi{d")
map("n", "<Leader>d]", "vi]d")
map("n", "<Leader>d9", "vi(d")
map("n", "<Leader>d0", "vi(d")

map("n", "<Leader>d'", "vi\"d")
map("n", "<Leader>d[", "vi{d")
map("n", "<Leader>d]", "vi]d")
map("n", "<Leader>d9", "vi(d")
map("i", "<C-c>", "```c```<Esc>0fca<CR><Esc><S-o><Esc>p")
map("n", "<Leader>f[", "f{V%")
map("n", "<Leader>f]", "f}V%")
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>fn", ":e %:h/")
-- Mapeo para mover el cursor al inicio de la línea sin cambiar la columna
map('n', '0', '_', { noremap = true })
map('n', '<leader>b', '_', { noremap = true })
map('v', '<leader>b', '_', { noremap = true })
map('v', '0', '_', { noremap = true })

-- Mapeo para mover el cursor al final de la línea sin cambiar la columna
map('v', '4', '$', { noremap = true })

-- Mapeos para seleccionar texto entre paréntesis, corchetes y llaves
map('n', '<A-9>', 'vi(', { noremap = true })
map('n', '<A-{>', 'vi{', { noremap = true })
map('n', '<A-[>', 'vi[', { noremap = true })

-- Mapeos para cambiar el contenido entre paréntesis, corchetes y llaves
--

map('n', '<C-9>', 'f(ci(', { noremap = true })
map('n', '<leader>9', 'vi(', { noremap = true })
map('n', '<C-\'>', 'f"ci"', { noremap = true })
map('n', '"', 'f"ci"', { noremap = true })
map('n', '<leader>\'', 'vi"', { noremap = true })
map('n', '<C-[>', 'f{ci{', { noremap = true })
map('n', '{', 'f{ci{', { noremap = true })
map('n', '<leader>[', 'vi{', { noremap = true })
map('n', '}', 'f[ci[', { noremap = true })
map('n', '<leader>]', 'vi[', { noremap = true })

-- Mapeos para insertar líneas vacías encima y debajo de la línea actual
map('n', '<leader>\'', 'f{li<CR><Esc>ko<Tab>', { noremap = true })
map('n', '<leader>\\', 'f(li<CR><Esc>ko<Tab>', { noremap = true })

-- Mapeos para comandos específicos
-- map('n', '<leader>w', ':GoImports<CR>', { noremap = true, silent = true })
-- map('n', '<C-w>', 'mAggvG=i<Esc>\'A', { noremap = true, silent = true })
map('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true })
map('n', '<leader>n', ':Telescope live_grep<CR>', { noremap = true, silent = true })
map("v", "<C-f>", "<cmd>Telescope grep_string<CR>", { desc = "Telescope Live grep" })
-- map('i', '<C-;>', 'System.out.println();<Esc>hi', { noremap = true, silent = true })
map('n', '<leader>gi', ':GoImports<CR>', { noremap = true, silent = true })
map('i', '<D-/>', [[fmt.Println()<Esc>:GoImports<CR>ha]], { noremap = true, silent = true })
map('i', '<C-/>', [[fmt.Println()<Esc>:GoImports<CR>ha]], { noremap = true, silent = true })
map('n', ';', ':Telescope lsp_definitions<CR>', { noremap = true, silent = true })
map('n', '<C-;>', ':Telescope lsp_definitions<CR>', { noremap = true, silent = true })
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
map('n', '<F7>', ':w<CR>:!gcc % -lm -o ./main && ./main <CR>', { noremap = true, silent = true })
map('n', '<F6>', ':make<CR>', { noremap = true, silent = true })
-- map('n', '<leader>o', ':w<CR>:term gcc % && ./a.out <CR>', { noremap = true, silent = true })
map('n', '<leader>o', 'ci{<CR><Esc>ko', { noremap = true })
-- TODO: Hacer que intente correr el main.go y si no lo encuentra correr el archivo actual
map('n', '<leader>ru', ':w<CR>:term go run main.go <CR>', { noremap = true, silent = true })
-- Mapeos para el historial del clipboard

map("n", "<F1>", '"0p', { noremap = true, silent = true })
map("n", "<F2>", '"1p', { noremap = true, silent = true })
map("n", "<F3>", '"2p', { noremap = true, silent = true })
map("n", "<F4>", '"3p', { noremap = true, silent = true })
map("n", "<F5>", '"4p', { noremap = true, silent = true })

-- Manera gamer de hacer las marcas globales
-- local low = function(i) return string.char(97 + i) end
-- local upp = function(i) return string.char(65 + i) end
--
-- for i = 0, 25 do vim.keymap.set("n", "m" .. low(i), "m" .. upp(i)) end
-- for i = 0, 25 do vim.keymap.set("n", "m" .. upp(i), "m" .. low(i)) end
-- for i = 0, 25 do vim.keymap.set("n", "'" .. low(i), "'" .. upp(i)) end
-- for i = 0, 25 do vim.keymap.set("n", "'" .. upp(i), "'" .. low(i)) end

vim.api.nvim_set_keymap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })

-- Cerrar buffer actual
-- map('n', '<C-,>', ':bd<CR>', { noremap = true })

-- Abrir y cerrar el explorador
map('v', '<', '<gv', { noremap = true })
map('v', '>', '>gv', { noremap = true })
map({ "n", "t" }, "<leader>'", "vi\"", { desc = "Terminal Toggle Floating term" })
-- map({ "n", "t" }, "<C-n>", function()
--     require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
-- end, { desc = "Terminal Toggle Floating term" })

map("n", "<leader>q", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })

map("n", "<leader>c", ":close<CR>")
-- map("n", "<leader>q", ":bd<CR>:vsplit<CR>", { desc = "Buffer Close" })
map("n", "<leader>Q", ":%bd|e#<CR>", { desc = "Buffer Close" })

map("n", "<D-j>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer Goto prev" })

map("n", "<D-k>", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer Goto next" })


-- quick fix list prev and next
-- vim.keymap.set("n", "<leader>;", "<cmd>cnext<CR>zz", { desc = "Forward qfixlist" })
-- vim.keymap.set("n", "<leader>h", "<cmd>cprev<CR>zz", { desc = "Backward qfixlist" })

vim.keymap.set("n", "<leader>v", "<cmd>vsplit<CR>", { desc = "Forward qfixlist" })
vim.keymap.set("n", "<leader>h", "<cmd>split<CR>", { desc = "Backward qfixlist" })

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

vim.keymap.set("t", "<C-q>", "<C-\\><C-N>")
vim.keymap.set("i", "<C-a>", "á", { noremap = true, silent = true })
vim.keymap.set("i", "<C-e>", "é", { noremap = true, silent = true })
vim.keymap.set("i", "<C-i>", "í", { noremap = true, silent = true })
vim.keymap.set("i", "<C-o>", "ó", { noremap = true, silent = true })
vim.keymap.set("i", "<C-u>", "ú", { noremap = true, silent = true })
vim.keymap.set("i", "<C-n>", "ñ", { noremap = true, silent = true })
vim.keymap.set("i", "<C-=>", "¿", { noremap = true, silent = true })
vim.keymap.set("i", "<D-1>", "¡", { noremap = true, silent = true })
vim.keymap.set('v', '/', "\"fy/\\V<C-R>f<CR>")
map("n", "<C-e>", ":noh<CR>", { desc = "" })

vim.keymap.set("n", "<C-,>", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set("n", "<C-.>", [[<cmd>vertical resize -5<cr>]])

vim.keymap.set("n", ">", [[<cmd>vertical resize +5<cr>]])
vim.keymap.set("n", "<", [[<cmd>vertical resize -5<cr>]])

map("n", "<C-q>", ":q<CR>", { desc = "" })
local actions = require("telescope.actions")
require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<C-q>"] = actions.close,
      },
      n = {
        ["<C-q>"] = actions.close,
        ["q"] = actions.close,
        ["<leader>q"] = actions.close,
      },
    },
  },
})
-- por si quiero hacer que pueda pasarme a otra ventana estando centrado en una sola ventana
map("n", "<leader>o", ":ZoomWinTabToggle<CR>", { desc = "" })
map("n", "C-h", ":ZenMode<CR>", { silent = true })
map("n", "C-j", ":ZenMode<CR>", { silent = true })
map("n", "C-k", ":ZenMode<CR>", { silent = true })
map("n", "C-l", ":ZenMode<CR>", { silent = true })
map("n", "<leader>x", "<C-x>", { silent = true })

map("n", "<C-`>", ":NvimTreeFocus<CR>", { desc = "Terminal" })
map("n", "<leader>e", ":lua MiniFiles.open()<CR>", { desc = "Nvimtree Toggle window" })
map("n", "Q", ":wa<CR>:mksession!<CR>:%bd<CR>:q<CR>", { desc = "Save all and quit" })
map("n", "<C-s><C-s>", ":wa<CR>:mksession!<CR>:%bd<CR>:q<CR>", { desc = "Save all and quit" })
map("n", "<C-z>", ":%bd|e#<CR>", { desc = "Buffer Close" })
map("i", "<C-p>", "<?=$?><Esc>hi", { desc = "Save all and quit" })
map("v", "'", "f\"h", { desc = "Save all and quit" })
map("v", "}", "f}", { desc = "Save all and quit" })
map("v", "]", "f]", { desc = "Save all and quit" })
map("v", "4", "$h", { desc = "Save all and quit" })
map("v", ";", "$", { desc = "Save all and quit" })
map("n", ";", "$", { desc = "Save all and quit" })
map("n", "<C-\\'>", "f\"ci\"")
map("t", "KJ", "<C-\\><C-n>")
map("t", "C-h", "<Esc>:KittyNavigateLeft<cr>", { silent = true })
map("t", "C-j", "<Esc>:KittyNavigateDown<cr>", { silent = true })
map("t", "C-k", "<Esc>:KittyNavigateUp<cr>", { silent = true })
map("t", "C-l", "<Esc>:KittyNavigateRight<cr>", { silent = true })
map("n", "<leader>th", ":Telescope themes <CR> gruvbox<Esc> q", { desc = "telescope nvchad themes" })
map('n', '<leader>r', ':bd|b#<cr><C-^>', { noremap = true, silent = true })
-- vim.cmd([[au! BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif]])
-- vim.cmd([[au FocusLost * :wa]])
vim.keymap.set("v", "J", ":m '>+2<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- map("t", "C-l", "<Esc>:KittyNavigateRight<cr>", { silent = true })

vim.api.nvim_set_keymap('n', '<Leader>i', ':BookmarkAnnotate<CR>', {})
vim.api.nvim_set_keymap('n', ';d', ':BookmarkShowAll<CR>', {})
vim.api.nvim_set_keymap('n', ';a', ':BookmarkNext<CR>', {})
vim.api.nvim_set_keymap('n', ';s', ':BookmarkPrev<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>c', ':BookmarkClear<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>x', ':BookmarkClearAll<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>kk', ':BookmarkMoveUp<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>jj', ':BookmarkMoveDown<CR>', {})
vim.api.nvim_set_keymap('n', '<Leader>g', ':BookmarkMoveToLine<CR>', {})

-- vim.keymap.set("n", "<Tab>", function()
--   require("nvchad.tabufline").prev()
-- end, { desc = "Buffer Goto prev" })
--
-- vim.keymap.set("n", "|", function()
--   require("nvchad.tabufline").next()
-- end, { desc = "Buffer Goto next" }, { silent = true, noremap = true, })

-- wtf("n", "C-h")
-- wtf("n", "C-j")
-- wtf("n", "C-k")
-- wtf("n", "C-l")
