# Knight’s Quest

**Knight's Quest** is a 2D speedrunner, platformer game that I made, of course. It is a challenging ,trust me on that, ragebaiting and very hard (for me at least) game. I got the idea from [yessa's Specter](https://shaaarkai.itch.io/specter). So thanks to her/him (I really don't know). While I got help from brackeys youtube channel (officially mentioned in License and credit).

---

## 🎮 Game Systems & Mechanics

### ⏱️ Speedrun Timer
There is a timer, though I can't explain to myself why I kept it green, that starts from when you open the first level not your first touch. It ends when you complete the game after level 4. ALSO the most important part, you must collect all 40 coins on each level to enable the portal. The timer is also stopped and hidden when you pause the game or are at the home page. But if you play from the home page the whole thing is reset.

### 💀 Persistent Death Counter
Every mistake is logged into the game.
* Your total death count is displayed natively using a CanvasLayer.
* When you are on the **Home Menu**, the `Deaths` counter automatically hides itself to keep your title screen clean and immersive (used this word for the first time).

### 💾 Local Record Save System
The game features an automated, local high-score system that saves your personal records directly to your computer's disk using configFile. Your stats remain saved even if you close the game!
* **Tie-Breaker Logic:** A new record is registered if your current run time is faster than your previous best. If your time matches your best exactly, the system checks your deaths and awards a new record if you completed the run with fewer deaths. So time matters more than your life , I guess.

---

## 🗺️ Levels Overview


| Level Name | Description |
| :--- | :--- |
| **Home Menu** | The gateway to the game. Features dynamic, animated button states (hover, click, and release scaling) and displays your persistent local high score. The in-game death counter is hidden here along with the timer. |
| **Tutorial** | The foundational training ground. Learn the basic movement layout, pacing, and jumping physics while getting comfortable with the controls before embarking on the real quest. It is really easy and I think my best time for this level is 35. |
| **Zootopia 2** | A unique world of shifting environments where you experience different seasons. The catch? You must complete this journey twice to overcome the changing seasonal elements and make it through. And boy, is this hard. The gates in between are made up of question and exclamations made by a snake grandmother.(Watch Zootopia 2) |
| **Trap World** | A brutal test of patience and precision. A literal minefield of hidden triggers where a single wrong step can instantly send you flying back to the start. Like you won't even expect the traps. |
| **Maze Madness** | The ultimate test of orientation and spatial awareness. Navigate through a confusing, twisting labyrinth under pressure to locate the hidden exit gate. |

---

## 📑 License

This project is open-source and **free to use** for personal, educational, or commercial modification (are there any others?). 
* You are free to modify the source code, levels, and mechanics (just pls keep the timer green)(absolutely no reason though).
* **Attribution / Credit is highly appreciated** but not mandatory.(and i mean very highly appreciated) 

---

## 🤝 Credits & Attributions

Special thanks to the following creators and resources that helped bring this project to life (and deaths):

* **Brackeys** – For their incredible, industry-standard(more-like game standard) 2D platformer tilesets, character sprites, and foundational Godot tutorial videos.(those were really very nice)
* **Godot Engine Community** – For providing documentation and community templates regarding asynchronous web plugins, sound deferred execution states, and strict boolean variable type compliance.(though not very thankful because of the number of errors i got)
* **Yessa** - For inspiring me by their/them/him/her 's project [specter](https://shaaarkai.itch.io/specter)

***
*Developed with passion and error in Godot 4.6+*
