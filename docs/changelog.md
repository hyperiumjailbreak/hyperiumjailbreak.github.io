# Changelog

[![Commits since latest stable](https://img.shields.io/github/commits-since/hyperiumjailbreak/client/latest.svg?color=blueviolet)](https://github.com/hyperiumjailbreak/client/commits/master)

## v2.12.0

```diff
* Modified a large count of mixins
- Removed /resize command
* Fixed /logs
- Removed animation in ingame menu
- Removed broken victory royale sound
```

### Important APIs Changed

```diff
- @ConfigOpt: Removed comment and ignore fields
- Removed profiling for events
- Removed KillEvent, HypixelWinEvent, RenderGuiEvent
* Made MojangAPI internal, migrated the HTTP client it uses, fixed name histories
* Deprecated HyperiumOverlay, removed the addToggle and handleMouseInput voids
- HyperiumPurchase: boolean hasPurchased(String key) and UUID getPlayerUUID() were removed
- BetterJsonObject: removed BetterJsonObject(JsonObject objectIn)
* BetterJsonObject: addProperty(String key, String value), addProperty(String key, Number value), addProperty(String key, Boolean value) are now voids
- ChatColor: stripFormatting(String text) was removed
- HyperiumFontRenderer: removed int drawStringWithShadow(String text, float x, float y, int color)
- LaunchUtil is gone
- utils.Utils: ByteBuffer readImageToBuffer(InputStream inputStream) was removed
- Forge GuiSlider: removed GuiSlider(int id, int xPos, int yPos, String displayStr, double minVal, double maxVal, double currentVal, ISlider par)
- Removed Browse util in rocks.rdil.jailbreak
* Os utility: changed isMacintosh and OSType.OSMacintosh to isDarwin and OSType.OSDarwin
* Some autotip classes changed
```

## v2.11.0

```diff
- Removed several unneeded mixins and related interfaces
* Fixed issues with threading
+ Added Gradle wrappers
+ Update caffeine to latest version (2.8.0)
* Moved metadata class
+ Improve performance for switch statements
+ Fixed GUIs taking some time to load
* Merged some classes together
- Other minor removals
```

## v2.10.1

```diff
* Fixed player counts, update checking, backend HTTP, and more.
```

## v2.10.0

```diff
- Downgraded Kotlin standard library
* FIXED CRASHES RELATED TO JOINING GAMES!!!
- Removed last of optimized item renderer
- Removed broken text in pause menu
+ Made /logs async
+ The clients commands now work when not all lowercase (e.g. /hYpErIuM or /HYPERIUM work)
* Cleanup & removed unused method
```

## v2.9.1

> This is a minor release.

```diff
* Updated Kotlin version
```

## v2.9

```diff
+ Lava bucket fix (prevents false bans)
```

## v2.8.2

> This is a minor release.

```diff
- Removed some useless events
+ Improved addon performance
```

## v2.8.1

> This is a minor release.

```diff
- Removed quest tracking
+ Decreased server join lag
* Cleaned up ChromaHUD
```

## v2.8

```diff
+ Added automatic update checker
- Removed DeobfStack (removes 2MB from Jar!)
* Cleanup
+ Added MemoryFix mod
- Removed unused code
- Removed armor base mixin
```

## v2.7

```diff
* Replaced bors with mergify
- Removed duplicated setting
- Removed blurs which caused issues
+ Improved font renderer
- Removed crash reporting for privacy
- Removed old mixins
- Remove Hyperium capes
+ Bug fixes
+ Added our own player count
```

## v2.6

```diff
+ Added code of conduct
* Updated MojangAPI
- Removed gradlew scripts
- Removed notification center
+ Added option to match shiny pots color (Thanks @RoccoDev!)
- Removed contributor GUI
* Fixed Keybinds GUI resetting GUI scale option to auto
- Removed broken search field in resource pack list
* Improved mixins
- Removed HGames
```

## v2.5

```diff
* Updated Kotlin version
* Updated SpongePowered Mixin to 0.7.11
* Code cleanup
* Other minor fixes
* Fixed glintcolorizer
* Fixed some console errors
```

## v2.4.5

```diff
- Removed particle auras
```

## v2.3

```diff
- Removed some unused methods
- Removed some unused imports
- Removed some javadocs
- Removed a part of improved particle handling
- Removed chunkanimator
- Removed leftover Spotify fragments
- Removed some broken beta features
* Moved metadata class
* Autotip tweaks and fixes
```

## v2.2

```diff
- Removed ChatTriggers
* Code cleanup
- Deleted some backgrounds
- Removed Spotify
- Removed ToS and change background GUIs
- Removed some javadocs
```

## v2.0

Changelogs not available for this release.
