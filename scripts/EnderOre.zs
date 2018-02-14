//Custom Ender Ore that drops ender pearls when mined.

#loader contenttweaker
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

val oreData = MaterialSystem.getMaterialBuilder().setName("Ender").setColor("37757").build().registerPart("ore").getData();

oreData.addDataValue("drops", "minecraft:ender_pearl");
oreData.addDataValue("variants", "minecraft:stone");
oreData.addDataValue("hardness", "4");
oreData.addDataValue("resistance", "10");
oreData.addDataValue("harvestLevel", "2");
oreData.addDataValue("harvestTool", "pickaxe");