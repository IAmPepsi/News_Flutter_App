
<h1 align="center">Welcome to News-App 👋</h1>


## ✨ Quickstart-Guide

`News-App`informiert über aktuelle weltweite Nachrichten, die in verschiedenen Kategorien unterteilt sind.


## 🚀 Usage

Für die Nutzung der `News-App` ist eine Internetverbindung sowie eine E-Mail-Adresse nötig.
Beim ersten Mal muss der Nutzer ein Konto erstellen, um sich einloggen zu können.
Die Nachrichten werden erst nach dem Einloggen angezeigt.
Es gibt die Möglichkeit, durch Schlüsselwörter nach bestimmte Nachrichten zu suchen.
Mit der Taste, die sich rechts oben befindet, kann der Dunkelmodus einstellet werden.
Der `drawer` stellt die Daten des angemeldeten Nutzers, die verschiedenen Kategorien der Nachrichten sowie die Taste zum Ausloggen dar.


## 💻 Code-Structure

>Der Code wurde in mehrere Ordner geteilt.
Jeder Ordner enthält Klassen, die bestimmte Aufgaben ausführen.

- Der Ordner `screen` enthält alle Bildschirme der `News-App`.
- Die API der Nachrichten wird durch den Ordner `apis` aufgerufen.
- Der Ordner `utilities` enthält Dienste wie der `api-key` und der `custom-validator`. Der `custom-validator` ist für die Gültigkeitsprüfung der E-Mail-Adresse sowie des Kennworts verantwortlich.
- Der Ordner `widgets` enthält custom-widgets, die für `News-App` notwendig sind.
- Im Ordner `models` wird den JSON ins `articles` decodiert, die für den Ordner `screen` gebraucht werden. Im gleichen Ordner werden auch die Daten des Nutzers  local gespeichert, für das nächste Einloggen.
- Der Ordner `database` ist für die Authentifizierung der Daten des Nutzers verantwortlich.