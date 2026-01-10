# IGME 480

# Physical COmputing & Alternative Interfaces

### Spring 2026

# Workshop

## Simple Light-Based Interface

We will build a simple interface using and Processing, Arduino and a single photocell . This will be a “Lantern Field”. Floating lanterns react to light Light on the photocell makes lanterns rise and glow. Darkness makes them drift down and dim.

- Brightness level controls overall glow and vertical motion.
- Rising light (e.g. shine a flashlight over the photocell) makes lanterns surge upward and pulse.
- Falling light (cover the sensor) makes them sink and cool down.
- Sudden changes in light create ripples
- Subtle noise keeps things organic.

## Learning Objectives
- What “analog” really means with regard to sensors
- How to read and smooth sensor data in Arduino
- How to detect changes (rising vs falling values)
- How sensor behavior can drive expressive visuals in Processing
- How to think in terms of interaction and behavior, not just input/output or numbers

## Agenda
1. Introduction to AR.js and A-Frame
2. Setting Up the Development Environment
3. Building a Simple AR Scene
4. Adding Interactivity and Custom Features
5. Testing and Troubleshooting
6. Wrap-Up and Q&A

---

>[!NOTE]
> **Workshop Prerequsites**
- Basic familiarity with Arduino and Processing
- Arduino IDE
- Processing IDE
- Arduino microcontroller
- Breadboard
- Photocell (LDR)
- 10k resistor
- hook-up wire
- USB cable

---

## Step 1: Introduction
- Analog sensors output a range, not a state.
- Most interesting interactions come from change over time, not absolute values.
- Today’s goal: translate light behavior into motion and mood.

## Step 2: Hardware Setup
Wire a photocell to Analog Input 0 on your Arduino microcontroller. Refer to the Week 3 slides, the images below or [this web page](https://physicalcomputing.ccastellanos.com/labs/arduino/arduino-analog-input/) if you need a refresher on how to do this.

![Photocell breadboard layout](img/Screenshot-photocell.png) ![Photocell scematic](img/photocell_schem.png) 



## Step 6: Wrap-Up and Q&A
- Technical questions
- [AR.js Documentation](https://ar-js-org.github.io/AR.js-Docs)
- [A-Frame Documentation](https://aframe.io)
- More resources available on myCourses

