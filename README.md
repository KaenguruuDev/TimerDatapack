# Minecraft Timer Datapack

*Timers for everything and everyone*

**[[1.21.8]](https://github.com/KaenguruuDev/TimerDatapack/releases/tag/1.21.8)**

**[[1.18.1]](https://github.com/KaenguruuDev/TimerDatapack/releases/tag/1.18.1)**

---
## DE

Mit diesem Datapack kannst du flexibel Timer direkt im Spiel starten, pausieren und zurücksetzen – perfekt für Speedruns, Challenges oder selbstgebaute Minispiele.

**Hinweis: Dieses Datapack nutzt lediglich die Ingame-Zeit zur Zeitmessung. Das bedeutet, dass die Zeitmessung inakkurat wird, wenn dein Game stark laggt (TPS < 20).**

---

### 🕒 Spielerfunktionen

Jeder Spieler kann folgende Befehle nutzen:

* `/trigger TimerStart`
  Startet den Timer

* `/trigger TimerToggle`
  Pausiert oder setzt den Timer fort

* `/trigger TimerReset`
  Setzt den persönlichen Timer zurück (nur im *Private* Modus)

---

### 🔧 Adminfunktionen

Für den Zugriff auf Verwaltungseinstellungen werden **OP-Rechte** und der Tag `admin` benötigt:

* `/trigger TimerSettings`
  Öffnet eine Übersicht zur Konfiguration aller Timereinstellungen

* `/trigger TimerResetAll`
  Stoppt und setzt alle aktiven Timer im Spiel zurück

---

### ⚙️ Einstellungsoptionen

* **Timer Type**

  * `Private`: Jeder Spieler besitzt seinen eigenen Timer
  * `Public`: Ein gemeinsamer Timer für alle Spieler

* **Pause on player death**

  * `yes`: Timer pausiert automatisch, wenn ein Spieler stirbt
  * `no`: Timer läuft unbeeinflusst weiter

* **Pause on game completion**

  * `yes`: Timer pausiert beim Besiegen des Enderdrachens
  * `no`: Timer bleibt auch nach Spielende aktiv

---

Das Datapack ist leicht zu integrieren, intuitiv bedienbar und ideal für jede Welt, in der Zeit eine Rolle spielt.

---

## EN

This datapack lets you easily start, pause, and reset timers directly in-game — perfect for speedruns, challenges, or custom minigames.


**Warning: This datapack uses Minecraft's in-game time. This means that if your game is lagging (TPS < 20) the recorded times will likely be lower than the actual amount of time played.**

---

### 🕒 Player Commands

All players can use the following commands:

* `/trigger TimerStart`
  Starts the timer

* `/trigger TimerToggle`
  Pauses or resumes the timer

* `/trigger TimerReset`
  Resets the personal timer (only in *Private* mode)

---

### 🔧 Admin Commands

Requires **operator status** and the `admin` tag:

* `/trigger TimerSettings`
  Opens a settings menu to configure timer behavior

* `/trigger TimerResetAll`
  Stops and resets all active timers in the world

---

### ⚙️ Configurable Settings

* **Timer Type**

  * `Private`: Each player has their own personal timer
  * `Public`: A single global timer shared by all players

* **Pause on player death**

  * `yes`: Timer automatically pauses when a player dies
  * `no`: Timer continues regardless of player deaths

* **Pause on game completion**

  * `yes`: Timer pauses when the Ender Dragon is defeated
  * `no`: Timer continues after the game ends

---

This datapack is lightweight, easy to use, and fits seamlessly into any world where time matters.
