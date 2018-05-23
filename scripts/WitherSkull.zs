import crafttweaker.item.IIngredient;

//Makes WitherSkulls Craftable
recipes.addShaped(<minecraft:skull>,
 [[<minecraft:bone_block>, <minecraft:bone_block>, <minecraft:bone_block>],
  [<minecraft:bone_block>, null, <minecraft:bone_block>],
  [<minecraft:bone_block>, <minecraft:bone_block>, <minecraft:bone_block>]]);
  
recipes.addShaped(<minecraft:skull:1>,
 [[<minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>],
  [<minecraft:coal_block>, <minecraft:skull>, <minecraft:coal_block>],
  [<minecraft:coal_block>, <minecraft:coal_block>, <minecraft:coal_block>]]);
