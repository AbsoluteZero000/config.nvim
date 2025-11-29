local M = {}

function M:setup()
  local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
  local workspace_dir = vim.fn.stdpath("data")
    .. package.config:sub(1, 1)
    .. "jdtls-workspace"
    .. package.config:sub(1, 1)
    .. project_name
  local os_name = vim.loop.os_uname().sysname
  local config = {
    -- The command that starts the language server
    -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
    cmd = {

      -- 💀
      "java", -- or '/path/to/java17_or_newer/bin/java'
      -- depends on if `java` is in your $PATH env variable and if it points to the right version.

      "-Declipse.application=org.eclipse.jdt.ls.core.id1",
      "-Dosgi.bundles.defaultStartLevel=4",
      "-Declipse.product=org.eclipse.jdt.ls.core.product",
      "-Dlog.protocol=true",
      "-Dlog.level=ALL",
      "-Xmx1g",
      "--add-modules=ALL-SYSTEM",
      "--add-opens",
      "java.base/java.util=ALL-UNNAMED",
      "--add-opens",
      "java.base/java.lang=ALL-UNNAMED",

      -- 💀
      "-jar",
      vim.fn.stdpath("data")
        .. package.config:sub(1, 1)
        .. "mason"
        .. package.config:sub(1, 1)
        .. "packages"
        .. package.config:sub(1, 1)
        .. "jdtls"
        .. package.config:sub(1, 1)
        .. "plugins"
        .. package.config:sub(1, 1)
        .. "org.eclipse.equinox.launcher_1.7.100.v20251111-0406.jar",
      -- Must point to the                                                     Change this to
      -- eclipse.jdt.ls installation                                           the actual version

      -- 💀
      "-configuration",
      vim.fn.stdpath("data")
        .. package.config:sub(1, 1)
        .. "mason"
        .. package.config:sub(1, 1)
        .. "packages"
        .. package.config:sub(1, 1)
        .. "jdtls"
        .. package.config:sub(1, 1)
        .. "config_linux",

      -- 💀
      -- See `data directory configuration` section in the README
      "-data",
      workspace_dir,
    },

    -- 💀
    -- This is the default if not provided, you can remove it. Or adjust as needed.
    -- One dedicated LSP server & client will be started per unique root_dir
    root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),

    -- Here you can configure eclipse.jdt.ls specific settings
    -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
    -- for a list of options
    settings = {
      java = {},
    },

    init_options = {
      bundles = {},
    },
  }
  require("jdtls").start_or_attach(config)
end

return M
