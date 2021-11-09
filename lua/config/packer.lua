local ok, packer = pcall(require, "packer")

if not ok then
    -- alias
    local fn = vim.fn

    -- packer install location
    local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

    -- install packer if not installed
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system {
            "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path
        }
        packer = require "packer"
    else
        error "Unable to load Packer ..."
    end
end

return packer

