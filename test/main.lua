EXPORT_ASSERT_TO_GLOBALS = true
luaunit = require('test/luaunit')

ttv = require "ns/mylib/TileToValues"

TestTileToValues = require("test/TileToValuesTest")
TestAppendValuesToTiles = require("test/AppendValuesToTilesTest")
TestMergeTileToVals = require("test/MergeTileToValsTest")

os.exit( luaunit.LuaUnit.run("-v") )