EXPORT_ASSERT_TO_GLOBALS = true
luaunit = require('test/luaunit')

multikey = require("lib/multikey")

--- Smaller tests
TestSingleTileToValues = require("test/SingleTileToValuesTest")

--- Bigger tests

os.exit( luaunit.LuaUnit.run("-v") )