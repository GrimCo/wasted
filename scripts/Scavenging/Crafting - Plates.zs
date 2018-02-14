import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Compactor;

val rfCost = 3000 as int;

//list of all thermal foundation hammers
//.anyDamage().transformDamage()
val hammers = [<thermalfoundation:tool.hammer_copper:32767>,<thermalfoundation:tool.hammer_tin:32767>,<thermalfoundation:tool.hammer_silver:32767>,<thermalfoundation:tool.hammer_lead:32767>,<thermalfoundation:tool.hammer_aluminum:32767>,<thermalfoundation:tool.hammer_nickel:32767>,<thermalfoundation:tool.hammer_platinum:32767>,<thermalfoundation:tool.hammer_steel:32767>,<thermalfoundation:tool.hammer_gold:32767>,<thermalfoundation:tool.hammer_invar:32767>,<thermalfoundation:tool.hammer_bronze:32767>,<thermalfoundation:tool.hammer_constantan:32767>,<thermalfoundation:tool.hammer_iron:32767>,<thermalfoundation:tool.hammer_electrum:32767>,<thermalfoundation:tool.hammer_diamond:32767>,<redstonearsenal:tool.hammer_flux:32767>] as IItemStack[];

val scavengedplates = [<contenttweaker:damagedplateiron>,<contenttweaker:damagedplategold>,<contenttweaker:damagedplatecopper>,<contenttweaker:damagedplatetin>,<contenttweaker:damagedplatesilver>,<contenttweaker:damagedplatelead>,<contenttweaker:damagedplatealuminum>,<contenttweaker:damagedplatenickel>,<contenttweaker:damagedplateplatinum>,<contenttweaker:damagedplateiridium>,<contenttweaker:damagedplatemithril>,<contenttweaker:damagedplatesteel>,<contenttweaker:damagedplateelectrum>,<contenttweaker:damagedplateinvar>,<contenttweaker:damagedplatebronze>,<contenttweaker:damagedplateconstatan>,<contenttweaker:damagedplatesignalum>,<contenttweaker:damagedplatelumium>,<contenttweaker:damagedplateenderium>,<contenttweaker:damagedplatefluxedelectrum>] as IItemStack[];

val foundationplates = [<thermalfoundation:material:32>,<thermalfoundation:material:33>,<thermalfoundation:material:320>,<thermalfoundation:material:321>,<thermalfoundation:material:322>,<thermalfoundation:material:323>,<thermalfoundation:material:324>,<thermalfoundation:material:325>,<thermalfoundation:material:326>,<thermalfoundation:material:327>,<thermalfoundation:material:328>,<thermalfoundation:material:352>,<thermalfoundation:material:353>,<thermalfoundation:material:354>,<thermalfoundation:material:355>,<thermalfoundation:material:356>,<thermalfoundation:material:357>,<thermalfoundation:material:358>,<thermalfoundation:material:359>,<redstonearsenal:material:128>] as IItemStack[];

val foundationingot = [<minecraft:iron_ingot>,<minecraft:gold_ingot>,<thermalfoundation:material:128>,<thermalfoundation:material:129>,<thermalfoundation:material:130>,<thermalfoundation:material:131>,<thermalfoundation:material:132>,<thermalfoundation:material:133>,<thermalfoundation:material:134>,<thermalfoundation:material:135>,<thermalfoundation:material:136>,<thermalfoundation:material:160>, <thermalfoundation:material:161>, <thermalfoundation:material:162>, <thermalfoundation:material:163>, <thermalfoundation:material:164>, <thermalfoundation:material:165>, <thermalfoundation:material:166>, <thermalfoundation:material:167>, <redstonearsenal:material:32>] as IItemStack[];

//plate recipes

var toolHammer = <ore:toolHammer>;
toolHammer.addItems(hammers);

var count = 0 as int;
for i, plate in scavengedplates {

mods.thermalexpansion.Compactor.addPressRecipe(foundationplates[i],plate, rfCost);

recipes.addShapeless("CTPlateScrap"+i, foundationingot[i], [plate]);

	for currentHammer in hammers {

	recipes.addShapeless("CTPlateRepair"+count,	foundationplates[i], [plate, currentHammer.anyDamage().transformDamage()]);
	count = count + 1;

	}
}