EXPORT_ASSERT_TO_GLOBALS = true
luaunit = require('test/luaunit')

ttv = require "ns/mylib/TileToValues"
Tiles = require "ns/mylib/Tiles"

TestTileToValues = require("test/TileToValuesTest")
TestTiles = require("test/TilesTest")
TestAppendValuesToTiles = require("test/AppendValuesToTilesTest")
TestMergeTileToVals = require("test/MergeTileToValsTest")
TestMergeTiles = require("test/MergeTilesTest")
TestDiffTiles = require("test/DiffTilesTest")
TestEvalContaminatedField = require("test/EvalContaminatedFieldTest")
TestEvalContaminatedFields = require("test/EvalContaminatedFieldsTest")

os.exit( luaunit.LuaUnit.run("-v") )
