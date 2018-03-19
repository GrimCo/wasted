//Basic 'quality of life' recipes
//Needs "MiscItems.zs"

import mods.jei.JEI;

//Cheaper Minecarts. Great for Lost Cities maps, encourages use of the subways / monorails
recipes.remove(<minecraft:minecart>);
recipes.addShaped(<minecraft:minecart>,
 [[null, null, null],
  [<minecraft:iron_nugget>, null, <minecraft:iron_nugget>],
  [<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]]);

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

//2 Logs -> 16 Sticks
recipes.addShaped(<minecraft:stick> * 16,
 [[null, null, null],
  [null, <ore:logWood>, null],
  [null, <ore:logWood>, null]]);

//8 Logs in a Circle -> 4 Wooden Chests
recipes.addShaped(<minecraft:chest> * 4,
 [[<ore:logWood>, <ore:logWood>, <ore:logWood>],
  [<ore:logWood>, null, <ore:logWood>],
  [<ore:logWood>, <ore:logWood>, <ore:logWood>]]);

//CRAFTABLE RIOT SHIELDS. 'NUFF SAID.
recipes.addShaped(<rewired:shield.polymer>,
 [[<techguns:itemshared:55>, <minecraft:glass_pane>, <techguns:itemshared:55>],
  [<techguns:itemshared:55>, <minecraft:iron_ingot>, <techguns:itemshared:55>],
  [<techguns:itemshared:55>, <minecraft:glass_pane>, <techguns:itemshared:55>]]);

recipes.addShaped(<rewired:shield.carbon>,
 [[<techguns:itemshared:53>, <minecraft:glass_pane>, <techguns:itemshared:53>],
  [<techguns:itemshared:55>, <minecraft:iron_ingot>, <techguns:itemshared:55>],
  [<techguns:itemshared:53>, <minecraft:glass_pane>, <techguns:itemshared:53>]]);

recipes.addShaped(<rewired:shield.plasteel>,
 [[<ore:plateSteel>, <minecraft:glass_pane>, <ore:plateSteel>],
  [<techguns:itemshared:55>, <minecraft:iron_ingot>, <techguns:itemshared:55>],
  [<ore:plateSteel>, <minecraft:glass_pane>, <ore:plateSteel>]]);
