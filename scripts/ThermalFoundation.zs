import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Refinery;
import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;

//RF Cost to Pulverize Plates and Gears back to Dust
val RFCOST = 1500 as int;

//val foundationDusts = [<thermalfoundation:material:0>,<thermalfoundation:material:1>,<thermalfoundation:material:64>,<thermalfoundation:material:65>,<thermalfoundation:material:66>,<thermalfoundation:material:67>,<thermalfoundation:material:68>,<thermalfoundation:material:69>,<thermalfoundation:material:70>,<thermalfoundation:material:71>,<thermalfoundation:material:72>,<thermalfoundation:material:96>,<thermalfoundation:material:97>,<thermalfoundation:material:98>,<thermalfoundation:material:99>,<thermalfoundation:material:100>,<thermalfoundation:material:101>,<thermalfoundation:material:102>,<thermalfoundation:material:103>,<redstonearsenal:material:0>] as IItemStack[];

//val foundationGears = [<thermalfoundation:material:24>,<thermalfoundation:material:25>,<thermalfoundation:material:256>,<thermalfoundation:material:257>,<thermalfoundation:material:258>,<thermalfoundation:material:259>,<thermalfoundation:material:260>,<thermalfoundation:material:261>,<thermalfoundation:material:262>,<thermalfoundation:material:263>,<thermalfoundation:material:264>,<thermalfoundation:material:288>,<thermalfoundation:material:289>,<thermalfoundation:material:290>,<thermalfoundation:material:291>,<thermalfoundation:material:292>,<thermalfoundation:material:293>,<thermalfoundation:material:294>,<thermalfoundation:material:295>,<redstonearsenal:material:96>] as IItemStack[];

//val foundationPlates = [<thermalfoundation:material:32>,<thermalfoundation:material:33>,<thermalfoundation:material:320>,<thermalfoundation:material:321>,<thermalfoundation:material:322>,<thermalfoundation:material:323>,<thermalfoundation:material:324>,<thermalfoundation:material:325>,<thermalfoundation:material:326>,<thermalfoundation:material:327>,<thermalfoundation:material:328>,<thermalfoundation:material:352>,<thermalfoundation:material:353>,<thermalfoundation:material:354>,<thermalfoundation:material:355>,<thermalfoundation:material:356>,<thermalfoundation:material:357>,<thermalfoundation:material:358>,<thermalfoundation:material:359>,<redstonearsenal:material:128>] as IItemStack[];

//for i, dust in foundationDusts {	
//mods.thermalexpansion.Pulverizer.addRecipe(dust, foundationPlates[i], RFCOST);
//mods.thermalexpansion.Pulverizer.addRecipe(dust * 4, foundationGears[i], RFCOST, <minecraft:iron_ingot>, 20);
//}

//Essence to Experience conversion
//mods.thermalexpansion.Refinery.addRecipe(<liquid:essence> * 100, null,<liquid:experience> * 100, 2500);
//mods.thermalexpansion.Refinery.addRecipe(<liquid:experience> * 100, null,<liquid:essence> * 100, 2500);

//Blaze Powder Recipe
//mods.thermalexpansion.Transposer.removeFillRecipe(<minecraft:glowstone_dust>,<liquid:redstone> * 200);
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:blaze_powder>,<minecraft:gunpowder>,<liquid:redstone> * 200, 4500);

//Chorus Plant from Poisonus Potato
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:chorus_flower>,<minecraft:poisonous_potato>,<liquid:ender> * 250, 4500);

//Classic Crafting v2
var ccCount = 0 as int;

val teMachine = <thermalexpansion:machine>;
val teDynamo = <thermalexpansion:dynamo>;
val teCell = <thermalexpansion:cell>;
val teTank = <thermalexpansion:tank>;
val teCache = <thermalexpansion:cache>;
val teBox = <thermalexpansion:strongbox>;

