# Disables TG2 Tactical Nuke and Nuclear Material recipes.
recipes.remove(<techguns:itemshared:117>);
recipes.remove(<techguns:itemshared:118>);

//TechGuns Fabricator Recipe Change (Removes Cybernetic Parts Req.)
recipes.remove(<techguns:multiblockmachine:0>);
recipes.addShaped(<techguns:multiblockmachine:0> * 4,
 [[<ore:plateSteel>, <techguns:itemshared:59>, <ore:plateSteel>],
  [<minecraft:piston>, <techguns:itemshared:70>, <minecraft:piston>],
  [<ore:plateSteel>, <ore:circuitElite>, <ore:plateSteel>]]);

# Fix Lead Nuggets Ore Dictionary definitions for TG2
val leadnugget = <ore:nuggetLead>;
val leadingot = <ore:ingotLead>;
leadnugget.add(<techguns:itemshared:87>);
leadingot.add(<techguns:itemshared:82>);
