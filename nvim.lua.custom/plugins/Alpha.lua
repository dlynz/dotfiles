local plugins = {
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        config = function ()
            dofile(vim.g.base46_cache .. "syntax")
            require'alpha'.setup(require'alpha.themes.dashboard'.config)
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")
            dashboard.section.header.val = {
                --[["                               ....                                         ",
                "                            ,;;'''';;,                    ,;;;;,            ",
                "                  ,        ;;'      `;;,               .,;;;'   ;           ",
                "               ,;;;       ;;          `;;,';;;,.     ,%;;'     '            ",
                "             ,;;,;;       ;;         ,;`;;;, `;::.  %%;'                    ",
                "            ;;;,;;;       `'       ,;;; ;;,;;, `::,%%;'                     ",
                "            ;;;,;;;,          .,%%%%%'% ;;;;,;;   %;;;                      ",
                "  ,%,.      `;;;,;;;,    .,%%%%%%%%%'%; ;;;;;,;;  %;;;                      ",
                " ;,`%%%%%%%%%%`;;,;;'%%%%%%%%%%%%%'%%'  `;;;;;,;, %;;;                      ",
                " ;;;,`%%%%%%%%%%%,; ..`%%%%%%%%;'%%%'    `;;;;,;; %%;;                      ",
                "  `;;;;;,`%%%%%,;;/, .. `''''',%%%%%      `;;;;;; %%;;,                     ",
                "     `;;;;;;;,;;/////,.    ,;%%%%%%%        `;;;;,`%%;;                     ",
                "            ;;;/%%%%,%///;;;';%%%%%%,          `;;;%%;;,                    ",
                "           ;;;/%%%,%%%%%/;;;';;'%%%%%,             `%%;;                    ",
                "          .;;/%%,%%%%%//;;'  ;;;'%%%%%,             %%;;,                   ",
                "          ;;//%,%%%%//;;;'   `;;;;'%%%%             `%;;;                   ",
                "          ;;//%,%//;;;;'      `;;;;'%%%              %;;;,                  ",
                "          `;;//,/;;;'          `;;;'%%'              `%;;;                  ",
                "            `;;;;'               `;'%'                `;;;;                 ",
                "                                   '      .,,,.        `;;;;                ",
                "                                       ,;;;;;;;;;;,     `;;;;               ",
                "                                      ;;;'    ;;;,;;,    `;;;;              ",
                "                                      ;;;      ;;;;,;;.   `;;;;             ",
                "                                       `;;      ;;;;;,;;   ;;;;             ",
                "                                         `'      `;;;;,;;  ;;;;             ",
                "                                                    `;;,;, ;;;;             ",
                "                                                       ;;, ;;;;             ",
                "                                                         ';;;;;             ",
                "                                                          ;;;;;             ", --]]
                --[["⠐⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⢀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⡀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀",
                "⠀⢀⣶⣤⣤⣤⣠⣄⠀⡀⢀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⡀⠀⢠⣀⣤⣠⣤⣴⡄⢠",
                "⠀⠘⢛⣿⣻⣿⣿⣟⣀⡀⣀⢀⡀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⣀⢀⡀⣀⣀⣀⣿⣿⣿⣿⣿⣿⠃⠀",
                "⠀⠀⠉⠽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣷⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⣶⠀⠀⠀⠀⠀⠀⠀⠀⣸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠀⣤⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠃⠀",
                "⠀⠀⠀⠂⢰⣾⣶⣾⣶⣿⣿⣾⣿⣿⣿⣿⣿⣿⣶⣤⣤⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣤⣦⣶⣿⣿⣾⣿⣾⣾⣷⣿⣷⣾⣿⣾⣿⡇⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⢛⣟⣛⣛⣻⣿⣿⣿⣿⣿⣟⠙⠚⠛⠛⣟⡟⣛⠓⠀⠀⠄⠀⠀⠀⠀⠀⠚⠋⠀⠀⠀⠀⠘⠛⠀⠀⠀⠀⠀⠀⠀⠀⡾⣿⣿⣟⣛⠛⠛⠛⡛⢛⢻⣿⣟⣿⣻⣛⣿⣿⣿⠃⠀⠀⠀⠀",
                "⠀⠀⠀⠈⢰⣿⣿⣟⣿⣻⣿⣿⣿⣻⡟⠿⠀⢈⠀⡀⠛⣻⣿⣿⣷⣦⣀⠀⡀⠀⠀⠀⠐⠆⠀⠀⠀⠀⠰⠿⠀⠀⠀⠀⠀⣡⣰⣿⣿⣿⣿⡟⠆⠐⠈⠀⠈⠚⣿⣿⣟⣟⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀",
                "⠀⠀⠀⠁⣨⣿⣿⣿⣿⣿⣿⣿⣏⠉⠁⠄⠂⠀⣀⣀⡀⠨⢁⠉⠉⢡⣈⣄⡈⠀⠄⠀⢀⡀⠀⠀⠀⠀⢀⣠⠀⠀⠀⣀⣤⣿⣭⠅⠍⠁⠈⢀⣀⣀⠈⠀⠄⠀⠉⣀⣭⣿⣿⣿⣿⣿⣿⣥⡄⠀⠀⠀",
                "⠀⠀⠀⣼⣿⢻⠿⠿⡿⢿⠿⠟⠏⠐⢈⠀⠰⡾⣿⣿⡿⠲⠄⠀⠁⠀⢿⠿⠿⠶⠄⠠⠘⠁⠀⠀⠀⠀⠈⢋⠀⠀⣶⠿⠿⠿⠇⠀⡃⠀⠶⢿⣿⣿⠗⠶⠀⠐⠀⠻⢿⣿⣿⣿⡿⠿⠿⠿⠏⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠮⣷⣿⣿⣷⣶⡄⠠⠀⣷⣿⣿⣿⣿⣿⡶⠀⠀⠀⠀⠀⠀⠰⣴⣦⡄⠀⣴⡆⠀⣶⡄⠀⣶⣶⣿⠄⠁⠀⠀⠀⠀⠐⣶⣿⣿⣿⣿⣿⠦⠰⠀⣶⣿⣿⣿⣿⣿⡎⠀⠀⠀⠀⠀⠀",
                " ⠀⠀⠀⠀⠀⠀⠀⠉⣿⣿⣿⣻⡀⠐⠂⡈⠋⠙⢋⣛⠙⠃⠀⠀⠀⠀⠀⠀⠀⠘⠛⠁⠀⠹⢧⣀⠿⠄⠀⠋⠛⠁⠀⠀⠀⠀⠀⠀⠀⠙⠉⣻⢛⡋⠛⡀⠀⢀⣺⣿⣿⣿⣛⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠄⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⡶⠀⠤⠀⠿⠝⠻⠁⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡼⠿⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠠⠀⠙⠛⠙⠁⠄⠄⢸⣿⣿⣿⣿⣿⣿⠇⠈⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⢀⣤⣰⣷⣖⣷⣿⣿⣶⣶⣴⣦⣴⣶⣤⣤⣤⣠⣤⣦⣤⣤⡄⠐⠀⠀⠀⠠⣭⣄⣄⣵⡄⠀⠀⠀⠀⠠⣄⣴⣄⣤⣄⣀⣴⣤⣀⣄⣰⣴⣴⣶⣾⣶⣿⣿⣿⣷⣦⣄⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⢸⣿⡿⢿⣿⠿⣿⣿⠿⠿⠿⠿⠯⠿⡿⣿⣿⣿⡿⠿⠛⠛⠓⠀⠀⠀⠀⠀⠛⠻⢿⠛⠃⠀⠀⠀⠀⠀⠉⠛⠻⠿⣿⣿⢿⣿⡿⠿⠿⠿⠿⠿⢿⣿⡽⣿⠿⠿⠿⠿⠄⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⢷⣿⢿⡄⠀⠂⠀⠀⠀⠠⣾⣿⣿⠀⠀⠀⠀⠀⠀⠐⠀⣤⣦⣴⠆⠀⣶⣴⣤⡀⠠⠀⠀⠀⠀⠀⠀⢥⣿⣾⡍⠁⠀⠐⠀⠀⠀⣴⢿⣿⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⣛⠀⠀⠀⠀⠀⠀⠈⣛⢿⡏⠀⠀⠀⠀⠂⠀⠀⠀⢀⣟⡟⠃⠀⠀⠈⠻⣛⡁⠀⢀⠀⠀⠀⢀⠀⠀⠹⣝⠋⡃⠀⠀⠀⠁⠀⠀⠙⣛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡿⠀⠀⠀⠀⠀⣤⣿⣿⠿⠁⠀⣿⣿⣿⡦⠀⠂⢺⣿⡿⠷⣾⠆⠄⣾⡾⠽⣿⣶⠀⠀⠰⣿⣿⣿⠆⠘⠿⢿⣿⢦⡀⠀⠀⠀⠀⠰⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣼⣿⣿⡀⠐⡀⠠⣋⣴⠀⠂⡀⢠⣼⣄⠘⣡⣄⠀⣉⡦⢄⣿⣇⡐⠀⠀⢰⣁⣦⠀⢂⠀⣥⣿⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠿⠿⢿⡿⠟⠀⠐⠀⠀⠀⠉⠀⠀⠀⠸⢿⠃⠸⠿⠃⠁⡿⡃⠀⡿⠟⠀⠀⠄⠀⠀⠉⠀⠀⠀⢹⣿⣿⣿⠿⠃⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣾⣿⣿⣿⣿⣿⣷⣤⠀⡀⢀⠀⢀⣠⣶⣾⣿⡎⠰⢿⣄⣤⡿⠗⠅⣿⣷⣤⣤⣈⠐⠀⠀⡀⢰⣾⣿⣿⣿⣿⣿⣷⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢈⣽⣭⣯⣭⣿⣿⣽⣥⣀⣠⣄⣠⣬⣿⣿⣿⣏⠀⠀⠀⠘⠉⠀⠐⠀⢉⣭⣿⣿⣅⣠⣈⣀⣠⣼⣿⣿⣿⣿⣽⣿⣯⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡿⠿⠿⢿⠿⣿⣿⣿⣿⣿⣿⣿⢿⡿⣿⣿⠏⠛⠀⠀⠀⠀⠀⠀⠀⠀⠘⠋⢿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠿⡿⠿⡿⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣦⣿⠅⠸⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⢦⣦⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠛⠛⣿⡟⡟⠛⠛⠛⠛⠛⠛⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⢻⠋⠙⠉⠛⠛⣿⣿⡟⠋⠀⠈⠃⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⣿⣿⣿⡟⠀⠀⠀⠐⢺⣿⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⢻⡃⠐⠄⠘⣿⣿⣿⣽⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣈⣿⡚⠁⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠉⣙⣛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠄⡠⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀", 
                --[["⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"],
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠻⢷⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣄⣠⡤⠒⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⢾⣤⣤⣤⣴⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣿⣯⣿⣿⣿⣭⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀",
                "⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣿⢿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀",
                "⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⣿⣿⣿⣿⣿⣿⣿⠹⣿⣿⣿⣿⣿⣿⠟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠻⠆⠀⠀",
                "⠀⠰⠿⠿⠿⣿⣿⣿⣿⣿⣿⡿⠀⢠⣿⣿⣿⣿⣿⣿⣿⡄⣿⣿⣿⣿⣿⣿⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠑⠊⠙⣿⣿⣿⠿⠿⠿⠛⠃⠙⠛⣛⣿⣿⣿⣄⡸⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀",
                "⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⡧⣴⡾⠿⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠙⠛⠛⠛⠿⢿⣻⠶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀",
                "⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀",
                "⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡿⠋⠉⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀",
                "⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣷⢾⣍⠙⠆⢸⣿⣿⣿⣿⣿⣿⣿⡆⠀",
                "⠐⠀⠴⠀⠀⠀⢹⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠈⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡧⠴⠋⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀",
                "⠀⠀⠦⠄⠀⠀⠀⠹⣿⣿⠿⣧⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣀⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀",
                "⠀⠀⠀⠀⠀⣀⣀⠀⢀⣿⣿⣿⣿⣿⣶⣦⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⢀⣤⣴⣾⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄",
                "⠀⠀⠀⠀⠀⢿⣽⠧⠾⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⡄⠀⠀⠀⢸⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇",
                "⠀⠀⠀⠀⠀⠀⠁⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⢻⣿⠿⠛⠉⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣾⣿⣿⣿⣿⣿⠃",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⠟⠁⠀⣀⣤⠴⠛⠉⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⠟⠋⣀⣾⣋⣤⡤⠖⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⡇⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡿⠛⠁⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⡏⢸⣿⡿⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⡉⠉⠉⠉⠀⠈⠉⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣷⠀⠀⠀⠀⠀⠀⠀⠀", --]]
                --"˚₊‧꒰ა ☆ ໒꒱ ‧₊˚",
                --[["⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣄⡀⠀⢿⡿⣁⠀⢆⡘⠤⡘⠠⢰⠃⡄⠂⠄⠀⠀⠀⠀⡀⡆⠌⢄⠀⠀⢠⡇⠂⡌⠄⠀⠀⠀⠀⠀⠀⠡⣖⠀⢃⠸⠀⠸⣟⡄⠘⡽⡜⡄⠀⠀⠀⠈⠦⠀⠀⠀⠸",
                "⣿⣿⣿⣿⣿⣿⡿⠁⠈⢻⡝⣟⣷⡿⢁⠤⢀⠢⢌⠰⡀⠂⡟⠠⡄⠈⠀⠀⣀⠤⠐⣰⠌⡈⢄⠂⡡⣺⠄⡇⠰⠈⡄⢃⠰⢀⠰⢀⠂⢽⠂⢼⠐⡠⠄⣿⡼⡀⠱⢹⡰⠀⠀⠀⠀⠀⣆⠀⠀⠀",
                "⣿⣿⣿⣿⣿⣿⠁⢄⠠⢀⣹⣞⡿⢁⢊⠰⢀⠎⡐⢂⠁⢳⠋⠴⠁⠀⣠⠞⡠⢁⣺⡇⠤⢁⠢⠘⢠⡿⢰⡏⠄⢃⡐⢈⠰⢈⠰⢸⠌⣸⠌⢺⡐⠤⢈⣽⣧⢩⡄⢉⢧⠡⠉⡍⠒⠤⣸⡀⠀⠀",
                "⣿⣿⣿⣿⣿⣿⠩⡐⠌⢿⡯⣿⠇⡌⠢⢡⠈⡔⠈⠂⠃⢾⢈⠒⠀⡴⢁⡾⠑⣸⢻⢀⠒⢠⠂⡉⢼⡇⢸⡇⠌⠄⡄⢃⠰⢈⠰⠸⡂⢼⢈⢹⠆⠰⢸⢿⠸⡆⢷⢈⠸⣄⠃⠤⢉⡐⠨⣧⠀⡀",
                "⣿⣿⣿⣿⣿⣿⡟⣿⣻⢾⡷⣿⠐⡄⢃⠆⠈⠐⠁⠀⠀⣾⠸⠀⢀⡇⣼⠇⢡⡏⣇⠢⠘⡀⠆⢡⡎⡇⢺⣇⠘⢠⠐⠨⡐⢂⠢⢡⡇⠾⢈⢸⡃⡘⢼⢸⠀⢻⠈⣇⠌⣷⢈⡐⠂⠤⢱⢿⠀⠔",
                "⣿⣿⣿⣿⣿⣿⣯⡚⢧⡻⣽⡏⠰⡈⢄⠈⠀⡀⠀⠀⠀⣿⢸⢀⢂⢸⡟⡈⢼⢳⠁⢂⡁⠆⡑⢺⢱⡇⣼⢿⠈⠄⡈⠡⢐⠠⢁⢺⡄⡟⡀⢺⢁⡴⡿⢸⢄⠈⡇⢺⡆⢸⡆⠤⢉⠰⢐⣸⠈⠔",
                "⣿⣿⣿⣿⣿⣿⣿⣷⠁⢿⣹⡇⠡⠌⠀⠀⠀⠀⠀⠀⢀⡿⣸⠀⢂⣿⢃⠐⡞⡼⢈⣄⣐⣤⡴⡯⢼⠴⡿⢼⠾⠶⠶⠶⣤⠂⠌⣹⢰⡇⡐⡏⢸⢡⡇⡽⡀⠑⢳⠐⣷⠀⢿⡇⠌⡐⠂⡽⢈⡐",
                "⣿⣿⣿⣿⣿⣿⣿⡏⠠⣄⣿⠄⠀⠀⠀⠀⠀⡅⠀⠠⢠⡟⣧⠈⣰⣿⠀⣼⠴⡗⢉⠉⡐⢠⢷⠃⢸⢠⠃⢸⣿⠀⢀⠂⢸⠀⢂⡏⣼⠁⣸⠁⡏⡜⡇⡧⠬⣴⣼⣀⢿⢇⢸⣹⠀⠀⡁⠇⡃⠄",
                "⣿⣿⣿⣿⣿⣿⣿⣇⡷⠊⢸⠀⠀⠀⢠⣦⣄⠇⡈⢁⠆⣿⣧⠐⣽⡇⠐⣾⢰⡇⢂⠡⢈⡏⡞⠀⡼⣸⠀⠀⣿⠀⠀⠂⣏⠐⢸⢡⡟⢀⡏⣼⢱⠁⣧⠁⠀⠀⠈⡟⣻⠺⣤⣿⡆⠐⠀⡇⠄⡈",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣄⠂⣿⠀⠀⢠⠃⢿⣣⠐⠠⠌⠠⣿⣿⠀⢿⠃⢌⣿⠸⡇⢀⢂⡼⡼⠀⢀⢧⡯⠄⡀⣿⠀⠌⢰⡇⠈⣼⡿⠁⡞⣸⢇⠇⢰⡟⠀⠀⠀⠈⡇⡝⠀⢇⡟⡧⣄⠂⡇⠀⢰",
                "⣿⣿⣿⣿⣿⡿⢭⢿⣿⣶⣻⡆⠀⡏⠠⠸⡽⣏⠐⡈⡐⢿⣻⡠⣿⠈⢸⡍⣆⣧⣾⣾⣿⣿⣶⣾⣾⣆⠄⠀⣿⡆⠀⣸⠁⣸⡿⢁⡞⡕⡹⡌⠀⣼⢁⠤⠤⢀⣀⡇⡇⠀⠸⣼⡇⠀⠑⣷⠈⣸",
                "⣿⣿⣿⣿⣿⡹⢎⣗⡻⣿⣷⣇⠘⣇⠄⡁⢻⣽⡆⠡⠠⢹⣿⡓⣿⣴⣿⣿⣿⣿⡿⣟⣿⢫⣟⣏⠉⠙⠛⠶⣿⢿⠀⡞⢀⡟⢡⣾⠊⣰⠟⠀⣼⠃⣐⣤⣴⣦⣤⣧⣇⣠⠀⣿⡇⠀⡁⡏⠀⡿",
                "⣿⣿⣿⡟⣧⣛⡭⢶⡙⣿⢻⣿⡄⢻⡔⠠⡈⢧⢿⡆⢡⠈⢿⣇⣷⣿⡿⠛⣯⢽⡳⢧⡞⡷⠎⣽⡀⠀⠀⠀⠛⠘⠻⢣⣞⣴⠟⠁⠠⠏⠀⠐⠁⢸⣿⢿⣟⠿⣿⡿⣿⣷⣤⣸⡂⠀⢸⠃⢰⠇",
                "⣿⣿⡿⣹⣧⡓⢾⢷⡟⢸⣯⢹⣷⡌⢻⣄⠱⣌⠳⣿⣦⠲⠾⣿⣿⣿⠁⠈⣟⠊⢿⡧⢿⠃⡜⣸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣏⣟⡳⢾⡻⡴⢷⠈⠻⣿⣿⣟⠋⡟⢀⡎⠄",
                "⣿⣿⠳⣽⠲⣝⡿⢸⡇⣸⠙⣷⢺⣿⣧⡻⣷⣌⢢⡙⢽⣷⣤⠘⢧⠙⢦⡀⢻⡌⠠⢠⢁⠒⢯⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡏⣷⣹⡏⠵⡙⣺⠀⠀⠸⣿⣿⣾⢁⡾⠀⣲",
                "⣿⢫⡝⣾⢹⣾⢃⢹⡇⢼⠂⣿⣹⠋⢉⡿⣾⣿⣷⣌⠲⣽⢿⣿⣮⣷⣀⠈⠀⠙⠗⠒⠚⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⢈⠩⠀⡥⠲⠏⠀⠀⣸⢟⣽⣫⡟⢁⣴⢏",
                "⣏⢷⣙⣮⠟⡐⠢⢼⡇⢸⡿⢧⣟⠀⡇⡄⣤⢩⢿⣛⢷⣤⣭⣛⢿⣮⠉⠳⠦⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠲⢷⡼⠆⠀⠀⠐⠁⣿⣿⣋⣴⣾⢋⣾",
                "⣞⢺⣼⠏⡐⠌⡁⣿⡇⢸⡇⠼⣿⠀⢷⠀⢹⡆⣿⡉⠚⠶⣭⣻⣿⡟⠢⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣟⢫⣿⡳⣵⡿⢿",
                "⣎⡿⢼⠂⡅⢊⠔⣿⣵⢺⡏⠄⣿⣧⡈⠓⢌⠷⢾⡇⢁⠢⢀⢹⠑⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⣬⡿⢣⡓⣸⣇⢻",
                "⣾⣃⡯⢼⣀⠣⣈⣿⡽⣺⠛⢠⠹⡻⣿⣦⡀⠑⠪⣇⠂⠔⡈⡾⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⢰⠟⡞⠡⢠⢰⣿⠸⣸",
                "⣿⣿⣳⢯⣿⣿⣿⣷⣽⣹⡇⠌⣷⢳⢋⠻⢿⣦⣀⡟⡀⠊⢰⡇⠂⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠔⠁⠀⠉⠢⢀⠀⠀⠀⠀⠀⠀⠀⢀⠠⠊⠀⠈⢺⡞⠠⢁⢂⣯⡏⠵⡘",
                "⣿⣿⡜⣿⣿⣿⣿⣿⢾⣻⣧⡂⢹⣏⣿⡄⠌⢻⣿⣧⠀⠡⣸⠠⠁⣾⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠐⠁⠀⠀⠀⠀⠀⠀⠀⠉⠫⣦⠀⠀⢀⠔⠁⠀⠀⠀⡀⠀⠙⢦⢁⡞⣼⡙⢦⠑",
                "⣿⣿⡽⣹⣿⣿⣿⣿⡯⣷⣯⢿⣄⠻⣜⣷⡈⠄⢻⣷⠈⢠⡗⠠⠁⣿⢸⣄⠀⠀⠀⠀⠀⠀⢀⡔⠊⠉⠀⠀⠀⠀⠀⠀⡰⠂⠤⣀⠀⠀⢀⣃⠀⣰⠁⠀⠀⡴⢴⣧⠀⠀⠀⠀⠙⢦⡏⡝⢢⠌",
                "⡿⣿⣿⣽⣿⢿⣿⣿⡷⣣⢿⣯⣻⢷⣽⢞⣿⡄⠂⣿⠀⣸⠃⠠⢁⣷⠸⡇⠑⢤⡀⠀⣠⠞⠁⠀⠀⠀⠀⠀⠀⣀⠔⠀⠀⠀⠀⠈⢧⡀⢿⣿⣾⡿⠁⡠⢊⣴⣿⢸⡷⣄⣐⠀⢀⠄⠙⠓⠧⣌",
                "⣿⣷⣿⣿⣿⣿⣿⣿⡿⣵⢫⣷⣏⣟⣾⣻⣾⣿⣆⢿⠀⡿⠀⠀⠂⣼⠐⣿⡀⢀⡼⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠒⢄⡀⠀⠀⠀⠀⠑⠮⠿⠛⠒⢈⣴⣿⣿⡏⡾⢁⠈⣿⠖⠁⠀⠀⠀⠀⠀",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣳⣿⣿⣿⣯⣟⣷⢯⣿⣿⣿⢰⠃⠀⠀⠐⢸⠀⣻⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠲⠄⡀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣃⠇⢂⢡⠏⠀⠀⠀⠀⢀⠀⠀",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣞⢾⡻⢷⣯⣿⣼⠀⠀⠀⢀⡼⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠲⣤⣀⡀⠀⠀⠀⠀⠈⠢⣤⣾⣿⣿⣿⣿⣿⣿⣿⢸⠠⡱⠃⠀⠀⠀⣠⣶⠋⠀⠀",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢾⣽⣯⣞⣽⡟⠀⣠⠔⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣷⣤⡀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣷⣿⢀⡜⠁⠀⠀⣠⡞⡱⠁⠀⠀⠀",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢯⢿⣿⣿⣿⣧⠞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠠⢀⠀⠀⠀⠀⠀⠀⠙⢿⣷⣄⡀⠀⠀⠀⠙⢿⣿⣿⣿⣿⡼⠀⠀⢀⣾⣿⡟⠀⠀⠀⠀⠀",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡻⣞⢾⡹⡿⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠂⢄⡀⠀⠀⣠⣿⣿⣿⣿⣦⣄⠀⠀⠀⠻⣿⣿⡟⠀⠀⣠⠂⢺⣿⡣⢀⢀⠄⠀⠀",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣝⣾⣿⣧⢶⡶⣿⢿⣿⣦⣤⣀⣀⣀⣤⣀⣴⣶⣤⣤⣄⡀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⢠⣾⣿⣾⡷⣰⠉⡆⣹⣿⣿⣶⣿⣆⡀⢀",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡞⣯⢷⣏⡿⣽⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣽⣿⡿⠕⠉⢆⢱⢸⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⡽⣾⣹⡞⣷⡽⣞⡽⣯⢿⣹⢯⣿⣿⣿⣿⣯⣿⡿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⢪⢿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⡽⣶⢯⡽⣞⣳⢯⡽⣞⣯⣽⢫⣿⡟⣿⣻⢿⡽⣿⣿⣿⣿⣻⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡈⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢷⣛⡾⣽⣹⡽⢾⣹⠷⣞⣞⠿⣼⣿⡘⣯⣾⣿⢿⣹⢯⣟⡿⣿⢿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠈⠻⣿⣿⣿⣿⣿",--]]
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⣀⡴⢧⣀⠀⠀⣀⣠⠤⠤⠤⠤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠘⠏⢀⡴⠊⠁⠀⠀⠀⠀⠀⠀⠈⠙⠦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⣰⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢶⣶⣒⣶⠦⣤⣀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⢀⣰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣟⠲⡌⠙⢦⠈⢧⠀",
                "⠀⠀⠀⣠⢴⡾⢟⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡴⢃⡠⠋⣠⠋⠀",
                "⠐⠀⠞⣱⠋⢰⠁⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⠤⢖⣋⡥⢖⣫⠔⠋⠀⠀⠀",
                "⠈⠠⡀⠹⢤⣈⣙⠚⠶⠤⠤⠤⠴⠶⣒⣒⣚⣩⠭⢵⣒⣻⠭⢖⠏⠁⢀⣀⠀⠀⠀⠀",
                "⠠⠀⠈⠓⠒⠦⠭⠭⠭⣭⠭⠭⠭⠭⠿⠓⠒⠛⠉⠉⠀⠀⣠⠏⠀⠀⠘⠞⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⢤⣀⠀⠀⠀⠀⠀⠀⣀⡤⠞⠁⠀⣰⣆⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠘⠿⠀⠀⠀⠀⠀⠈⠉⠙⠒⠒⠛⠉⠁⠀⠀⠀⠉⢳⡞⠉⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                --[["⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⣟⡛⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⣀⣠⣀⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡾⢟⣽⠾⠛⢱⢸⣷⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⣼⠏⡉⢉⠉⠛⠻⠷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠟⣋⣴⠟⠁⠀⡀⠻⣘⣿⠀⠀⠀⠀⠀⠀⠀⠀",
                "⢠⣿⠐⣴⡿⠶⣧⣆⣐⠈⡙⠿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣀⣀⣀⡀⣀⣤⡾⠛⣁⣶⠻⠅⡒⠂⠄⠀⣰⠋⣿⡄⠀⠀⠀⠀⠀⠀⠀",
                "⢸⣿⢠⣿⠆⡀⠀⠉⠻⢷⣤⡂⠌⡙⠿⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⣾⠛⠉⠈⠉⠉⠉⠙⢻⠻⢶⣽⣋⠀⠀⠈⠀⢄⠀⠀⠀⠧⣿⡇⠀⠀⠀⠀⠀⠀⠀",
                "⠀⣿⠀⣿⡆⢀⠁⠄⠀⠀⠉⠻⢶⣄⠒⡈⠙⠻⠿⢶⣦⣤⣤⣤⣤⠶⡶⠟⠟⠛⣉⠕⠁⠀⠀⠀⠀⠀⠀⠀⠈⠁⠒⠤⡉⠛⠾⢤⣤⣈⠀⠀⠀⢧⢹⣇⠀⠀⠀⠀⠀⠀⠀",
                "⠀⢿⡇⢹⡂⠠⠈⠀⠀⠀⠀⠀⠀⠙⠷⣦⣁⠂⠔⠠⠐⣀⠂⡐⡀⢂⡐⡬⠔⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠪⠔⠤⢌⣙⠳⣦⣄⢈⢾⣿⠀⠀⠀⠀⠀⠀⠀",
                "⠀⢸⣷⢸⠄⠁⠠⠁⢂⠡⠄⠈⠉⠉⠖⠻⠿⣶⡈⠡⠌⡀⠆⠡⡰⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠃⠰⠛⠿⠞⣿⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⣿⡄⢟⠀⠠⠀⠘⠄⡀⠀⠀⡀⠀⠀⢠⡿⠃⠤⢀⠃⡘⡜⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣧⣄⠀⠘⠧⣿⡇⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠹⣷⠈⠀⠁⠀⠀⠀⠀⠀⡠⠁⠀⢠⠿⠁⠌⡐⢂⠡⣌⠀⠀⠀⠀⣠⣴⣶⣶⣶⣤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣏⣘⣿⣿⣿⡄⠀⠀⠹⣷⡄⠀⠀⠀⠀⠀",
                "⠀⠀⠀⢻⣷⢬⠀⠀⠀⢀⠂⠌⠀⠀⢀⣾⠃⠌⡐⠰⢀⢲⡄⠀⠀⢠⣿⣿⣿⣿⣄⣨⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⠟⠀⠀⠀⠈⢹⢿⣦⠀⠀⠀⠀",
                "⠀⠀⠀⠀⢿⣆⢣⠀⠀⠠⠐⠀⡀⠄⣾⠃⠰⣀⠡⠒⡈⠄⡄⠀⠀⠈⠛⠛⠿⠿⠿⠿⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠀⢶⡌⣻⣷⡄⠀⠀",
                "⠀⠀⠀⠀⠈⢿⣎⣄⠀⠀⠀⠀⠁⢸⡟⢈⠡⠄⣂⠡⡐⢈⠘⡐⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣔⣦⡴⠴⠾⢟⣲⠀⠀⠀⠀⠀⠀⠀⠀⠙⢴⣹⣿⡄⠀",
                "⠀⠀⠀⠀⠀⠈⢿⣎⢲⠀⠀⠀⠀⣾⠇⡌⢒⡈⢄⠒⢠⠃⡰⢀⢆⡆⠠⠀⠒⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠯⢶⡄⠀⢢⣟⠃⠀⠀⠀⠀⠀⠀⠀⠃⠐⢀⠑⣞⣿⡄",
                "⠀⠀⠀⠀⠀⠀⠈⢿⣎⢇⠀⠀⠀⡿⡐⢌⠢⡘⢄⢊⣴⢮⠳⠙⡸⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠇⢀⣘⠇⠀⠀⠀⡀⢀⠀⠀⠀⠀⠀⠂⠄⠈⢿⡇",
                "⠀⠀⠀⠀⠀⠀⠀⠈⣿⡎⠳⢖⡚⢥⡘⠤⢃⡜⢠⠊⡍⢄⠢⣡⠇⠂⠁⠀⠀⢀⠤⠂⠀⠀⠀⠀⠀⣤⡄⡀⣀⢠⣤⢰⡦⠟⠙⠚⠒⠒⠛⠛⠉⠀⠀⠀⠀⠀⠀⠀⠈⢸⡇",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡑⢎⡜⡰⢌⢣⠣⡜⢢⢍⣴⡞⠟⡻⠀⠀⢠⠂⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣺⠁",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣏⠖⡼⣡⠏⡶⣙⢬⣳⡞⢎⡜⣡⣧⠴⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡟⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣎⠵⣣⢝⡲⣍⠿⣣⠝⡮⣜⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠇⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣧⣛⠴⣋⢶⡩⢞⡥⣛⠴⣣⠗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢤⡿⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣏⡞⡭⣖⡹⢎⠶⣍⡳⡭⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡪⢢⡿⠁⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⢴⢣⡝⣎⢻⣔⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠠⠀⠒⠉⢀⣿⠃⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡿⠙⠶⠹⠬⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡏⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠁⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⢠⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⢀⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡄⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⢠⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⢠⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⡄⠀⠀⠀⠀",
                "⠀⠀⠀⠀⢠⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⡀⠀⠀⠀",
                "⠀⠀⠀⢀⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣷⡀⠀⠀",--]]
                --[["⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣶⣤⣄⡠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣻⣿⣿⣿⣿⣿⣿⣿⠉⠉⠛⠛⠛⠛⠿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⡿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠲⠶⢤⡄⠀⠘⢿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⡿⠁⣂⡀⠀⠀⠀⠀⠀⠦⠤⣽⠷⣾⢷⢮⣀⠀⢻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⡷⠟⠉⠀⠀⢀⣠⣶⣶⣶⣤⣠⣤⡟⠈⢻⡿⠀⠘⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠠⠼⠿⢻⣿⣻⣿⣿⣿⣿⣿⣷⣾⣣⣇⡀⢻⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⢿⡿⣿⣿⣿⠁⠀⠀⠀⠲⣶⣷⣿⣿⣿⣿⣿⣿⣿⠟⢻⣟⣿⣿⣿⣾⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⠃⡼⣁⢀⣿⠁⠀⠀⠀⠀⠀⠉⠙⢿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⣿⣿⣭⣛⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡟⠻⡟⣿⣷⡆⠀⠀⠀⠀⠀⢀⣠⣬⣿⣿⣿⣿⡋⠀⠈⢻⣟⣿⣌⣻⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⢷⣤⢁⣿⡿⣿⣀⣀⢀⡀⣼⠿⠟⢋⣿⣿⣿⣯⢉⣓⣂⠈⣿⠙⣿⠉⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠡⣤⡷⣾⣿⠷⢻⣿⣷⣿⣿⡟⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⡟⣿⣼⣷⠀⣼⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢀⣿⠛⣷⣴⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠗⢿⣽⡏⣸⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⢸⣿⣟⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡻⢶⣿⣏⣙⡋⢳⣦⣿⣵⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣭⣽⣿⣿⡊⢹⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠉⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣾⣿⡃⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠈⠹⠻⣿⣿⣿⣿⢟⣿⣿⣿⣿⣿⣿⣿⣿⡿⠇⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣠⣤⠶⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠒⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⢀⣀⣤⡶⠖⠛⠛⠉⠉⣁⣤⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⣿⣿⡿⠉⠁⢸⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⢀⣤⣶⠿⠛⠉⠀⠀⠀⠀⠀⠀⣼⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡀⠀⠀⢰⣾⣿⡷⠀⠀⣾⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠟⠁⠀⠀⠃⢀⠈⠉⢁⣨⣭⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢺⡇⠀⣀⣿⣿⡏⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⡀⠀⠠⠆⠒⣿⣶⣾⣿⣿⣿⡿⡂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⠀⣿⣿⡏⠀⢸⠁⠀⡙⠷⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⣿⣶⣦⣶⣿⣿⣿⣿⣿⣿⣿⣧⣥⣄⡀⠀⠀⠀⣄⣀⠀⠀⡀⠀⠀⠀⣿⣿⣿⢿⣿⢀⣴⡻⠀⠀⣧⠀⠀⠈⠛⠶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⣿⣿⣷⣄⠀⠀⠀⠈⠉⠉⠉⠉⠛⠛⠛⠛⠿⠿⠿⣿⣷⣶⣿⣄⠀⢰⣿⢻⣿⣸⣿⣾⠁⠁⠇⠀⢿⣷⡤⣄⣀⠀⠈⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠈⠻⠿⣿⣧⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⣀⠀⠈⠉⠙⠿⠷⣿⣏⠀⣿⣿⣿⡇⠀⠈⡀⠀⠈⠻⣷⡈⠻⢿⣤⠀⠈⠻⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠉⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡋⠀⠉⠠⠀⠈⠻⣄⢹⣿⡟⢀⣀⡴⢿⣶⠒⠺⠟⠛⠂⠀⢻⡆⢰⣶⣬⣍⣉⠓⠶⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣷⠀⠀⠂⠶⢤⣄⡙⠀⠻⠁⣾⣿⣦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣾⣿⣿⡟⠋⠙⠓⠂⠙⠓⠒⠶⢤⣤⡀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠿⠶⠀⠈⠀⠒⠀⢺⣿⣷⣿⣙⡻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣷⣀⢤⡴⢄⠀⠀⠀⠀⠀⠀⠉⠳⠦⣄⠀⠀⠀",
                "⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢈⠀⠀⠘⣿⣿⡿⣿⡟⠃⠀⠀⠀⠀⠀⠀⠀⠐⠄⠠⠀⡈⡻⣯⣷⣘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣦⡀",
                "⠴⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠳⣄⠀⢸⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠐⠒⠂⠊⠈⠈⠁⠀⠀⠙⢿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻",
                "⠀⠀⠐⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠄⠀⠀⠙⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⣹⣿⠷⣦⣁⠂⠀⠀⠀⠀⠀⠀",
                "⠤⠄⠀⠀⠀⣀⡀⢀⡀⠤⠀⠉⢀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣦⠈⠛⢷⣄⠀⠀⠀⠀⠀",
                "⠛⠀⠀⠀⠀⠀⠠⠄⢀⡀⢀⣤⢠⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣦⠀⠈⠙⠀⠀⠀⠀⠀",
                "⠀⠀⠀⣐⣂⣀⣀⠀⣶⣶⣾⢉⣴⢾⣿⣷⣤⣤⣤⣤⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡄⢀⣀⠀⠄⠈⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣦⡀⣀⣀⣀⣀⠀⢀",--]]
                --[["⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣟⣯⢟⣽⣫⣟⣽⣫⡿⣝⢯⠯⣝⢯⣻⡽⣛⣯⣟⣟⣯⣟⣯⣿⣝⣯⣿⣹⢯⣟⣽⣯⠿⣽⢯⡿⡽⣯⣟⡿⣽⣻⣽⡻⣽⣻⣽⣏⣿⣽⣯⣿⣽⣻⣽⣻⣽⣯⣟⡿⣽⢯⣟⣯⠿⣽⡻⣽⣯⣟⣽⣯⣿⣽⣯⣻⣽⣯⣟⣯⣿⣽⣯⣟⣽⣏⣿⣝⡯⢯⡝⡞⣭⠳⣍⣣⣏⣹⣌⣯⢹⡝⣯⢟⡿",
                "⣿⣿⣿⣿⠉⠙⠙⢻⣿⣿⡏⠉⠉⢹⣿⣽⡾⠛⠋⠉⣉⡉⠉⠙⠛⢾⣝⣮⢻⡜⣿⣿⣿⡟⠛⠛⠛⠻⣿⣿⣿⡟⠛⠛⠛⢻⣿⣿⣿⣿⠛⠛⠛⢿⣿⣿⣿⣿⠛⠛⢻⣿⠛⠛⠛⠛⠛⠛⠛⠿⣿⣿⣿⠛⠛⠛⠛⠛⠛⠛⠛⣿⣟⠛⠛⠻⣿⣿⣿⡟⠛⠛⣿⣿⠿⠛⠛⠛⠛⠛⠻⠿⣿⣿⣿⣾⣹⡶⠛⠋⠉⣉⣍⠉⠙⠛⢾⡵⣯⢻",
                "⣿⣿⣿⣿⠀⠀⢄⠀⠙⣿⡇⠄⠀⢸⣿⣿⠀⠀⠀⢰⣿⣿⠀⠀⠀⠘⣿⡌⢣⣍⣿⣿⣿⡇⠀⢀⡀⠀⢻⣿⡏⠀⢀⡄⠀⢸⣿⣿⣿⠃⠀⣤⠀⠈⢿⣿⣿⣿⠀⠀⢸⣿⠀⠀⢰⣷⣶⣶⣄⠀⠀⢻⣿⠀⠀⢘⣶⣶⣶⣶⣶⣿⣯⠀⢀⠀⠈⢿⣿⡇⠀⠀⣿⡁⠀⠀⠶⣶⣶⣦⣤⣶⣿⣿⣿⣿⣿⣥⣤⣤⣤⣿⣿⠀⠀⠀⠀⣿⡧⣟",
                "⣿⣿⣿⣿⠀⠀⠈⣦⠀⠘⠧⠀⠀⢸⣿⣿⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⣿⢌⡡⣿⣿⣿⣿⡇⠀⠀⣧⠀⠀⢻⠁⠀⣼⠀⠀⢸⣿⣿⠁⠀⢠⣿⣄⠀⠈⢿⣿⣿⠀⠀⢸⣿⠀⠀⢸⣿⣿⣿⣿⠀⠀⠀⣿⠀⠀⢀⣀⣀⣀⣀⣈⣿⡇⠀⠈⣧⠀⠀⠻⣧⠀⠀⣿⣷⣤⣄⣀⠀⠀⠈⠉⠻⣿⣿⣿⣗⢻⡟⠛⠛⠛⠶⠿⠀⠀⠀⢀⣿⡟⣜",
                "⣿⣿⣿⣿⠀⠀⠀⣿⣦⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⢸⣿⣿⠀⠀⠀⢨⣿⡄⢲⣿⣿⣿⣿⡇⠀⠀⣿⣧⠀⠀⠀⣰⣿⠀⠀⢸⡿⠁⠀⢀⣛⣀⣙⡑⠀⠈⢿⣿⠀⠀⢸⣿⠀⠀⠸⡿⠿⠟⠋⠀⠀⣼⣿⠀⠀⠨⠿⠿⠿⠿⠿⢿⡇⠀⠀⣿⣷⡀⠀⠈⠀⠀⣿⡿⠋⠙⠛⠿⠿⠗⠀⠀⣸⣿⣿⣿⢺⣧⣤⣤⣤⣿⢷⣶⣶⠶⣟⢣⡝⢬",
                "⣿⣿⣿⣿⣀⣀⣀⣿⣿⣧⣀⣀⣀⣸⡷⣙⢷⣤⣄⣀⣉⣁⣀⣠⣴⢞⡱⣜⢣⠿⣿⣿⣿⣷⣤⣤⣿⣿⣦⣤⣤⣿⣿⣤⣤⣼⣥⣤⣤⣾⣿⣿⣿⣿⣤⣤⣬⣿⣤⣤⣼⣿⣦⣤⣤⣤⣤⣤⣤⣶⣿⣿⣿⣤⣤⣤⣤⣤⣤⣤⣤⣼⣧⣤⣤⣽⣿⣿⣦⣤⣤⣤⣿⣿⣶⣦⣤⣤⣤⣤⣴⣾⣿⣿⣿⠟⣼⣧⣀⣀⣀⣿⠪⡔⢆⡳⢌⠲⡘⠦",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢏⠳⡉⠆⡀⠀⠀⢉⣠⣂⢧⢣⢎⡵⢎⡧⣛⡭⢽⡹⢫⠽⣍⠯⡩⠍⠭⡩⠭⠭⢭⡉⠧⡍⢭⠩⡍⢏⡝⠭⢫⠝⡭⢫⠝⣫⠏⡝⢫⠛⡝⢫⠏⡽⢩⠏⡽⢩⢏⠽⣩⢏⡽⢩⢏⡟⢽⢫⠟⡽⢫⢟⡻⣝⠻⣝⡻⣛⢿⠻⣟⢻⡛⢟⡛⢟⡛⣛⢛⡛⢍⢢⠙⡔⢢⠍⣎⡱⢋⠵⣌⢣⡑⢎⠥⠙⣬",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⡌⢂⠐⡠⢆⠲⣑⢎⡱⣍⠞⣜⢮⡜⢧⡹⣇⣻⢣⡽⢧⡻⢴⠳⣅⢋⠴⠱⢌⠓⣢⠙⠦⣙⠢⡓⡜⠲⡌⢎⠥⢚⡔⢣⠞⡰⢩⠎⢥⠋⡜⢡⠊⢅⢃⠚⡰⠉⠎⡒⠥⢊⠴⢋⠎⡜⢣⠏⡞⡱⢏⢮⠳⣜⢫⠶⣍⢏⠾⣱⢋⠶⡹⡌⢞⡰⠑⢎⠢⡉⠆⡌⠓⣌⠣⢚⠤⢣⢍⠲⡌⠦⡙⠤⢊⠰⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢇⠶⡸⣈⠇⡷⢎⣱⢉⡎⣱⢎⡹⠾⣆⡏⢷⣹⢸⣱⢿⡸⢷⣉⢷⡉⢿⣎⡆⢱⠈⠾⣀⠉⠶⡁⢇⢱⡈⢇⡸⡈⡎⣁⠾⣀⠏⣰⠇⡾⣀⠏⡰⢇⡸⡀⠎⡰⠀⠇⠆⡰⠰⠈⠰⠈⢰⠈⠁⠾⢈⠱⠏⡎⢷⡈⣇⠿⡈⡎⢇⡁⠏⡎⢱⠸⣆⠁⠏⡀⢇⠸⠰⢀⡉⡀⢇⢉⡸⢁⡎⢱⠈⡇⠸⠀⣀⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡙⣜⢲⢣⢇⡻⣌⠳⣌⡳⢎⡵⢫⣜⡻⣜⣞⣧⣷⣻⣾⣷⣿⢿⡜⣧⢯⣙⢻⣷⣥⠚⡴⢀⢏⢒⡉⢆⠣⢜⢢⢒⡱⡘⢤⠓⣌⠞⣤⢋⡴⡑⢮⡑⢎⠴⣉⠖⡡⢍⠢⢡⢀⠡⢈⠁⠌⠠⢈⠁⢂⠌⢂⠩⠘⡄⢣⠘⠴⠱⡘⢌⠱⡉⠬⣁⠣⢄⡉⠆⢡⠈⣂⠑⢂⠔⡡⠎⡜⡰⢃⡜⢢⠉⡄⠃⢰⣾⣟⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣹⣦⣯⣞⣮⣵⣮⣟⣶⣽⣿⣾⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⠿⣏⠿⣜⡳⣎⢇⡻⣿⣿⣶⣍⣢⠣⡜⡌⠳⡌⢆⢣⠒⣍⠲⣍⠲⣍⢦⡹⣰⠙⡦⣙⠬⢲⠡⢞⠱⣊⠕⡣⢌⢢⡁⢎⠠⢃⠰⢀⠂⠌⡀⢂⠡⠐⢠⠉⢄⠃⠌⠠⡁⠤⠁⠄⠢⠄⡐⠌⣀⠒⢠⠘⡄⣚⠰⣉⠖⡡⢃⠜⠠⢁⠠⣼⡿⣿⣾⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⠿⣽⢚⠿⣘⢧⡙⣧⡝⢮⡑⣏⠿⣿⣿⣿⣷⣾⣼⣣⣜⡎⢶⡩⣜⡱⢎⡳⣜⢢⢳⣌⢳⡱⣌⢳⣉⡓⣎⡱⢌⡎⢱⢊⠦⣑⢎⡱⢊⡔⢢⡉⠔⣀⠂⣁⠊⠄⡈⠄⡈⠄⡁⠄⠠⠁⠌⠐⠠⢐⠠⠄⡘⢄⠣⡔⣡⠓⡬⢌⠱⢈⠂⣁⣰⣾⣿⣿⣟⣷⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⡿⣟⢿⡻⡟⣯⢏⡷⡹⣎⣛⢦⢫⡝⡜⢦⡙⢦⡹⢧⡹⣌⠷⡲⣍⡛⠿⣿⣿⣿⣿⣿⣿⣷⣿⣾⣷⣷⣮⣷⣷⣮⣷⣷⣾⣷⣾⣷⣾⣵⣯⣾⣧⣯⢶⣍⡶⣩⢳⡜⣣⠜⡜⢤⠃⠤⡈⢐⠠⠐⠀⠄⠀⠠⠀⠐⠈⠄⡑⢠⠊⡔⡩⢎⡱⢜⢢⡙⠔⡂⠌⢠⣴⣾⣿⣿⣟⣾⣿⣻⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣳⢎⠿⡜⢮⡳⣝⣺⢱⡎⣗⡳⢵⣚⣬⠳⣜⡹⢆⣛⠦⣝⢲⡹⣌⠷⣙⢮⡝⣳⢦⡝⣭⠻⢿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣻⣖⡻⣜⢣⡙⢆⠱⢀⠂⠀⠀⠀⠀⠀⠀⠀⢂⠰⡈⢆⡱⢎⡵⢪⡱⢊⡒⡌⢂⣡⣶⣿⣿⣿⣿⣷⣿⣿⣷⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣭⣝⣣⡝⡶⣩⢗⡾⣡⢟⣖⣣⢎⡿⣸⣕⣫⢎⠷⣎⢧⠳⣌⠯⣙⠶⣹⢳⡞⣼⡒⢯⠳⣜⡲⣍⢯⣝⣻⣛⠿⡿⢿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⢷⡙⢮⡐⢂⠌⡀⠀⠀⠀⠀⠠⠈⠤⡑⡼⣌⡳⣍⠞⡥⢃⢣⣨⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣯⣗⣏⠾⣙⡾⣮⣷⣻⣾⡵⣮⣗⣯⢻⣜⢮⡳⣌⠳⣍⠾⣱⣏⠾⣥⢻⣭⣛⢶⡹⢞⣎⢮⡵⣺⠽⣹⢞⡵⣫⢞⡵⣫⢞⡽⣛⡟⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣽⣲⡉⢆⠐⠀⠀⠀⠀⠀⢂⡍⣲⢱⣓⢮⡕⣎⣹⣴⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣷⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣾⣿⣾⢯⡷⣌⠳⣌⡟⣵⡺⣏⢷⣫⢶⡽⣎⣿⣹⢮⡷⣽⢧⣟⣷⣫⢾⣝⣮⢷⣝⣮⢳⡝⣾⢹⡳⣎⠷⣭⢻⡝⣿⢻⡿⣿⣿⣿⣷⣧⡙⢠⠈⠀⠀⠀⢠⠘⣔⠮⣵⢫⣾⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣟⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠐⠺⣿⣿⣿⣿⣿⣿⣿⣿⣿⡦⣙⢦⣛⢶⣻⣭⢷⣫⢷⣏⡿⣼⢯⣿⣽⣯⣿⣾⣷⣿⣿⣾⣯⣿⣾⣽⣳⡿⣜⣧⢻⣜⡻⣬⢳⣝⡲⣏⡵⣫⡽⢯⣟⡾⣉⠆⠀⠁⠀⠂⢆⡹⢌⣿⣾⣿⣿⠿⡛⢛⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣤⣴⣿⣿⡷⢘⢦⣛⡾⣵⣞⣳⢯⣟⣾⣿⣿⣿⡿⢟⠛⢛⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣼⣳⣭⠷⣎⣷⣹⢞⡵⣏⡟⣮⠓⠥⠈⠀⠀⠡⣜⣦⣷⣿⣿⣻⣳⣮⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢻⣿⣷⣦⣤⣙⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⡹⢎⡷⡽⣞⡼⣭⢿⣾⣿⣿⣿⠋⠠⠀⠀⣉⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣯⢿⡽⢶⢯⣟⡾⣽⡹⠆⡍⠂⠀⢀⣦⣿⣿⢿⣻⣙⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡅⡳⢬⢳⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⡿⢛⠡⢌⡳⢯⣝⠿⡼⣽⡞⣿⣾⣿⣿⡧⢀⠀⠀⢸⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⣿⠛⠿⣿⣿⣿⠻⡜⢩⠓⠪⠑⠣⠑⠈⠀⢠⣴⣿⣿⡿⣟⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡧⡘⢬⢓⡬⢳⣙⠾⡙⢏⠛⡍⡙⠄⠒⡠⢌⡧⣝⣳⣞⡿⣽⢶⣻⢷⣯⣿⣿⣿⣦⣄⡀⠈⠛⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣁⣠⣴⣿⡿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⣤⣟⢿⣯⣭⣷⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡕⣪⢣⡜⣣⢎⡖⡩⢌⠘⠠⣀⢉⡶⢭⣻⡼⣯⢷⣻⡼⣳⢯⣟⡿⣽⣷⣿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⣿⣿⣿⢿⡿⣟⡟⢯⠉⠄⡐⠀⠀⠀⠀⠀⠀⠀⢀⣨⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡴⢫⡼⢃⠎⠠⠁⡄⡘⢴⡸⣝⢾⣹⢷⣻⡽⣛⣶⢻⡵⣫⢞⡽⣳⣛⡾⡽⢯⡟⣿⢻⡿⢿⡿⢿⢿⣻⢷⣻⠽⣞⢏⡏⡱⣈⠂⠌⡀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡗⡩⢐⠡⠈⠤⡁⢴⢩⠶⣙⢮⠳⡝⢮⠳⣝⡻⣜⢧⡻⣵⢫⢾⡵⣫⢞⡽⣹⢺⡱⣏⡞⣧⢻⡝⣮⢳⣏⢮⡳⣎⠾⣴⠳⣌⢧⡓⣬⠱⣌⠖⡰⢂⣾⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⡀⢁⠈⡀⢁⠆⡹⡈⢇⠹⡈⢆⠹⡈⢇⠹⡀⢷⡈⢇⠿⣈⠿⣎⢷⡹⣏⡾⣱⢏⣷⢹⣾⢱⡿⡾⢷⣏⡾⣷⢿⣉⡿⣎⡿⣸⢇⡹⣆⠏⣰⠈⣰⣿⣿⣿⣿⣿⣏⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠄⡁⢂⠐⢠⠃⡜⠠⠑⠈⠀⠐⠀⠂⠀⠀⠀⠐⠀⠌⡈⠞⡡⠛⡜⢪⠵⣫⢾⣝⡯⣞⣳⡞⣯⣳⢟⣻⢮⣟⡵⣯⢻⡼⣣⠟⣥⢫⠱⠌⠚⣀⣾⣿⣉⠉⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢁⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠁⠂⠔⢀⠂⠌⡀⠂⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠐⡈⡐⢀⠃⡌⢆⣻⣽⣻⢾⡽⣯⢷⡽⣣⣟⠾⣭⠷⣞⡽⣚⢧⡛⡥⢛⠤⢃⠁⢂⣴⣿⣿⣿⣟⣻⢿⣿⣾⣳⣯⣿⢾⣟⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣵⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠡⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⢂⠐⡠⣌⣲⡽⣞⡷⣯⣟⣯⢿⡽⣾⣹⣳⡭⢿⣭⣛⢮⢳⡙⢦⠙⡐⠃⠄⠂⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣋⣀⢥⡐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡠⢖⡼⠸⠎⡝⠳⢩⠳⡹⣙⠾⣱⡻⣞⣯⣟⡷⣳⢧⣛⢷⢪⡕⠪⢅⠘⠠⢁⠐⢀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣭⢶⣭⣛⠶⣄⠄⣀⠀⠀⡀⠀⢀⢀⡀⡄⣄⠦⠜⡑⠂⠑⠈⠀⠁⠀⠀⠀⠀⠀⠁⠌⠒⡡⣙⠮⣗⡾⣽⣳⢯⡝⣎⠧⡘⢡⠂⠌⡀⢀⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣽⣿⣮⣟⡶⣭⢳⣼⣻⣞⣮⣿⣼⣦⣶⣴⣠⣄⣄⣠⣀⡄⣄⣀⣀⣀⢀⠀⠀⠀⠀⠤⠙⣬⢳⣯⢷⣫⠞⡌⢆⠑⡀⠂⣄⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢲⣏⣾⣿⣿⣿⣾⣿⣽⣯⣷⣟⣮⣓⢦⡡⣐⠀⠈⠈⠉⠙⠛⠳⢶⣤⣀⠔⣢⢟⡾⣧⡛⣜⠡⠎⡐⣤⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢳⡾⣽⣿⣿⣿⣿⣿⣿⣿⣷⣯⣷⣻⢯⡷⣟⣯⢿⡞⡷⣜⢦⡑⢆⡱⢛⡾⣶⣫⣟⢶⡹⢄⣣⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿", --]]

                --[["⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣯⣿⣾⢿⣿⣿⣿⠽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⡿⣿⢿⡿⣿⢿⣿⣿⣿⣿⣿⡀⠂⠀⠈⠙⠻⢿⣿⣿⣿⣏⢿⣿⣷⣯⣟⡷⣯⣿⢿⣽⣾⣻⣷⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠁⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⡇⣿⢣⢟⡻⣛⢟⡤⢧⡜⣇⠿⣇⠀⠀⠀⠀⠀⠀⠛⢿⣼⡟⣼⣿⣧⢻⣼⣻⣧⢟⡿⣼⢧⣟⣧⣿⣼⣟⣿⣿⣼⣟⣿⣿⣿⠟⠃⠀⠀⠀⠀⣼⢼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣗⡌⣣⠏⡜⡭⣚⡜⣣⠞⡼⡸⢻⡤⠀⠀⠀⠀⠀⠀⠈⠙⠾⠿⢿⠿⠁⠉⠙⠛⠛⠛⠓⠛⠛⠋⠉⠛⠋⠁⠉⠘⠙⠛⠋⠀⠀⠀⠀⠀⠀⢰⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⠘⡤⢩⡘⠰⡡⢊⡕⠪⢔⢣⡙⢷⡀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⡆⡘⠤⣈⠣⡁⠧⡘⡑⢊⠔⠲⢈⠻⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣷⣿",
                "⣿⣿⣟⣿⣿⣿⣿⡇⠑⠒⡁⠛⠛⠛⠛⠛⠋⠛⡛⠛⠛⢻⡇⠀⠀⠀⠀⠀⠀⣀⡀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣤⣀⡀⠀⠀⠀⠚⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣭⣋⠭⣍⢭⡙",
                "⣿⣿⡿⣿⣿⣿⣿⣷⠀⠡⠐⠤⠣⠌⢡⢉⠡⡁⠒⡐⠂⣺⡷⠀⠀⠀⠀⠐⠿⣯⣭⣻⣿⣷⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⣿⣿⣿⢯⠽⠟⠛⠈⠀⠀⠀⢿⣿⢾⣿⣿⣿⣿⢿⣿⣿⢿⣿⣿⣿⣽⢯⡟⡿⣿⣿⣿⣟⠛⡋⠿⣛⣌⣲⡉⢦⠘",
                "⣿⣿⢿⣿⣿⣿⣿⣿⠀⠐⠠⠐⢀⠂⡐⢈⠂⡁⠂⠙⣶⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣻⠟⣻⡟⠾⣌⢳⣽⣾⣿⣥⣩⣴⣸⣿⣿⣿⡳⠌⡜",
                "⣿⣿⡿⣿⣾⣿⣿⣿⡆⠀⠀⠀⠀⢀⠀⠀⡐⣀⠠⠉⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣀⣀⡀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⢯⣷⢿⡾⣿⣿⣿⣿⣿⣿⣿⣉⠆⠩⢾⣾⣿⣿⣷⡳⡴⣾⣿⢿⢫⡝⢆⠡",
                "⣿⣿⣿⣿⣿⣿⣟⣿⡇⠀⠀⠐⠀⠀⠀⢀⠀⠀⢤⠀⢻⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢲⣶⣟⣈⣹⣷⣿⠟⠀⠀⠀⠀⠀⠀⠀⠤⠤⢤⣤⣀⣤⣠⣿⡶⣶⣷⡶⣶⠶⣶⠶⡿⢿⢿⡅⣈⡡⠈⢸⣿⣿⣿⣷⣳⣿⣟⠢⡃⡜⢄⢫",
                "⣿⡿⢹⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣄⠀⣵⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣷⣿⠟⠁⠀⠀⠀⠀⠂⣈⣀⣤⡴⠦⠦⢤⣄⣤⣻⣛⣛⣛⣟⡛⠿⠷⠿⡳⡹⠀⢿⡃⠜⣀⣽⣿⣿⣿⣿⣿⣿⣿⢌⠳⡥⣘⢆⢣",
                "⡷⣿⠸⣿⣿⣿⣿⢿⣿⡀⠠⠀⢀⣀⠀⠀⠀⠘⠛⠉⠉⠄⢻⠀⠀⠀⠀⠀⠀⠀⢀⣈⡉⠒⠒⠂⠒⠒⠒⢩⣿⡇⠐⠒⠒⢒⣺⡯⡍⠯⣉⠙⢶⡒⠦⣄⣀⣜⣿⡿⣿⣿⣿⣿⣿⣿⣷⣷⣶⣿⣯⣥⣔⣰⣿⣿⣿⣿⣿⣿⣿⣿⣎⣕⣒⣡⣚⠲",
                "⣗⣿⡆⢿⣿⣿⣿⣿⣿⣇⣀⣠⣤⣤⣴⣶⣶⣶⣾⣷⠾⣻⣿⡧⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⢙⣷⣶⣶⠿⠿⠻⠛⠻⠿⠿⣿⣷⣦⠙⢦⡈⠳⢤⡉⠒⢦⣼⣿⣿⣿⣶⣯⣝⣛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣍",
                "⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣻⡽⣟⣫⣵⡾⠛⣫⣼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠭⠄⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣻⣧⠠⣙⣶⡀⠙⠲⣄⣹⡿⣿⣿⣿⣿⣿⣿⣿⣶⣿⣝⡻⢯⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣯⡽⣟⣧⣿⠟⣋⣥⣶⣿⠿⣿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣷⢻⡱⢂⢿⣌⢳⡀⠘⢹⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⡿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⢟⣵⣿⡟⡏⣼⣾⣿⣿⠟⣭⣾⣟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⠿⡹⠥⡉⠚⠙⠀⠚⠂⠈⢿⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⢿⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⡟⣧⣿⡿⣫⣷⢿⣶⣿⣿⢟⣽⡾⣯⣾⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠐⡈⠀⠀⠀⠀⠴⡏⠰⡃⠅⠱⠀⠸⠀⠀⠀⠀⠈⣿⣿⣿⣿⣷⣿⣿⣿⡳⠜⣦⢳⡝⡶⣱⢎⡷⢭⡜⣭⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⡏⣷⣿⡟⣷⣿⣿⣽⣿⣿⣿⢱⣿⣯⣿⡟⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢡⠘⢠⠃⡆⠐⢨⢱⡌⠁⠈⡄⠁⡄⠐⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣷⣿⣿⣿⣤⣯⡜⢳⣭⣾⣽⣮⣵⣾⠛⠃⠈⠙⠛⠛⢻⣿⣿⣿",
                "⣿⣿⣿⣿⣯⣿⡿⣿⣿⣿⣽⣿⣿⣿⢿⣼⣿⣳⡿⢿⣛⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠌⡐⢈⠱⣈⠂⡄⠁⠂⠀⡁⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣷⣾⣿⣶⣿⣷⣶⣶⣶⣶⣤⣤⣤⣄⣀⡉",
                "⣿⣿⣿⣿⢿⣿⣿⣿⣿⣾⢿⣿⢿⣹⣾⣟⣶⡿⣿⢿⡱⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡁⢆⠠⠃⠄⠂⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣟⣶⣿⣿⣿⢯⣷⣿⣻⣞⡾⣽⡽⣯⡟⣽⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠠⢈⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢯⣿⣟⣷⣻⢾⡽⣞⣳⢯⣝⢮⢻⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠠⢁⠐⡀⠀⠀⠀⠀⠀⠀⠀⠀⢼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⣿⢯⣿⣷⣻⡾⣽⢯⡿⣽⣫⣟⣮⢯⡻⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣯⣷⣿⡿⣟⣾⡿⣽⣯⢿⣽⣳⢿⡼⣞⣭⠷⡹⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣿⡿⣿⣿⣻⣽⣷⢯⣟⡾⣽⣛⡾⣝⡞⣿⡱⢻⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠠⠁⡀⠀⠀⠀⠀⠀⠐⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",
                "⣿⣿⣿⣿⣿⣿⣿⣻⣿⣿⣻⣟⣿⡾⣯⢿⣽⣳⢯⡽⢯⡽⡶⢯⡅⣈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢁⠀⡀⠀⠠⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿",--]]
                --[["⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"],
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡜⠀⠑⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠇⠑⢄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡾⠀⠀⠀⠈⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡌⠀⠀⠀⠑⢆⡀⠀⠀⠀⠀⠀⠀⠀⠀⠺⠄⣀⠀⠀⠀⠀⠑⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⠀⠀⠀⠀⣀⠜⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠀⠤⣀⠈⢆⠀⠀⠀⠀⠀⠀⠀⢀⡸⠄⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠃⠀⢀⠤⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠑⠄⠀⠀⠀⠀⣀⡞⠁⠀⠀⢀⡀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⣤⠄⠀⠀⠀⠀⠀⢀⠋⡠⠔⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⠶⠒⠛⠉⠉⠈⢂⠀⠀⠀⠛⠀⣀⣤⠾⠛⠁⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠈⠳⣤⡀⠀⠀⠀⡎⠉⣀⣀⣀⣠⣄⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣿⣿⠶⠶⠶⠶⠶⠶⢤⣀⠱⠀⠀⠀⠀⠉⠈⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠺⢦⣄⡠⠀⠉⠁⠀⠀⠸⠐⠋⠁⠀⢀⣀⣤⣽⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠷⣦⣄⡀⠀⠀⠁⠀⠱⡀⠀⠀⠐⠓⠚⠛⠛⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠉⠛⠀⠀⠀⢀⠇⣠⠴⠶⠛⠉⣡⡾⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠈⠙⠷⢦⡀⠀⠀⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠠⡤⠤⠤⠼⠀⠀⠀⠀⢸⠀⠀⠀⢀⣤⡾⠋⠀⠀⠀⠀⠀⣀⣀⣤⣤⣶⡶⠶⠶⠿⢿⣷⠀⡐⠁⠀⠀⠀⠀⠀⠈⠒⠤⡀⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⢀⣴⠿⠩⠤⠄⣀⠀⠀⠀⣿⡟⠋⠉⠀⠀⠀⠀⠀⠀⠀⣿⠀⢇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠄⠀⡸⠁⠀⠀⠀⠀⠀⠙⢄⠀⢻⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠈⠢⠄⣀⠀⠀⠀⠀⠀⢀⡠⠜⢣⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠰⠁⠀⠀⠀⠀⠀⠀⠀⢸⠄⠘⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠈⠁⠀⠈⠉⠁⠀⠀⠀⠆⠀⠀⠀⢀⠀⠀⠄⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⢇⠀⠀⠀⠀⠀⢀⡠⠔⠁⠀⠀⠹⣿⣄⠀⠀⠀⠀⠀⠀⢰⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠀⡠⠐⠁⠀⠀⠀⡆",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⠂⠒⠊⠉⠀⠀⠀⠀⠀⠀⠀⠘⢿⣧⣄⠀⠀⠀⢀⣾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠇⠊⠀⠀⠀⢀⠄⠊⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠷⣦⣤⡾⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠚⠁⠀⠀⠀⡠⠂⠁⠀⠀⠀",
                "⠀⠀⠀⠂⠤⠀⣀⠀⠀⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠴⠊⠁⠀⠀⠀⡠⠔⠁⠀⠀⠀⠀⠀⠀",
                "⡀⠀⠀⠀⠀⠀⠀⠈⠑⠂⠙⠢⠤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠇⢀⡠⠔⠋⠀⠀⠀⠀⡠⠐⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠈⠀⠐⠂⠤⢀⡀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠀⠐⠒⠂⠀⠤⢤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠞⠁⠀⠀⠀⣀⠄⠂⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠠⠒⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢨⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀", --]]
            }

            dashboard.section.buttons.val = {
            dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
            dashboard.button("ctrl n", "  > File explorer", "<cmd>NvimTreeToggle<CR>"),
            dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
            dashboard.button("SPC fr", "  > Find Recent", "<cmd>Telescope oldfiles<CR>"),
            dashboard.button("q", "  > Quit", "<cmd>qa<CR>"),
        }
        alpha.setup(dashboard.opts)

        vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
        end
    },
}

return plugins