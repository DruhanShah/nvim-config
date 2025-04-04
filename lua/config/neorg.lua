local colors = require("nano-theme").get_palette()

return {
    load = {
        ["core.defaults"] = {},
        ["core.completion"] = {
            config = {
                engine = "nvim-cmp",
            },
        },
        ["core.dirman"] = {
            config = {
                workspaces = {
                    notes = "~/Notes/Norg",
                },
                default_workspace = "notes",
            },
        },
        ["core.esupports.metagen"] = {
            config = {
                timezone = "implicit-local",
                template = {
                    { "title", function()
                        return vim.fn.expand("%:p:t:r")
                    end },
                    { "description", "" },
                    { "categories",  "" },
                }
            },
        },
        ["core.concealer"] = {
            config = {
                init_open_folds = "auto",
                icon_preset = "basic",
                icons = {
                    code_block = {
                        conceal = true,
                        width = "content",
                        padding = {
                            left = 1,
                            right = 1,
                        },
                    },
                    heading = {
                        icons = {
                            "󰪥",
                            "󰻃",
                            "",
                            "",
                            "",
                            "",
                        }
                    },
                    todo = {
                        undone = {
                            icon = " ",
                        },
                        pending = {
                            icon = "󱦟",
                        },
                        uncertain = {
                            icon = "?",
                        },
                        cancelled = {
                            icon = "󰜺",
                        },
                        urgent = {
                            icon = "!",
                        },
                    },
                },
            },
        },
        ["core.highlights"] = {
            config = {
                dim = {
                    markup = {
                        verbatim = {
                            percentage = colors.base == "#1e1e2e" and -60 or 10,
                            affect = "background",
                        },
                    },
                    tags = {
                        ranged_verbatim = {
                            code_block = {
                                percentage = colors.base == "#1e1e2e" and -60 or 10,
                                affect = "background",
                            },
                        },
                    },
                },
                highlights = {
                    tags = {
                        ranged_verbatim = {
                            document_meta = {
                                key = "guifg="..colors.surface1,
                                title = "guifg="..colors.mauve.." gui=bold",
                            },
                        },
                    },
                    rendered = {
                        latex = "guifg="..colors.text,
                    },
                    headings = {
                        ["1"] = {
                            title = "guifg="..colors.text.." gui=bold",
                            prefix = "guifg="..colors.text.." gui=bold",
                        },
                        ["2"] = {
                            title = "guifg="..colors.text.." gui=bold",
                            prefix = "guifg="..colors.text.." gui=bold",
                        },
                        ["3"] = {
                            title = "guifg="..colors.text.." gui=bold",
                            prefix = "guifg="..colors.text.." gui=bold",
                        },
                        ["4"] = {
                            title = "guifg="..colors.text.." gui=bold",
                            prefix = "guifg="..colors.text.." gui=bold",
                        },
                        ["5"] = {
                            title = "guifg="..colors.text.." gui=bold",
                            prefix = "guifg="..colors.text.." gui=bold",
                        },
                        ["6"] = {
                            title = "guifg="..colors.text.." gui=bold",
                            prefix = "guifg="..colors.text.." gui=bold",
                        },
                    },
                    todo_items = {
                        done = "guifg="..colors.green.." gui=bold",
                        undone = "guifg="..colors.overlay1.." gui=bold",
                        urgent = "guifg="..colors.red.." gui=bold",
                        on_hold = "guifg="..colors.blue.." gui=bold",
                        pending = "guifg="..colors.lavender.." gui=bold",
                        recurring = "guifg="..colors.mauve.." gui=bold",
                        uncertain = "guifg="..colors.peach.." gui=bold",
                        cancelled = "guifg="..colors.surface1.." gui=bold",
                    },
                },
            },
        },
        ["core.summary"] = {},
        ["core.journal"] = {
            config = {
                journal_folder = "Journal",
                workspace = "notes",
            },
        },
        ["core.export.markdown"] = {
            config = {
                extensions = "all",
            },
        },
        ["core.ui.calendar"] = {},
        ["core.integrations.image"] = {},
        ["core.latex.renderer"] = {
            config = {
                render_on_enter = true,
            },
        },
        ["external.conceal-wrap"] = {},
    },
}
