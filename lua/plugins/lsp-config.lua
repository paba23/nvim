return {
  {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
      ensure_installed = { "angularls", "bashls", "clangd", "cssls", "dockerls", "eslint", "gradle_ls", "html", "jsonls", "jdtls", "tsserver", "kotlin_language_server", "lua_ls", "marksman", "pyre", "sqlls", "svelte", "tailwindcss", "vuels", "hydra_lsp"
    }
    })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.angularls.setup {}
      lspconfig.bashls.setup {}
      lspconfig.clangd.setup {}
      lspconfig.cssls.setup {}
      lspconfig.dockerls.setup {}
      lspconfig.eslint.setup {}
      lspconfig.gradle_ls.setup {}
      lspconfig.html.setup {}
      lspconfig.jsonls.setup {}
      lspconfig.jdtls.setup {}
      lspconfig.tsserver.setup {}
      lspconfig.kotlin_language_server.setup {}
      lspconfig.lua_ls.setup {}
      lspconfig.marksman.setup {}
      lspconfig.pyre.setup {}
      lspconfig.sqlls.setup {}
      lspconfig.svelte.setup {}
      lspconfig.tailwindcss.setup {}
      lspconfig.vuels.setup {}
      lspconfig.hydra_lsp.setup {}
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end
  }
}
