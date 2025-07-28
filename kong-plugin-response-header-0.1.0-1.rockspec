package = "kong-plugin-response-header"          -- The package name used by LuaRocks
version = "0.1.0-1"                               -- The version of the plugin

source = {
  url = "."                                      -- The plugin source is in the current directory (local source)
}

description = {
  summary = "A simple Kong plugin that adds a custom response header.",  -- Short summary of the plugin’s functionality
  homepage = "https://github.com/StSchSt/kong-plugins",              -- Homepage or GitHub URL (change to your actual repo)
  license = "MIT"                                                        -- Open-source license for the plugin
}

dependencies = {
  "lua >= 5.1",              -- Require Lua version 5.1 or higher
  "kong >= 2.0"              -- Require Kong version 2.0 or higher
}

build = {
  type = "builtin",         -- Use LuaRocks' built-in build system
  modules = {
    -- Map Lua module names to their actual file paths
    ["kong.plugins.response-header.handler"] = "kong/plugins/response-header/handler.lua", -- Link handler module
    ["kong.plugins.response-header.schema"] = "kong/plugins/response-header/schema.lua"    -- Link schema module
  }
}
