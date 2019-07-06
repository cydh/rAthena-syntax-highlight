# rAthena-syntax-highlight

Notepad++ User-Defined Language for [rAthena](https://github.com/rathena/rathena) NPC scripting.
1. [Add rAthena User-Defined Language](#add-rathena-user-defined-language)
2. [Auto-completion](#auto-completion)
3. [Groups of Keyword Lists](#groups-of-keyword-lists)
4. [Function List](#function-list)
5. [Sources](#sources)

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
If you are using dark-themed background, in this case is **VS2015-Dark** from [VS2015-Dark-Npp](https://github.com/cydh/VS2015-Dark-Npp/blob/cydh-devel/VS2015-Dark.xml)
1. Open your Notepad++ and go to the Language > Define your language... > Import
2. Choose file [rAthena-Vibrant-Ink.xml](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/rAthena-VS2015-Dark.xml)
![vs2015-dark](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/images/rAthena-UDL-VS2015-Dark.png)

## Auto-completion
### Coverage
Because there are many things can be added as rAthena auto-completion, for now the auto-completion list only for
* All script commands
* Mapflags
* Player's parameters
* Clif send type, example usage in `announce` such BC_ALL
* Item bonuses
* Months and days
* Default event labels
### Installation
1. Copy an APIs/[rathena.xml](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/APIs/rathena.xml) file to Notepad++ installation folder `Path\to\Notepad++\plugins\APIs\`.
2. Open menu Settings > Preferences... > Auto-Completion tab, check "Enable auto-completion on each input".
3. Restart Notepad++.

## Groups of Keyword Lists
### 1st Group
* All script commands **except**
  * Flow control: if else switch case default break for do while function end return
  * Most usage script command as NPC dialog: next close close2 close3

### 2nd Group
* Variable with scope: @ . .@ \'

### 3rd Group
* Variable with scope: $ $@ # ##

### 4th Group
* Keywords using prefix for common labels and functions: On F_ S_ L_

### 5th Group
* Mapflags: Mapflag identifier from doc/mapflags.txt
* NPC identifier: script shop cashshop marketshop itemshop pointshop duplicate mapflag boss_monster warp warp2

### 6th Group
* All constants that grouped by prefix identifiers

### 7th Group
* All constants that are not grouped by prefix identifier
* Item Bonuses constants
* Constants of NPC names (if only rAthena's script use `JT_` in script, this is not necessary)

### 8th Group
* Flow control: if else switch case default break for do while function end return
* Most usage script command as NPC dialog: next close close2 close3
* `true` and `false`

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
#### Function List for NPC Script file
![rathena-funclist-npc](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/images/rathena_function_list_for_npc.png)

#### Function List for NPC doc/script_commands.txt
![rathena-funclist-doc](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/images/rathena_function_list_for_script_doc.png)

### Adding Function List
1. Find functionList.xml in your Notepad++ installation directory (it can be under `C:\Program Files\Notepad++` or `%USER%\AppData\Roaming\Notepad++` depends on installation setup)
2. Read the instructions inside [functionList.xml](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/NPPFunctionList/functionList.xml). **DO NOT OVERWRITE YOUR LOCAL FILE**
3. The result will be like [here for declaration](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/NPPFunctionList/functionList.xml.fullnpp766#L104-L107)
4. and [here for definition](https://github.com/cydh/rAthena-syntax-highlight/blob/cydh-devel/NPPFunctionList/functionList.xml.fullnpp766#L1391-L1432)
5. If you don't have rAthena UDL, you can make dummy UDL. Make sure the UDL name is **rathena** lowercase.
6. Restart Notepad++
7. Select the NPC/script file that you think as rAthena script, set the Language > rathena.
*The uploaded functionList.xml based on Notepad++ 7.6.6*

## Sources:
 - [rAthena Script Commands](https://github.com/rathena/rathena/blob/1d88575f90b5f572cffba4a361f3028003008ffb/doc/script_commands.txt)
 - [rAthena Constants: db](https://github.com/rathena/rathena/blob/1d88575f90b5f572cffba4a361f3028003008ffb/db/const.txt)
 - [rAthena Constants: script_constants.hpp](https://github.com/rathena/rathena/blob/1d88575f90b5f572cffba4a361f3028003008ffb/src/map/script_constants.hpp)

Happy editing.