for i in 0 to 16 {	
	registerUpgradeRecipes(teMachine.definition.makeStack(i), ccCount);
	ccCount = ccCount + 1;
}

for i in 0 to 6 {
	registerUpgradeRecipes(teDynamo.definition.makeStack(i),ccCount);
	ccCount = ccCount + 1;
}

registerUpgradeRecipes(teTank,ccCount);
ccCount = ccCount + 1;

registerUpgradeRecipes(teBox,ccCount);
ccCount = ccCount + 1;

registerUpgradeRecipes(teCache,ccCount);
ccCount = ccCount + 1;

registerUpgradeRecipes(teCell,ccCount);

function registerUpgradeRecipes(device as IItemStack, count as int) {
	
recipes.addShaped("TE_"+count+"_Hardened",device.withTag({Level: 1}),
	[	[null, <ore:ingotInvar>, null],
		[<ore:ingotInvar>,device.withTag({Level: 0}).onlyWithTag({Level:0}).marked("device").noReturn(),<ore:ingotInvar>],
		[null, <ore:ingotInvar>, null]
	],
	function(out, ins, cInfo){
		return ins.device.withAmount(1).updateTag({Level: 1});		
	},null);	
recipes.addShaped("TE_"+count+"_Reinforced",device.withTag({Level: 2}),
	[	[<ore:blockGlassHardened>, <ore:ingotElectrum>, <ore:blockGlassHardened>],
		[<ore:ingotElectrum>, device.withTag({Level: 1}).onlyWithTag({Level: 1}).marked("device").noReturn(), <ore:ingotElectrum>],
		[<ore:blockGlassHardened>, <ore:ingotElectrum>, <ore:blockGlassHardened>]
	],
	function(out, ins, cInfo){
		return ins.device.withAmount(1).updateTag({Level: 2});		
	},null);	
recipes.addShaped("TE_"+count+"_Signalum",device.withTag({Level: 3}),
	[	[null, <ore:ingotSignalum>, null],
		[<ore:ingotSignalum>, device.withTag({Level: 2}).onlyWithTag({Level: 2}).marked("device").noReturn(), <ore:ingotSignalum>],
		[null, <ore:ingotSignalum>, null]
	],
	function(out, ins, cInfo){
		return ins.device.withAmount(1).updateTag({Level: 3});		
	},null);	
recipes.addShaped("TE_"+count+"_Enderium",device.withTag({Level: 4}),
	[	[null, <ore:ingotEnderium>, null],
		[<ore:ingotEnderium>, device.withTag({Level: 3}).onlyWithTag({Level: 3}).marked("device").noReturn(), <ore:ingotEnderium>],
		[null, <ore:ingotEnderium>, null]
	],
	function(out, ins, cInfo){
		return ins.device.withAmount(1).updateTag({Level: 4});		
	},null);	
}

//Tank Cleaning
recipes.addShapeless("TETankClean", teTank,
	[teTank.marked("tank").noReturn(),<minecraft:sponge:0>.giveBack(<minecraft:sponge:1>)],
	function(out, ins, cInfo){
		return ins.tank.updateTag({Fluid: {FluidName: "", Amount: 0}});
	 }, null);
	 
//Purple Glazed Plastic
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:plasticpurple>,<techguns:itemshared:55>,<minecraft:dye:5>, 4500);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:plasticpurple>,<mekanism:polyethene:2>,<minecraft:dye:5>, 4500);

//Crystalline Lattice Recipes
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:prismarine>,<contenttweaker:crystallattice>,<liquid:water> * 250, 4500);
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:quartz_block>,<contenttweaker:crystallattice>,<liquid:lava> * 250, 4500);

mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:prismarine_shard> * 4, <minecraft:prismarine:0>, RFCOST);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:prismarine_shard> * 9, <minecraft:prismarine:1>, RFCOST);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:prismarine_shard> * 8, <minecraft:prismarine:2>, RFCOST, <minecraft:dye:0>, 33);