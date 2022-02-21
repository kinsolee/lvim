lvim.keys.normal_mode["mh"] =
    "<cmd>lua require(\"harpoon.mark\").add_file()<cr>"
lvim.keys.normal_mode["mu"] =
    "<cmd>lua require(\"harpoon.ui\").toggle_quick_menu()<cr>"

lvim.builtin.which_key.mappings["m"] = {
    name = "Replace",
    -- a = {"<cmd>BookmarkAnnotate<cr>", "Annotate"},
    -- b = { "<cmd>lua require('telescope').extensions.vim_bookmarks.current_file({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>", "Show Buffer" },
    -- c = {"<cmd>BookmarkClear<cr>", "Clear"},
    m = {'<cmd>lua require("harpoon.mark").add_file()<cr>', "Harpoon Mark"},
    u = {
        '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', "Harpoon Menu"
    }
    -- m = {"<cmd>BookmarkToggle<cr>", "Toggle"},
    -- j = {"<cmd>BookmarkNext<cr>", "Next"},
    -- k = {"<cmd>BookmarkPrev<cr>", "Prev"},
    -- q = { "<cmd>BookmarkShowAll<cr>", "Show QF" },
    -- s = {
    --     "<cmd>lua require('telescope').extensions.vim_bookmarks.all({ hide_filename=false, prompt_title=\"bookmarks\", shorten_path=false })<cr>",
    --     "Show All"
    -- },
    -- x = {"<cmd>BookmarkClearAll<cr>", "Clear All"}
}

lvim.builtin.which_key.mappings["P"] = {
    "<cmd>Telescope projects<cr>", "Projects"
}
lvim.builtin.which_key.mappings["l"]["o"] = {
    '<cmd>SymbolsOutline<cr>', "Toggle Outline"
}
