# Forge Porting Guide

This specific page is less of a guide then it is a reference sheet.
*Please read [Making an Addon](./making-an-addon.md) first.*

Porting Forge mods is actually not (that) hard assuming the mod isn't too big.
If the mod just listens for a few events, you should be able to port it in 5-20 minutes.
If it is medium sized, it may take around 45 minutes to complete.
If the mod is extremely complex, (e.g. it uses ASM) it can take hours sadly.

## Porting

First, you will need to get the sources for the mod you are porting.

If the mod is open source, this is a good thing. Simply clone the source.

If the mod is not open source, you will need to decompile it, and reconstruct it from there. See [reconstruction](#reconstruction).

Next, open the sources you just got in IntelliJ IDEA.

If Gradle is already set up, just replace the `build.gradle` file with the `build.gradle` from [here](https://github.com/hyperiumjailbreak/Addon-Workspace/blob/master/build.gradle).

If it isn't, just copy over the relevant files from the Addon Workspace.

Lastly, you just need to make the needed source changes. Here are the basics:

### Main Class

The mod's main class should be converted from an `@Mod` to implementing `cc.hyperium.internal.addons.IAddon`.

### Events

`MinecraftForge.EVENT_BUS` should be changed to (`cc.hyperium.event.EventBus`) `EventBus.INSTANCE`.

The names of a bunch of events are also different. Here (most) of them are:

| Forge | HyperiumJB |
|-------|------------|
| ChatEvent | ChatEvent |
| FMLPreInitializationEvent | PreInitializationEvent |
| FMLInitializationEvent | InitializationEvent (in `cc.hyperium.event.client`, not `cc.hyperium.event` :warning:) |
| PlaySoundAtEntityEvent | PlaySoundEvent |
| LivingDeathEvent | LivingDeathEvent |
| ItemTooltipEvent | ItemTooltipEvent |
| TickEvent.ClientTickEvent | TickEvent |
| ChunkEvent.Load | ChunkLoadEvent |
| EntityJoinWorldEvent | EntityJoinWorldEvent |

There are more, but I haven't listed them here just to make it breif. Just check the source code for the rest.

### Ingame GUI

Hyperium supports enabling and disabling certain GUI components just like `ForgeGuiIngame`. Just change `ForgeGuiIngame` to `HyperiumGuiIngame`.

### NBT

If you use Forge's NBT Constants, replace them with their real values. You can find them [here](https://github.com/MinecraftForge/MinecraftForge/blob/d06e0ad71b8471923cc809dde58251de8299a143/src/main/java/net/minecraftforge/common/util/Constants.java#L16).

### FML Loading Plugins

You will need to delete the FML loading plugin class, and add your class transformer to the `addon.json`.
