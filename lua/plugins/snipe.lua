return {
    "leath-dub/snipe.nvim",
    keys = {
        {
            "<Tab>",
            function()
                require("snipe").open_buffer_menu()
            end,
            desc = "Open Snipe buffer menu",
        },
    },
    config = function()
        local snipe = require("snipe")
        snipe.setup({
            hints = {
                dictionary = "asdfglwertyuiop",
            },
            navigate = {
                cancel_snipe = "<Tab>",
                close_buffer = "q",
                open_vsplit = "v",
                open_split = "h",
            },
        })
    end,
}
