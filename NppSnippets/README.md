# rAthena Scripting Snippet

Follow one of these installation type to install this library for your [Notepad++](https://notepad-plus-plus.org/)

## Importing

Required | [Snippets Plugin](https://www.fesevur.com/nppsnippets/) | Available in Plugin Manager
--------|--------|--------

1. Open Notepad++.
2. Make sure Snippets window is opened.
3. Right-click in the **Snippets Language List**, choose _**Import library...**_.
4. Select [NppSnippets-rAthena.sqlite](https://github.com/cydh/rAthena-syntax-highlight/NppSnippets-rAthena.sqlite).
5. Import it, it takes some minutes, wait for it!
6. Once it's finished, it's ready to increase your scripting experience!


## Manual Installations

1. Make sure Snippets plugin is installed in your Notepad++.
2. You need installed software to open SQLite such [SQLiteStudio](https://sqlitestudio.pl/index.rvt).
3. Open **NppSnippets.sqlite** database from Notepad++ installation folder/data.
    It's depends on your setting while installing Notepad++, it can be in `installation_dir\plugins\config\NppSnippets.sqlite`
    Or in User's APPDATA directory `...\User\AppData\Roaming\Notepad++\plugins\config\NppSnippets.sqlite`
4. Connect to NppSnippets.sqlite database
5. Execute [NppSnippets-rAthena.sql](https://github.com/cydh/rAthena-syntax-highlight/NppSnippets-rAthena.sql), wait until it's done.
6. If Notepad++ is opened, just restart it.
