EXPORT_ASSERT_TO_GLOBALS = true
luaunit = require('test/luaunit')

ttv = require "ns/TileToValues"

TestTileToValues = require("test/TileToValuesTest")
TestSingleTileToValues = require("test/SingleTileToValuesTest")
--TestMergeTileToVals = require("test/MergeTileToValsTest")

os.exit( luaunit.LuaUnit.run("-v") )