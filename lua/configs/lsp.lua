require("nvim-lsp-installer").on_server_ready(function(server)
    local opts = {}

    -- customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    server:setup(opts)
end)

