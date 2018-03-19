import crafttweaker.item.IIngredient;

//Cheaper Portal Gun recipe, because Nether Stars are dumb
recipes.remove(<portalgun:item_portalgun>);
recipes.addShaped(<portalgun:item_portalgun>,
 [[<minecraft:obsidian>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
  [<ore:gemDiamond>, <ore:gemDiamond>, <minecraft:iron_ingot>],
  [<minecraft:iron_ingot>, <minecraft:obsidian>, <minecraft:iron_ingot>]]);

var upgradeItem = <portalgun:item_miniature_black_hole>;
recipes.addShapeless("PortalGunUpgrade_3x3",
	<portalgun:item_portalgun>.withTag({width: 3, height: 3, grabStrength:4}),
	[<portalgun:item_portalgun>.marked("pg").noReturn(), upgradeItem],
	function(out, ins, cInfo){
		return ins.pg.updateTag({width: 3}).updateTag({height: 3});
	},null);
 