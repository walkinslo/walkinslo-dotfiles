local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
    print("Color scheme not found")
    return
end
