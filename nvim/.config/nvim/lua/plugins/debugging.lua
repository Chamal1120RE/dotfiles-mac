return {
  {
      "williamboman/mason.nvim",
      config = function()
          require("mason").setup()
      end,
  },
  {
      "jay-babu/mason-nvim-dap.nvim",
      config = function()
          require("mason-nvim-dap").setup({
              ensure_installed = { "python" },
              automatic_installation = false,
              handlers = {
                  -- Custom handlers for specific adapters can be defined here
                  python = function(config)
                      config.adapters = {
                          type = "executable",
                          command = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python",
                          args = { "-m", "debugpy.adapter" },
                      }
                      require('mason-nvim-dap').default_setup(config)
                  end,
              },
          })
      end,
  },
  {
      "mfussenegger/nvim-dap",
      dependencies = {
          "rcarriga/nvim-dap-ui",
          "nvim-neotest/nvim-nio",
          "mfussenegger/nvim-dap-python",
      },
      config = function()
          local dap = require("dap")
          local dapui = require("dapui")

          require("dapui").setup()
          require("dap-python").setup()

          dap.listeners.before.attach.dapui_config = function()
              dapui.open()
          end
          dap.listeners.before.launch.dapui_config = function()
              dapui.open()
          end
          dap.listeners.before.event_terminated.dapui_config = function()
              dapui.close()
          end
          dap.listeners.before.event_exited.dapui_config = function()
              dapui.close()
          end

          vim.keymap.set("n", "<Leader>dt", function() dap.toggle_breakpoint() end, {})
          vim.keymap.set("n", "<Leader>dc", function() dap.continue() end, {})
      end,
  },
}
