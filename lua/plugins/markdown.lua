-- 建议安装MarkdownPreview使用npm/yarn安装，避免使用免安装
-- 如果使用免安装出现问题，可以去.local/share/nvim/.../markdown-preview.nvim/.../install.sh进行覆盖
return {
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    init = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },

    -- MarkdownPreview需要设置lazy = false才能加载..?
    lazy = false,
    config = function()
      vim.g.mkdp_auto_close = true
      vim.g.mkdp_open_to_the_world = false
      vim.g.mkdp_open_ip = "127.0.0.1"
      vim.g.mkdp_port = "8888"
      vim.g.mkdp_browser = ""
      vim.g.mkdp_echo_preview_url = true
      vim.g.mkdp_page_title = "${name}"
    end,
  },
}
