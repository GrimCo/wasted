#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val partTypes = ["Gear","Plate"] as string[];
val materialTypes = ["Iron","Gold","Copper","Tin","Silver","Lead","Aluminum","Nickel","Platinum","Iridium","Mithril","Steel","Electrum","Invar","Bronze","Constatan","Signalum","Lumium","Enderium","FluxedElectrum"] as string[];
val coilTypes = ["Transmission","Reception","Conductance"] as string[];
val frameTypes = ["Device","Machine","Energy"] as string[];

for partName in partTypes {

	for i, materialName in materialTypes {
	
		val itemName = "damaged" + partName + materialTypes[i];		
		print("Registering Custom Item: " + itemName);		
		var tempItem = VanillaFactory.createItem(itemName);
		tempItem.creativeTab = <creativetab:materials.base>;
		tempItem.register();			
	}
}

for i, coilName in coilTypes {
	
	val itemName = "damaged" + "Coil" + coilName;
	print("Registering Custom Item: " + itemName);		
	var tempItem = VanillaFactory.createItem(itemName);
	tempItem.creativeTab = <creativetab:materials.base>;
	tempItem.register();			
	
}

for frameName in frameTypes {

	val itemName = "damaged" + "Frame" + frameName ;
	print("Registering Custom Item: " + itemName);		
	var tempItem = VanillaFactory.createItem(itemName);
	tempItem.creativeTab = <creativetab:materials.base>;
	tempItem.register();			

}

