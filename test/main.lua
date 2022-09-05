EXPORT_ASSERT_TO_GLOBALS = true
luaunit = require('test/luaunit')

--- Smaller tests
TestSporeInjectorTiles = require("test/SporeInjectorTilesTest")

--- Bigger tests

os.exit( luaunit.LuaUnit.run("-v") )