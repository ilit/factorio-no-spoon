EXPORT_ASSERT_TO_GLOBALS = true
luaunit = require('test/luaunit')

ttv = require "ns/mylib/TileToValues"
Tiles = require "ns/mylib/Tiles"

TestTileToValues = require("test/TileToValuesTest")
TestTiles = require("test/TilesTest")
TestAppendValuesToTiles = require("test/AppendValuesToTilesTest")
TestMergeTileToVals = require("test/MergeTileToValsTest")
TestEvalContaminatedFieldsTest = require("test/EvalContaminatedFieldsTest")

os.exit( luaunit.LuaUnit.run("-v") )