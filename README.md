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
The game has an added feature of saving your records by storing them into using a config file. Your stats remain saved even if you close the game!
* **Tie-Breaker Logic:** A new record is registered if your current run time is faster than your previous best. If your time matches your best exactly, the system checks your deaths and awards a new record if you completed the run with fewer deaths. So time matters more than your life , I guess.

---

## 🕹️ Controls

Pick whichever system feels right for you:

* **Move Left:** `A` or `Left Arrow`
* **Move Right:** `D` or `Right Arrow`
* **Jump:** `Space`, `W`, or `Up Arrow`
  
---

## 🗺️ Levels Overview


| Level Name | Description |
| :--- | :--- |
| **Home Menu** | This is the first and main page of the game. Kind of like an entrance to the game itself. It features the start button which also shows your saved stats if you have any. The timer and death counter is hidden here. |
| **Tutorial** | The literal tutorial. From this level you learn the two different control systems. You also get to learn your jump limitations and game system like collecting all the 40 coins in each level. It is also the only level to have an enemy. It is really easy and I think my best time for this level is 35. |
| **Zootopia 2** | This level features three diffrent seasons: tundra, sahara, spring. The catch? You must cross this leve twice to overcome it. And boy, is this hard. The gates in between are made up of question and exclamations made by a snake grandmother.(Watch Zootopia 2) |
| **Trap World** | A brutal test of patience and precision. A literal minefield of hidden triggers where a single wrong step can instantly send you flying back to the start. Like you won't even expect the traps. |
| **Maze Madness** | The last and final level where you have to navigate thorough a maze and collect all the coins under the pressure to break your previous record. |

---

## 📑 License

This project is open-source and **free to use** for personal, educational, or commercial modification (are there any others?). 
* You are free to modify the source code, levels, and mechanics (just pls keep the timer green)(absolutely no reason though).
* **Attribution / Credit is highly appreciated** but not mandatory.(and i mean very highly appreciated) 

---

## 🤝 Credits & Attributions

Special thanks to the following creators and resources that helped bring this project to life (and deaths):

* **Brackeys** – For their incredible, industry-standard(more-like game standard) 2D platformer tilesets, character sprites, and foundational Godot tutorial videos.(those were really very nice)
* **Godot Engine Community** – For building such an easy-to-use game engine.(though not very thankful because of the number of errors i got)
* **Yessa** - For inspiring me by their/them/him/her 's project [specter](https://shaaarkai.itch.io/specter)

***
*Developed with passion and error in Godot 4.6+*
