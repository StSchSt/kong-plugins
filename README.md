# Kong Plugin: response-header

A simple custom Kong plugin that adds a configurable HTTP response header.

## Configuration

| Parameter      | Description                 | Default   |
|----------------|----------------------------|-----------|
| header_value   | Value of X-Custom-Header   | default   |

curl -X POST http://localhost:8001/services/{service}/plugins
–data “name=response-header”
–data “config.header_value=HelloWorld”


## What files are doing:
• `handler.lua`: Implements the logic to modify response headers.
• `schema.lua`: Defines the plugin’s configuration structure.
• `rockspec`: Enables you to package and install the plugin via LuaRocks or Kong.
