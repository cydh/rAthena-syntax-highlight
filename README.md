# rAthena-syntax-highlight

Notepad++ User-Defined Language for [rAthena](https://github.com/rathena/rathena) NPC scripting.

## Add rAthena User-Defined Language
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
 - Copy APIs/rathena.xml to Notepad++ installation folder APIs/rathena.
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
  * mes, it has own group!
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
* Flow control: if else switch case default do while for
* Most usage commands to make clear the block: next close close2 close3 end menu select callsub and callfunc

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
* `mes` script command

Happy editing.
