//Followup details needed for "Misc.zs"
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;

var crystallattice = VanillaFactory.createItem("crystallattice");
crystallattice.creativeTab = <creativetab:misc>;
crystallattice.register();

var plasticPurple = VanillaFactory.createItem("plasticpurple");
plasticPurple.creativeTab = <creativetab:misc>;
plasticPurple.register();

var deathBook = VanillaFactory.createItem("deathbook");
deathBook.maxStackSize = 1;
deathBook.creativeTab = <creativetab:misc>;
deathBook.itemRightClick = function(stack, world, player, hand){ Commands.call("deathcounter leaderboard", player, world); return "Pass";};
deathBook.register();