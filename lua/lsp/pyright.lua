return{
    roots_dir = function ()
        return vim.fn.getcwd()
    end,

    heeaders = {
        ["textDocument/publishDiagnostics"] = function (...)
        end
    },

    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off"
            }
        }
    }
}
