return {
  "S1M0N38/love2d.nvim",
  version = "3.*",
  lazy = false,
  opts = {
    love_cmd = "/usr/sbin/love",
  },
  keys = {
    { "<leader>v", "", desc = "LÖVE" },
    { "<leader>vr", "<cmd>Love run<cr>", desc = "Rodar LÖVE" },
    { "<leader>vw", "<cmd>Love watch<cr>", desc = "Rodar com watch" },
    { "<leader>vi", "<cmd>Love info<cr>", desc = "Info LÖVE" },
    { "<leader>vs", "<cmd>Love stop<cr>", desc = "Parar LÖVE" },
    { "<leader>vo", "<cmd>Love output<cr>", desc = "Painel de saída" },
  },
}
