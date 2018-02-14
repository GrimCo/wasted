import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Infuser;
import mods.thermalexpansion.Centrifuge;

val rfCost = 3000 as int;

val scavengedcoils = [<contenttweaker:damagedcoiltransmission>, <contenttweaker:damagedcoilreception>, <contenttweaker:damagedcoilconductance>] as IItemStack[];

val scavengedframes = [<contenttweaker:damagedframemachine>,<contenttweaker:damagedframedevice>,<contenttweaker:damagedframeenergy>] as IItemStack[];

val foundationcoils = [<thermalfoundation:material:514>,<thermalfoundation:material:513>,<thermalfoundation:material:515>] as IItemStack[];

val foundcoilingot = [<thermalfoundation:material:130>,<minecraft:gold_ingot>,<thermalfoundation:material:161>] as IItemStack[];

val foundationframes = [<thermalexpansion:frame:0>,<thermalexpansion:frame:64>,<thermalexpansion:frame:128>] as IItemStack[];

val foundframegear = [<ore:gearTin>,<ore:gearCopper>,<ore:gearLead>] as IOreDictEntry[];
val foundframeingot = [<thermalfoundation:material:129>,<thermalfoundation:material:128>,<thermalfoundation:material:131>] as IItemStack[];

val foundationingot = [<minecraft:iron_ingot>,<minecraft:gold_ingot>,<thermalfoundation:material:128>,<thermalfoundation:material:129>,<thermalfoundation:material:130>,<thermalfoundation:material:131>,<thermalfoundation:material:132>,<thermalfoundation:material:133>,<thermalfoundation:material:134>,<thermalfoundation:material:135>,<thermalfoundation:material:136>,<thermalfoundation:material:160>, <thermalfoundation:material:161>, <thermalfoundation:material:162>, <thermalfoundation:material:163>, <thermalfoundation:material:164>, <thermalfoundation:material:165>, <thermalfoundation:material:166>, <thermalfoundation:material:167>, <redstonearsenal:material:32>] as IItemStack[];



//coil recipes

for i, coil in scavengedcoils {
recipes.addShapeless("CTCoilRepair" +i, foundationcoils[i], [coil, <minecraft:redstone>]);

recipes.addShapeless("CTCoilScrap" + i, foundcoilingot[i], [coil]);

mods.thermalexpansion.Infuser.addRecipe(foundationcoils[i], coil, rfCost);

}

//frame recipes

for i, frame in scavengedframes {

recipes.addShapeless("CTFrameRepair" + i, foundationframes[i], [frame, foundframegear[i]]);

mods.thermalexpansion.Centrifuge.addRecipe([(foundframeingot[i] * 2 )% 75, foundframeingot[i] % 60, (<minecraft:iron_ingot> * 2) % 75, <minecraft:iron_ingot> % 60],frame, null, rfCost);

}