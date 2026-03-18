local group = vim.api.nvim_create_augroup("filetemplates", { clear = true })

local template_dir = vim.fn.stdpath("config") .. "/templates/"

local function templatesubstitute()
    local substitutions = {
        ["%upperfile%"] = string.upper(vim.fn.expand("%:t:r")),
        ["%author%"] = "Praneet Kumar",
        ["%date%"] = os.date("%d-%m-%Y"),
    }

    for pattern, value in pairs(substitutions) do
        vim.cmd(string.format("%%s/%s/%s/ge", pattern, value))
    end
end

vim.api.nvim_create_autocmd("BufNewFile", {
    group = group,
    pattern = "*.cpp",
    callback = function()
        vim.cmd("0r " .. template_dir .. "main.cpp")
        templatesubstitute()
    end,
})

vim.api.nvim_create_autocmd("BufNewFile", {
    group = group,
    pattern = "*.py",
    callback = function()
        vim.cmd("0r " .. template_dir .. "main.py")
        templatesubstitute()
    end,
})

vim.api.nvim_create_autocmd("BufNewFile", {
    group = group,
    pattern = "*.sh",
    callback = function()
        vim.cmd("0r " .. template_dir .. "main.sh")
        templatesubstitute()
    end,
})
