# The (In)complete Development Guide

Hello and welcome to the HyperiumJailbreak developer guide.

!!! note
    The purpose of this guide is to tell you
    the basics. This is exactly why this guide
    will never be complete.

## Starting Off (Bootstrap)

First, you are going to want to grab a copy of the latest [IntelliJ IDEA](https://www.jetbrains.com/idea/) build.
After you download and install it, you are ready to start the in-IDE bootstrap phase.

Click check out project from version control, and type in the URL to the client's Git repository. Hit okay.
It will ask about importing the Gradle project. *Click yes*.

It should auto-build. You can ignore this unless it fails.

The next step is to prepare your workspace. Open the Gradle tab - it should be somewhere on screen (it will have an image
of an elephant). Expand the `forgegradle` section.

* If you want to be able to view the decompiled code for Minecraft in addition to being able to run the client (assists with creating mixins), double click `setupDecompWorkspace`.
* If you just want to be able to run the client, double click `setupDevWorkspace`.

!!! warning
    `setupDecompWorkspace` is more likely to fail.
    You can give it a try, but there is no guarantee
    it will work. Don't be discouraged by this message
    though!
