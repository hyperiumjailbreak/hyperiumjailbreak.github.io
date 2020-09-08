# The (In)complete Development Guide

Hello and welcome to the HyperiumJailbreak developer guide.

!!! note
    The purpose of this guide is to tell you
    the basics. This is exactly why this guide
    will never be complete.

## Starting off (Bootstrap)

First, you are going to want to grab a copy of the latest [IntelliJ IDEA](https://www.jetbrains.com/idea/) build.
After you download and install it, you are ready to start the in-IDE bootstrap phase.

Click check out project from version control, and type in the URL to the client's Git repository. Hit okay.
It will ask about importing the Gradle project. *Click yes*.

It should auto-build. You can ignore this unless it fails.

The next step is to prepare your workspace. Open the Gradle tab - it should be somewhere on screen (it will have an image
of an elephant). Expand the `forgegradle` section.

* If you want to be able to view the decompiled code for Minecraft in addition to being able to run the client (assists with creating mixins), double click `setupDecompWorkspace`.
* If you just want to be able to run the client, double click `setupDevWorkspace`.

## Running the client

To run the client in the development environment, you can execute the pre-made task called `runClient`.
You can either do it in the Gradle tab under `forgegradle`, or in the run configurations dropdown.

!!! tip "Where to find the configurations dropdown"
    The configurations dropdown will be in the top
    right corner of the IDE by default. If for some
    reason our pre-made configurations aren't detected,
    it will say "Add Configurations".

After starting the run process, the client should appear soon after.

## Creating [Mixins](https://en.wikipedia.org/wiki/Mixin)

??? question "What is a `Mixin`?"
    In short terms, a `Mixin` is a class
    that allows changing/modifying/injecting
    code in to a target class that you don't
    have direct access to change it. This comes
    in handy when needing to manipulate dependencies,
    which in our case would be Minecraft mainly.
    Want a better definition then that? Go read
    about it [here](https://en.wikipedia.org/wiki/Mixin).

See the [SpongePowered/Mixin](https://github.com/SpongePowered/Mixin/wiki) documentation.
