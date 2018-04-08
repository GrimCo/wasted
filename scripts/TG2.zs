# Disables TG2 Tactical Nuke and Nuclear Material recipes.
recipes.remove(<techguns:itemshared:117>);
recipes.remove(<techguns:itemshared:118>);

//TechGuns Fabricator Recipe Change (Removes Cybernetic Parts Req.)
recipes.remove(<techguns:multiblockmachine:0>);
recipes.addShaped(<techguns:multiblockmachine:0> * 4,
 [[<ore:plateSteel>, <techguns:itemshared:59>, <ore:plateSteel>],
  [<minecraft:piston>, <techguns:itemshared:70>, <minecraft:piston>],
  [<ore:plateSteel>, <ore:circuitElite>, <ore:plateSteel>]]);
