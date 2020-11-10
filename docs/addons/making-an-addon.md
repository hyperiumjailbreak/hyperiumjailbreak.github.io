# Making an Addon

Here is a guide on how to make a custom addon.

## Requirements

To make an addon, you will first need the following things:

- At least 30 minutes (assuming this is your first time)
- The following software installed:
  - [Git](https://git-scm.com)
  - [IntelliJ IDEA](https://jetbrains.com/idea) (Community edition will do)
  - JDK **8** (Don't want to make an Oracle account to download it? Just use [ojdkbuild](https://github.com/ojdkbuild/ojdkbuild), built by the community.)
- Proficient knowledge of Java - this is crucial

## Getting Started

Once you have all the needed software installed, go ahead and open IntelliJ IDEA, and select the "Get from version control" button.
Type in the URL `https://github.com/hyperiumjailbreak/Addon-Workspace`, and clone it.
Wait for the Gradle project to finish importing.
Once it is complete, open the Gradle tab on the right, then the `ForgeGradle` category,
and finally, double click `setupDecompWorkspace`. This will take a few minutes to complete.
Next, let's learn about some core Hyperium concepts.

### Events

A lot of things that can happen in the game are represented by events in the codebase.
We have tons, such as `ChatEvent`, `KeypressEvent`, `TickEvent`, and `RightMouseClickEvent`.

To listen for events, simply add the following code to any class:

```java
/*
 * This here is a comment, and is ignored by the computer.
 * 
 * Name the void whatever you want, but make sure it is annotated with InvokeEvent,
 * because that tells HyperiumJailbreak this is an event listener.
 * 
 * The event is the ONLY parameter the void will accept. Use whatever event you want to listen for's type.
 * e.g. this will be triggered on a chat event:
 */
@InvokeEvent
public void onEventName(ChatEvent e) {
    System.out.println("A chat message just happened!!"); // log to the console that it happened
    // ChatEvent has the chat message as one of it's properties, so we can access it:
    String theActualMessage = e.getChat().getUnformattedMessage();
}
```

You have now written an event listener.

One thing to note: Hyperium won't actually search all classes for events unless you explicitly run:

```java
MyClassWithEventListener instance = new MyClassWithEventListener();
EventBus.INSTANCE.register(instance);
```

Or, to make it stop listening for that class:

```java
EventBus.INSTANCE.unregister(instance);
```

### Configuration

<!--
Giving the users of your addon options is an important step in developing a successful addon.
TODO: finish this
-->

Sorry! This section is not done yet. Please check back later.

### `addon.json`

The `addon.json` is a file that tells HyperiumJailbreak some of the information about it.

The following fields are *required*:

- `name` (String): The addon's name.
- `version` (String): The current version of the addon.
- `mainClass` (String): The addon's main class.

In addition, the following fields are optional:

- `mixinConfigs` (List of Strings): The names of any Mixin configuration files that should be registered.
- `transformerClass` (String): The addon's transformer class.

### Addon Main Class

Every addon must have a main class.
This is the class that will be loaded first.
It will run all the addon's set-up, and register all the addon's events, keybinds, configuration options, and more.

In the addon workspace, the main class is located in `src/main/java/com/example/AddonExample.java`.

The main class has 2 methods you need to worry about:

- `onLoad` - This is called when the addon is loaded.
- `onClose` - This is called when the game is being shut down.

## Mixins

Mojang's EULA states that we can't directly redistribute modified versions of Minecraft's source code.
We get around that by simply changing the game's code at runtime through a framework called Mixin.

You can read more about Mixin [here](https://github.com/SpongePowered/Mixin).

You can add Mixin classes to your addon by pointing to a Mixin configuration file in your `addon.json`:

```json
"mixinConfigs": ["my-mixin-config.mixins.json"]
```

## Transformers

This section is not yet done. Sorry! Please check back later.
