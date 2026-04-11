return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      -- Desativa o atalho padrão se quiser (opcional)
      { "<leader>e", false },
      -- Define o seu Ctrl+a
      { "<C-a>", "<cmd>Neotree toggle<cr>", desc = "Neo-tree (Root Dir)" },
    },
    opts = {
      window = {
        position = "right",
        width = 30,
      },
      filesystem = {
        follow_current_file = { enabled = true }, -- Foca no arquivo aberto
        filtered_items = {
          hide_dotfiles = true, -- Mostrar arquivos ocultos (ex: .gitignore)
          hide_gitignored = false,
        },
      },
    },
  },
}
