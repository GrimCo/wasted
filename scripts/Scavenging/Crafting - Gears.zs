import crafttweaker.item.IItemStack;
import mods.thermalexpansion.InductionSmelter;

val rfCost = 3000;

//lists of all scavenged materials. gears, plates, coils, and frames
val scavengedgears = [<contenttweaker:damagedgeariron>,<contenttweaker:damagedgeargold>,<contenttweaker:damagedgearcopper>,<contenttweaker:damagedgeartin>,<contenttweaker:damagedgearsilver>,<contenttweaker:damagedgearlead>,<contenttweaker:damagedgearaluminum>,<contenttweaker:damagedgearnickel>,<contenttweaker:damagedgearplatinum>,<contenttweaker:damagedgeariridium>,<contenttweaker:damagedgearmithril>,<contenttweaker:damagedgearsteel>,<contenttweaker:damagedgearelectrum>,<contenttweaker:damagedgearinvar>,<contenttweaker:damagedgearbronze>,<contenttweaker:damagedgearconstatan>,<contenttweaker:damagedgearsignalum>,<contenttweaker:damagedgearlumium>,<contenttweaker:damagedgearenderium>,<contenttweaker:damagedgearfluxedelectrum>] as IItemStack[];

//lists of all base materials. gears, plates, coils, frames, and ingots
val foundationgears = [<thermalfoundation:material:24>,<thermalfoundation:material:25>,<thermalfoundation:material:256>,<thermalfoundation:material:257>,<thermalfoundation:material:258>,<thermalfoundation:material:259>,<thermalfoundation:material:260>,<thermalfoundation:material:261>,<thermalfoundation:material:262>,<thermalfoundation:material:263>,<thermalfoundation:material:264>,<thermalfoundation:material:288>,<thermalfoundation:material:289>,<thermalfoundation:material:290>,<thermalfoundation:material:291>,<thermalfoundation:material:292>,<thermalfoundation:material:293>,<thermalfoundation:material:294>,<thermalfoundation:material:295>,<redstonearsenal:material:96>] as IItemStack[];

val foundationingot = [<minecraft:iron_ingot>,<minecraft:gold_ingot>,<thermalfoundation:material:128>,<thermalfoundation:material:129>,<thermalfoundation:material:130>,<thermalfoundation:material:131>,<thermalfoundation:material:132>,<thermalfoundation:material:133>,<thermalfoundation:material:134>,<thermalfoundation:material:135>,<thermalfoundation:material:136>,<thermalfoundation:material:160>, <thermalfoundation:material:161>, <thermalfoundation:material:162>, <thermalfoundation:material:163>, <thermalfoundation:material:164>, <thermalfoundation:material:165>, <thermalfoundation:material:166>, <thermalfoundation:material:167>, <redstonearsenal:material:32>] as IItemStack[];

//gear recipes

for i, gear in scavengedgears {
recipes.addShaped("CTGearRepair"+i, foundationgears[i], [[foundationingot[i], null],[gear,foundationingot[i]]]);
recipes.addShapeless("CTGearScrap"+i, foundationingot[i], [gear]);

mods.thermalexpansion.InductionSmelter.addRecipe(foundationgears[i], gear, foundationingot[i], rfCost);

}