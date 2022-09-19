EXPORT_ASSERT_TO_GLOBALS = true
luaunit = require('test/luaunit')

ttv = require "ns/mylib/TileToValues"
Tiles = require "ns/mylib/Tiles"

TestTileToValues = require("test/TileToValuesTest")
TestTiles = require("test/TilesTest")
TestAppendValuesToTiles = require("test/AppendValuesToTilesTest")
TestMergeTileToVals = require("test/MergeTileToValsTest")
TestMergeTiles = require("test/MergeTilesTest")
TestEvalContaminatedField = require("test/EvalContaminatedFieldTest")

os.exit( luaunit.LuaUnit.run("-v") )
