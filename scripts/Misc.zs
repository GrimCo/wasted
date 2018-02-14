//Basic 'quality of life' recipes
//Needs "MiscItems.zs"

import mods.jei.JEI;

//Cheaper Minecarts. Great for Lost Cities maps, encourages use of the subways / monorails
recipes.remove(<minecraft:minecart>);
recipes.addShaped(<minecraft:minecart>,
 [[null, null, null],
  [<minecraft:iron_nugget>, null, <minecraft:iron_nugget>],
  [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]]);

//Declares Gravestone mod death notes as paper in Ore Dictionary
//<ore:paper>.add(<gravestone:death_info>);

//Craftable Minecraft Spiderweb
recipes.addShaped("CTWeb",<minecraft:web>,
	[	[<ore:string>, <ore:slimeball>, <ore:string>],
		[<ore:slimeball>, <ore:string>, <ore:slimeball>],
		[<ore:string>, <ore:slimeball>, <ore:string>]	]);
		
//Craftable Minecraft Sponge block
recipes.addShaped("CTSponge",<minecraft:sponge>,
	[	[null, <ore:dustWood>, null],
		[<ore:dustWood>, <minecraft:wool:*>, <ore:dustWood>],
		[null, <ore:dustWood>, null]	]);

//Turn 9 Coal Coke into a Coal Coke Block
//recipes.addShaped("CTCokeBlock", <chisel:block_coal_coke2:1>,
//	[	[<ore:fuelCoke>,<ore:fuelCoke>,<ore:fuelCoke>],
//		[<ore:fuelCoke>,<ore:fuelCoke>,<ore:fuelCoke>],
//		[<ore:fuelCoke>,<ore:fuelCoke>,<ore:fuelCoke>]	]);

//Craftable Shulker Shells (via purple plastics)
val shell = <minecraft:shulker_shell>.withTag({display: {Name:"Artificial Shulker Shell", Lore: ["Plastics Made It Possible"]}});
mods.jei.JEI.addItem(shell);
recipes.addShaped("CTShulkerShell", shell,
	[	[<contenttweaker:plasticpurple>, <contenttweaker:plasticpurple>, <contenttweaker:plasticpurple>],
		[<contenttweaker:plasticpurple>, null, <contenttweaker:plasticpurple>]	]);

//Craftable "Death Notebook" for easy checking of Deathcount Scoreboard (iChun mod)
recipes.addShapeless("CTDeathNotebook",<contenttweaker:deathbook>, [<ore:paper>,<ore:paper>,<ore:paper>,<minecraft:rotten_flesh>]);

//Craftable Crystal Lattice, for use in other custom recipes
recipes.addShapeless("CTCrystalLatice", <contenttweaker:crystallattice>, [<ore:sand>,<minecraft:sugar>]);