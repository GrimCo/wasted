import crafttweaker.item.IIngredient;

//Because peacful Essence is unobtainable otherwise
recipes.remove(<rftools:peace_essence>);
recipes.addShaped(<rftools:peace_essence>,
 [[<rftools:syringe>.withTag({mobName: "Iron Golem", level: 10, mobId: "minecraft:villager_golem"}), <rftools:syringe>.withTag({mobName: "Enderman", level: 10, mobId: "minecraft:enderman"}), <rftools:syringe>.withTag({mobName: "Snow Golem", level: 10, mobId: "minecraft:snowman"})],
  [<rftools:syringe>.withTag({mobName: "Bat", level: 10, mobId: "minecraft:bat"}), <rftools:syringe>.withTag({mobName: "Ocelot", level: 10, mobId: "minecraft:ocelot"}), <rftools:syringe>.withTag({mobName: "Squid", level: 10, mobId: "minecraft:squid"})],
  [<rftools:syringe>.withTag({mobName: "Wolf", level: 10, mobId: "minecraft:wolf"}), <rftools:syringe>.withTag({mobName: "Zombie Pigman", level: 10, mobId: "minecraft:zombie_pigman"}), <rftools:syringe>.withTag({mobName: "Cow", level: 10, mobId: "minecraft:cow"})]]);