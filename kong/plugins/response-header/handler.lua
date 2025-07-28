local plugin = {
  PRIORITY = 1000,
  VERSION = "0.1.0",
}

function plugin.header_filter(conf)
  ngx.header["X-Custom-Header"] = conf.header_value or "default"
end

return plugin
