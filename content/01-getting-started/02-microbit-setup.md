---
title: "Micro:bit Setup"
uid: IRRPn5DS
weight: 20
---

{{< instructor-guide >}}

**Objectives:**
- Connect the Micro:bit to a computer via USB
- Navigate the MakeCode editor and import a program from a URL
- Download and run a program on the Micro:bit

**Materials:**
- 1 Micro:bit per student
- 1 short USB cable per student
- 1 computer with Chrome or Chromium browser per student

**Timing:**
- 2 min: Students gather their Micro:bit and short USB cable
- 3 min: Plug in the Micro:bit and open the MakeCode website
- 5 min: Create an account and import the flashing-heart program
- 5 min: Download the program to the Micro:bit and verify it works
- 5 min: Students explore the program for easter eggs

**Key Concepts:**
- The Micro:bit is programmed through a web-based editor called MakeCode
- Programs are downloaded to the Micro:bit over USB
- MakeCode programs can be shared and imported via GitHub URLs

**Common Mistakes:**
- Using a browser other than Chrome, which can cause download issues
- Forgetting to click "Auto" or "Pair" when the browser prompts for USB connection
- Plugging the USB cable into the battery port instead of the micro-USB programming port on the Micro:bit

**Assessment Cues:**
- The Micro:bit displays a flashing heart animation
- Students can explain the basic layout of the MakeCode editor (blocks area, simulator, download button)
- Students discovered the easter egg in the program

**Differentiation:**
- Struggling: Pair with a neighbor who has successfully downloaded; walk through each step together
- Advanced: Modify the flashing-heart program to display a different pattern or animation

{{< /instructor-guide >}}

## Connecting Your Micro:bit

Start with your computer, the short USB cable, and your Micro:bit.

![Setup materials: computer, USB cable, and Micro:bit](../images/mb_setup_1.png)

Plug the Micro:bit into your computer using the short USB cable:

![Micro:bit plugged into computer](../images/mb_setup_2.png)

## Opening the MakeCode Editor

Using the **Chrome or Chromium browser**, visit the Micro:bit MakeCode project website:

[https://makecode.microbit.org](https://makecode.microbit.org)

First, click on the ![Sign In](../images/sign_in.png) button in the upper-right corner to create an account.

## Importing Your First Program

To load your first program, click on the Import button: ![Import](../images/import_button.png)

In the import window, click on the middle box, "Import URL...."

Then, enter this URL:

```
https://github.com/League-Microbit/flashing-heart
```

You should see the Micro:bit editor screen with a simple program:

![MakeCode editor with flashing heart program](../images/mb_editor.png)

{{< callout type="warning" >}}
For the next step, downloading, you should be running the Chrome browser, although Firefox or Edge might also work. Chrome is best supported. If you have a Chromebook, you are already running Chrome.
{{< /callout >}}

## Downloading to Your Micro:bit

Click on the purple **Download** button at the bottom of the screen, and follow the instructions for downloading the program to your Micro:bit.

You should now see a flashing heart on your Micro:bit:

![Flashing heart on Micro:bit](../images/big_heart.png)

Congratulations! You have created your first Micro:bit program.

{{< callout type="tip" >}}
Before you move on, read the Micro:bit program carefully and see if there is anything else the program does besides flash a heart. There might be an easter egg hiding in there!
{{< /callout >}}

### Troubleshooting

- **Micro:bit not recognized:** Try a different USB cable or USB port. Make sure you are using the data cable, not a charge-only cable.
- **Download not working:** Make sure you are using Chrome. Click the "..." next to the Download button and try "Connect device" first.
- **Nothing appears on the Micro:bit:** Unplug and re-plug the USB cable, then try downloading again.

### Challenge

Modify the flashing-heart program to display your initials instead of a heart. Use the LED grid blocks in the MakeCode editor to design your own pattern.
