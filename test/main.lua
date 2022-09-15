EXPORT_ASSERT_TO_GLOBALS = true
luaunit = require('test/luaunit')

multikey = require("lib/multikey")

TestSingleTileToValues = require("test/SingleTileToValuesTest")
TestMergeTileToVals = require("test/MergeTileToValsTest")

os.exit( luaunit.LuaUnit.run("-v") )