import crafttweaker.item.IItemTransformer;
//Early Game Food... Yum

//Juicy Crub
val grub = <tp:monster_jerky>.withTag({display: {Name: "Juicy Grub", Lore:["Slimy yet Satisfying"]}});
recipes.addShaped("CTGrubs", grub, [[<ore:dirt>,<ore:dirt>],[<ore:dirt>,<ore:dirt>]]);

//Seedy Juice
val seedWheat = <minecraft:wheat_seeds>;
val juiceWheat = <tp:wheat_juice>.withTag({display: {Lore: ["Now with Pulp!"]}});
val juicer = <tp:juicer>;

recipes.addShaped("CTWheatJuice", juiceWheat, [	[seedWheat, seedWheat, seedWheat], [seedWheat, juicer, seedWheat], [seedWheat, seedWheat, seedWheat]]);