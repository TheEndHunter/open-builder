local tallGrass = game.data.getVoxel("openbuilder_common_tallgrass")

function onTopBlockSet(chunk, x, y, z, rng)
    local n = rng:nextInt(0, 3000)
    if n < 20 then
        createTree(chunk, x, y, z)
    elseif n < n then
        chunk:setBlock(x, y, z, tallGrass)
    end
end

game.data.addBiome({
    name = "openbuilder_grassland",
    top_voxel = "openbuilder_grass",
    underground_voxel = "openbuilder_dirt",
    depth = 3,
    onTopBlockSet = onTopBlockSet
})
