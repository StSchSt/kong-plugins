local typedefs = require "kong.db.schema.typedefs"  -- Import typedefs (common schema definitions) used in plugin config

return {
  name = "response-header",                         -- The name of the plugin
  fields = {
    { config = {                                    -- Define a configuration block for the plugin
        type = "record",                            -- The type "record" means config is an object with structured fields
        fields = {
          { header_value = {
              type = "string",                      -- Type of the field is string
              required = false,                     -- The field is optional
              default = "default"                   -- If not provided, default to "default"
            }
          },
        },
      },
    },
  },
}

