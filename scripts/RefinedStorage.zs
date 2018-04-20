import crafttweaker.item.IIngredient;

//Cheaper "Crafter" Recipe, because Diamonds are dumb
recipes.remove(<refinedstorage:crafter>);
recipes.addShaped(<refinedstorage:crafter>,
 [[<refinedstorage:quartz_enriched_iron>, <refinedstorage:core:0>, <refinedstorage:quartz_enriched_iron>],
  [<refinedstorage:processor:3>, <refinedstorage:machine_casing>, <refinedstorage:processor:3>],
  [<refinedstorage:quartz_enriched_iron>, <refinedstorage:core:1>, <refinedstorage:quartz_enriched_iron>]]);
