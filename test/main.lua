EXPORT_ASSERT_TO_GLOBALS = true
luaunit = require('test/luaunit')

TestTileToValues = require("test/TileToValuesTest")
--TestMergeTileToVals = require("test/MergeTileToValsTest")
--TestSingleTileToValues = require("test/SingleTileToValuesTest")

os.exit( luaunit.LuaUnit.run("-v") )