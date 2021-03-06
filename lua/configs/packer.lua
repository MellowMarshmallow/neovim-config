local ok, packer = pcall(require, "packer")

if not ok then
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({
            "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path
        })
    end

    packer = require("packer")
end

packer.reset()

packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
        prompt_border = "single",
    },
    profile = {
        enable = true,
    },
})

return packer

