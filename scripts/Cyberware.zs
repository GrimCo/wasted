val scanner = <cyberware:scanner>;
val radioKit = <cyberware:beacon>;
val radioBeacon = <cyberware:beacon_large>;
val radioPost = <cyberware:radio_post>;
val boxComp = <cyberware:component_box>;

val ecGlass = <rewired:ecglass>;
val arVisor = <rewired:visor>;



recipes.remove(scanner);
recipes.remove(radioKit);
recipes.remove(radioBeacon);
recipes.remove(radioPost);
recipes.remove(boxComp);

recipes.remove(ecGlass);

recipes.addShaped(scanner, [[<minecraft:iron_ingot>,<minecraft:ender_eye>,<minecraft:iron_ingot>],
[<minecraft:iron_ingot>,<minecraft:diamond>,<minecraft:iron_ingot>],
[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>]]);

recipes.addShaped(radioKit, [[<ore:wireCopper>,null,null],[<minecraft:iron_ingot>,<minecraft:iron_ingot>,<minecraft:iron_ingot>],[<minecraft:iron_ingot>,<ore:circuitBasic>,<minecraft:iron_ingot>]]);

recipes.addShaped(radioBeacon, [[<minecraft:iron_ingot>, <minecraft:ender_eye>,<minecraft:iron_ingot>],[<ore:wireGold>, radioKit, <ore:wireCopper>],[<minecraft:iron_ingot>, <ore:circuitBasic>, <minecraft:iron_ingot>]]);

recipes.addShaped(radioPost * 6, [[<minecraft:iron_bars>,null,<minecraft:iron_bars>],[<minecraft:iron_bars>,<ore:wireCopper>,<minecraft:iron_bars>],[<minecraft:iron_bars>,<minecraft:diamond>,<minecraft:iron_bars>]]);

recipes.addShaped(boxComp, [[null, <ore:circuitBasic>,null],[<minecraft:iron_ingot>,<ore:chest>,<minecraft:iron_ingot>],[null,<minecraft:iron_ingot>,null]]);

recipes.addShaped(ecGlass * 8, [[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],[<ore:blockGlass>,<ore:circuitBasic>,<ore:blockGlass>],[<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>]]);

recipes.addShaped(arVisor, [[<ore:ingotIron>,<ore:ingotIron>,<ore:ingotIron>],[<minecraft:diamond>,<ore:circuitBasic>,<ore:ingotIron>],[<minecraft:diamond>, null, null]]);