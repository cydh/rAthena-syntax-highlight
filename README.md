# rAthena-syntax-highlight

Notepad++ User-Defined Language for [rAthena](https://github.com/rathena/rathena) NPC scripting.
1. [Add rAthena User-Defined Language](#add-rathena-user-defined-language)
2. [Auto-completion](#auto-completion)
3. [Sources](#sources)
4. [Groups of Keyword Lists](#groups-of-keyword-lists)
5. [Function List](#function-list)

## Add rAthena User-Defined Language
You have to choose one of these options. If you want to change, remove the existing 'rathena' language
### Light theme
If you are using light-themed background, example Default white
1. Open your Notepad++ and go to the Language > Define your language... > Import
2. Choose file [Notepadpp-rAthena-syntax-highlight.xml](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/Notepadpp-rAthena-syntax-highlight.xml)

### Dark Theme - Vibrant Ink
If you are using dark-themed background, in this case is **Vibrant Ink** (one of default dark themes in Notepad++)
1. Open your Notepad++ and go to the Language > Define your language... > Import
2. Choose file [rAthena-Vibrant-Ink.xml](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/rAthena-Vibrant-Ink.xml)

### Dark Theme - VS2015-Dark
If you are using dark-themed background, in this case is **VS2015-Dark** from [VS2015-Dark-Npp](https://github.com/Ludomancer/VS2015-Dark-Npp)
1. Open your Notepad++ and go to the Language > Define your language... > Import
2. Choose file [rAthena-Vibrant-Ink.xml](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/rAthena-VS2015-Dark.xml)


## Auto-completion
 - Copy an APIs/[rathena.xml](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/APIs/rathena.xml) file to Notepad++ installation folder `Path\to\Notepad++\plugins\APIs\`.
 - Open menu Settings > Preferences... > Auto-Completion tab, check "Enable auto-completion on each input".
 - Restart Notepad++.


## Sources:
 - [rAthena Script Commands](https://github.com/rathena/rathena/blob/1d88575f90b5f572cffba4a361f3028003008ffb/doc/script_commands.txt)
 - [rAthena Constants: db](https://github.com/rathena/rathena/blob/1d88575f90b5f572cffba4a361f3028003008ffb/db/const.txt)
 - [rAthena Constants: script_constants.hpp](https://github.com/rathena/rathena/blob/1d88575f90b5f572cffba4a361f3028003008ffb/src/map/script_constants.hpp)

## Groups of Keyword Lists
### 1st Group
Color: 0000FF
* All script commands except
  * Flow control: if else switch case do while for
  * Most usage commands: next close close2 close3 menu select callsub callfunc

### 2nd Group
Color: 0080C0
* Variable with scope: @ . .@ \'

### 3rd Group
Color: FF8040
* Variable with scope: $ $@ # ##

### 4th Group
Color: FF0000
* Keywords using prefix for common labels and functions: On F_ S_ L_

### 5th Group
Color: 800040
* Most usage commands to make clear the block: next close close2 close3 menu select callsub and callfunc

### 6th Group
Color: FF0080
* All constants that grouped by prefix identifiers
* Item Bonuses constants

### 7th Group
Color: FF0080
* All constants that are not grouped by prefix identifier
* Constants of NPC names (if only rAthena's script use `JT_` in script, this is not necessary)

### 8th Group
Color: FF0080
* Flow control: if else switch case default break for do while function end return
* Mapflags: Mapflag identifier from doc/mapflags.txt

## Function List
Script/NPC file that loaded with rAthena UDL will be parsed by NPP functionList as
### NPC as Class
NPC is assumed as Class, and as its functions/methods are
* The NPC declaration itself is assumed as class constructor
* In-script function is assumed as function/method
* Label with prefix **On** is assumed as function/method
### Standalone functions
And these below are *'standalone'* declarations will be assumed as functions (like C that has no class) and will be *'grouped'* as Class-like
* **monster**: declarations of permanent monster spawn script line
* **warp**: declarations of warp script line
* **warp2**: declarations of warp2 script line
* **shop**: declarations of Shop NPC
* **cashshop**: declarations of Cash Shop NPC
* **marketshop**: declarations of Market Shop NPC
* **pointshop**: declarations of Point Shop NPC
* **itemshop**: declarations of Item Shop NPC
### Mapflags Grouping
For mapflags, the Class-like group will have structure
```
<map2>mapflag
|- <mapflag1>
|- <mapflag2>
<map2>mapflag
|- <mapflag1>
|- <mapflag2>
```
### Adding Function List
1. Find functionList.xml in your Notepad++ installation directory (it can be under `C:\Program Files\Notepad++` or `%USER%\AppData\Roaming\Notepad++` depends on installation setup)
2. **Better** just add the added lines from [rathena-functionList.diff](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/NPPFunctionList/rathena-functionList.diff)
3. If you don't have rAthena UDL, you can make dummy UDL. Make sure the UDL name is **rathena** lowercase.
4. Restart Notepad++
5. Select the NPC/script file that you think as rAthena script, set the Language > rathena.

Happy editing.
