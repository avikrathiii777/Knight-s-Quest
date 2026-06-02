# Knight’s Quest

Welcome to **Knight’s Quest**, an immersive and challenging 2D platformer built entirely with the Godot Engine 4. Experience responsive mechanics, tight platforming, and strategic progression as you navigate through increasingly hazardous zones. Complete the quest in your best time and challenge your family!

---

## 🎮 Game Systems & Mechanics

### ⏱️ Global Speedrun Timer
The game features a persistent, global tracking clock that ticks upward in **whole seconds only**. 
* The timer starts immediately when you click **Start** on the Home Menu.
* It pauses automatically during level shifts or when hitting hazards, ensuring your tracking metrics are frame-accurate.
* Your final time is locked in the moment you step into the endgame portal.

### 💀 Persistent Death Counter
Every mistake is logged. The game features an accurate, anti-multi-hit tracking system that registers exactly **one death** per impact. 
* Your total death count is displayed natively on the in-game HUD overlay (`Stats`).
* When you are on the **Home Menu**, the `Deaths` counter automatically hides itself to keep your title screen clean and immersive.

### 💾 Local Record Save System
The game features an automated, local high-score system that saves your personal records directly to your computer's disk (`user://best_score.cfg`). Your stats remain saved even if you close the game!
* **Tie-Breaker Logic:** A new record is registered if your current run time is faster than your previous best. If your time matches your best exactly, the system checks your deaths and awards a new record if you completed the run with fewer deaths.
* Your historical record is beautifully formatted and displayed directly on the Home Menu: `Best Time: Xs (Deaths: Y)`.

---

## 🗺️ Levels Overview


| Level Name | Description |
| :--- | :--- |
| **Home Menu** | The gateway to the game. Features dynamic, animated button states (hover, click, and release scaling) and displays your persistent local high score. The in-game death counter is hidden here. |
| **Tutorial** | The foundational training ground. Learn the basic movement layout, pacing, and jumping physics while getting comfortable with the controls before embarking on the real quest. |
| **Zootopia 2** | A unique world of shifting environments where you experience different seasons. The catch? You must complete this journey twice to overcome the changing seasonal elements and make it through. |
| **Trap World** | A brutal test of patience and precision. A literal minefield of hidden triggers where a single wrong step can instantly send you flying back and forth across the screen. |
| **Maze Madness** | The ultimate test of orientation and spatial awareness. Navigate through a confusing, twisting labyrinth under pressure to locate the hidden exit gate. |

---

## 📑 License

This project is open-source and **free to use** for personal, educational, or commercial modification. 
* You are free to modify the source code, levels, and mechanics.
* **Attribution / Credit is highly appreciated** but not strictly mandatory. 

---

## 🤝 Credits & Attributions

Special thanks to the following creators and resources that helped bring this project to life:

* **Brackeys** – For their incredible, industry-standard 2D platformer tilesets, character sprites, and foundational Godot tutorial videos that inspired and structured this project's core movement architecture. 
* **Godot Engine Community** – For providing documentation and community templates regarding asynchronous web plugins, sound deferred execution states, and strict boolean variable type compliance.

***
*Developed with passion in Godot 4.6+*
