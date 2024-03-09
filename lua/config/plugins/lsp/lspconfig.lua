return {
    "neovim/nvim-lspconfig",
    dependancies = {
        { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
        require('mason').setup()

        local servers = {}

        local ensure_installed = vim.tbl_keys(servers or {})

        vim.list_extend(ensure_installed, {
            
        })
        require('mason-tool-installer').setup { ensure_installed = ensure_installed }

        require('mason-lspconfig').setup {
            handlers = {
               function(server_name)
                    local server = servers[server_name] or {}
                    server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
                    require('lspconfig')[server_name].setup(server)
                end,
            },
        }
    end,
}
