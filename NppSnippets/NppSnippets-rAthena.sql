-----------------------------------------------------------------------------
-- rAthena Script snippets for Notepad++ (NppSnippets Plugin)
--
-- This file is .sql file for manual installation by run these queries if you
-- have SQLite installed.
-- https://github.com/cydh/rAthena-syntax-highlight
-----------------------------------------------------------------------------
-- 1.0.0 Initial release [Cydh]
--       Script commands from 3 years ago.
-----------------------------------------------------------------------------

----------------------------------------------------
-- Library identifier record.
----------------------------------------------------
INSERT INTO Library(Name, CreatedBy, Comments, SortBy) VALUES('rAthena-Scripts','rAthena Community','rAthena script commands and templates. Contact http://github.com/cydh/',1);

----------------------------------------------------
-- Put LibraryID for rAthena Snippets into temporary table
----------------------------------------------------
CREATE TEMP TABLE _rAthenaLibID (`LibraryID` INTEGER);
INSERT INTO _rAthenaLibID VALUES ((SELECT LibraryID FROM Library WHERE Name = 'rAthena-Scripts'));

----------------------------------------------------
-- LibraryLang identifier record.
----------------------------------------------------
INSERT INTO LibraryLang(LibraryID, Lang) VALUES((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), -2);


----------------------------------------------------
-- Script Commands records.
----------------------------------------------------
-----------------------
-- 1.- Basic commands
-----------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Messaging - mes', 'mes "', '";',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Dialog - COLOR', '^RRGGBB', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Dialog - NAVI', '<NAVI>Display Name<INFO>mapname,x,y,0,000,flag</INFO></NAVI>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Dialog - URL', '<URL>Display Name<INFO>http://rathena.org/</INFO></URL>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Dialog - next', 'next;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Dialog - close', 'close;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Dialog - close2', 'close2;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - end', 'end;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - set', 'set(<variable>,<expression>{,<char id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - setd', 'setd "<variable name>",<value>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - getd', 'getd("<variable name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/NPC - getvariableofnpc', 'getvariableofnpc(<variable>,"<npc name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - goto', 'goto <label>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Menu - menu', 'menu "<option_text>",<target_label>{,"<option_text>",<target_label>,...};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Menu - select', 'select("<option>"{,"<option>",...})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Menu - prompt', 'prompt("<option>"{,"<option>",...})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Dialog - input', 'input(<variable>{,<min>{,<max>}})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - callfunc', 'callfunc "<function>"{,<argument>,...<argument>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - callfunc', 'callfunc("<function>"{,<argument>,...<argument>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - callsub', 'callsub <label>{,<argument>,...<argument>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - callsub', 'callsub(<label>{,<argument>,...<argument>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - getarg', 'getarg(<index>{,<default_value>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - getargcount', 'getargcount()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - return', 'return {<value>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Function - function - Predefined internal function', 'function <function name>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Function - function - Using internal function', '<function name>{(<argument>,...<argument>)};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Function - function - Defining Function', 'function <function name> {

	//<code>

}', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Function - is_function', 'is_function("<function name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - if', 'if (<condition>) <statement>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - jump_zero', 'jump_zero (<condition>),<label>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - switch', 'switch (expression);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - while', 'while (<condition>) <statement>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - for', 'for (<variable initialization>; <condition>; <variable update>) <statement>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - do', 'do { <statement>; } while (<condition>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - freeloop', 'freeloop({<toggle>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Array - setarray', 'setarray <array name>[<first value>],<value>{,<value>...<value>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Array - cleararray', 'cleararray <array name>[<first value to alter>],<value>,<number of values to set>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Array - copyarray', 'copyarray <destination array>[<first value>],<source array>[<first value>],<amount of data to copy>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Array - deletearray', 'deletearray <array name>[<first value>],<how much to delete>;', '',3);


----------------------------------------
-- 2.- Information-retrieving commands
----------------------------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - strcharinfo', 'strcharinfo(<type>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - strnpcinfo', 'strnpcinfo(<type>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Array - getarraysize', 'getarraysize(<array name>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Array - getelementofarray', 'getelementofarray(<array name>,<index>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - readparam', 'readparam(<parameter number>{,"<character name>"})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - getcharid', 'getcharid(<type>{,"<character name>"})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - getnpcid', 'getnpcid(<type>{,"<npc name>"});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - getchildid', 'getchildid({<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - getmotherid', 'getmotherid({<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - getfatherid', 'getfatherid({<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - ispartneron', 'ispartneron({<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - getpartnerid', 'getpartnerid({<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - getlook', 'getlook(<type>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - getsavepoint', 'getsavepoint(<information type>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - getcharip', 'getcharip({"<character name>"|<account id>|<char id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - vip_status', 'vip_status(<type>,{"<character name>"})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - vip_time', 'vip_time <time>,{"<character name>"};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - addspiritball', 'addspiritball <count>,<duration>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - delspiritball', 'delspiritball <count>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - countspiritball', 'countspiritball {<char_id>};', '',3);


--2,2 Item-related commands
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - getequipid', 'getequipid(<equipment slot>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - getequipuniqueid', 'getequipuniqueid(<equipment slot>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - getequipname', 'getequipname(<equipment slot>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getitemname', 'getitemname(<item id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Refine - getbrokenid', 'getbrokenid(<number>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - getequipisequiped', 'getequipisequiped(<equipment slot>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Refine - getequipisenableref', 'getequipisenableref(<equipment slot>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Refine - getequiprefinerycnt', 'getequiprefinerycnt(<equipment slot>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - getequipweaponlv', 'getequipweaponlv(<equipment slot>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Refine - getequippercentrefinery', 'getequippercentrefinery(<equipment slot>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getareadropitem', 'getareadropitem("<map name>",<x1>,<y1>,<x2>,<y2>,<item>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Card - getequipcardcnt', 'getequipcardcnt(<equipment slot>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getinventorylist', 'getinventorylist {<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Card - cardscnt', 'cardscnt()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Refine - getrefine', 'getrefine()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getnameditem', 'getnameditem(<item id>,"<name to inscribe>");', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getnameditem', 'getnameditem("<item name>","<name to inscribe>");', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getitemslots', 'getitemslots(<item ID>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getiteminfo', 'getiteminfo(<item ID>,<type>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Card - getequipcardid', 'getequipcardid(<equipment slot>,<card slot>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - mergeitem', 'mergeitem({<item_id>{,<char_id>}});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - mergeitem', 'mergeitem({"<item name>"{,<char_id>}});', '',3);
--2,1.- End of item-related commands.


INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - getmapxy', 'getmapxy("<variable for map name>",<variable for x>,<variable for y>,<type>{,"<search string>"})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - mapid2name', 'mapid2name(<map ID>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - getgmlevel', 'getgmlevel({<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - getgroupid', 'getgroupid({<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Time - gettimetick', 'gettimetick(<tick type>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Time - gettime', 'gettime(<type>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Time - gettimestr', 'gettimestr(<format string>,<max length>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - getusers', 'getusers(<type>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - getmapusers', 'getmapusers("<map name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - getareausers', 'getareausers("<map name>",<x1>,<y1>,<x2>,<y2>)', '',3);


--2,2.- Guild-related commands
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - getguildname', 'getguildname(<guild id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - getguildmember', 'getguildmember <guild id>{,<type>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - getguildmaster', 'getguildmaster(<guild id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - getguildmasterid', 'getguildmasterid(<guild id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Castle - getcastlename', 'getcastlename("<map name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Castle - getcastleid', 'getcastleid("<map name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Castle - getcastledata', 'getcastledata("<map name>",<type of data>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Castle - setcastledata', 'setcastledata "<map name>",<type of data>,<value>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - getgdskilllv', 'getgdskilllv(<guild id>,<skill id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - getgdskilllv', 'getgdskilllv(<guild id>,"<skill name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - requestguildinfo', 'requestguildinfo <guild id>{,"<event label>"};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - getmapguildusers', 'getmapguildusers("<map name>",<guild id>)', '',3);
--2,2.- End of guild-related commands


INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Skill/Player - getskilllv', 'getskilllv(<skill id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Skill/Player - getskilllv', 'getskilllv("<skill name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Skill/Player - getskilllist', 'getskilllist({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - getmonsterinfo', 'getmonsterinfo(<mob ID>,<type>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - getmobdrops', 'getmobdrops(<mob id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Skill/Player - skillpointcount', 'skillpointcount({<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect/Status - getscrate', 'getscrate(<effect type>,<base rate>{,<GID>})', '',3);


------------------------
-- 3.- Checking commands
------------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Player - playerattached', 'playerattached()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Player - getattachedrid', 'getattachedrid();', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control/Player - isloggedin', 'isloggedin(<account id>{,<char id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - checkweight', 'checkweight(<item id>,<amount>{,<item id>,<amount>,<item id>,<amount>,...});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - checkweight', 'checkweight("<item name>",<amount>{,"<item name>",<amount>,"<item name>",<amount>,...});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - checkweight2', 'checkweight2(<id_array>,<amount_array>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Job - basicskillcheck', 'basicskillcheck()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect/Option - checkoption', 'checkoption(<option number>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect/Option - checkoption1', 'checkoption1(<option number>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect/Option - checkoption2', 'checkoption2(<option number>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect/Option - setoption', 'setoption <option number>{,<flag>{,<char_id>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - setcart', 'setcart {<type>{,<char_id>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - checkcart', 'checkcart({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - setfalcon', 'setfalcon {<flag>{,<char_id>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - checkfalcon', 'checkfalcon({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - setriding', 'setriding {<flag>{,<char_id>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - checkriding', 'checkriding({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - setdragon', 'setdragon {<color>{,<char_id>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - checkdragon', 'checkdragon({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - setmadogear', 'setmadogear {<flag>{,<char_id>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - checkmadogear', 'checkmadogear({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - setmounting', 'setmounting {<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - ismounting', 'ismounting({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mounting - checkwug', 'checkwug({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Vending - checkvending', 'checkvending({"<Player Name>"})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Chatroom - checkchatting', 'checkchatting({"<Player Name>"})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - checkidle', 'checkidle({"<Player Name>"})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild/WOE - agitcheck', 'agitcheck()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild/WOE - agitcheck2', 'agitcheck2()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - isnight', 'isnight()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - isday', 'isday()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Misc - checkre', 'checkre(<type>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Misc - is_clientver', 'is_clientver(<type>,<value>{,<char id>})', '',3);


--3,1.- Item-related commands
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - isequipped', 'isequipped(<id>{,<id>{,<id>{,<id>}}})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - isequippedcnt', 'isequippedcnt(<card id>{,<card id>{,<card id>{,<card id>}}})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Card - checkequipedcard', 'checkequipedcard(<card id>)', '',3);
--3,1.- End of item-related commands


------------------------------
-- 4.- Player-related commands
------------------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - attachrid', 'attachrid(<account ID>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - detachrid', 'detachrid', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - addrid', 'addrid(<type>{,<flag>{,<parameters>}});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Control - rid2name', 'rid2name(<rid>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Messaging - message', 'message "<character name>","<message>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Messaging - dispbottom', 'dispbottom "<message>"{,<color>{,<char_id>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Warp - warp', 'warp "<map name>",<x>,<y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Warp - areawarp', 'areawarp "<from map name>",<x1>,<y1>,<x2>,<y2>,"<to map name>",<x3>,<y3>{,<x4>,<y4>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Warp - warpparty', 'warpparty "<to_mapname>",<x>,<y>,<party_id>,{"<from_mapname>"};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Warp - warpchar', 'warpchar "<map name>",<x>,<y>,<char id>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Warp - warpguild', 'warpguild "<map name>",<x>,<y>,<guild_id>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Warp - warppartner', 'warppartner("<map name>",<x>,<y>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Warp - savepoint', 'savepoint "<map name>",<x>,<y>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - save', 'save "<map name>",<x>,<y>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - heal', 'heal <hp>,<sp>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - itemheal', 'itemheal <hp>,<sp>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - percentheal', 'percentheal <hp>,<sp>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - recovery', 'recovery <type>{,<option>,<revive_flag>{,<map name>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Job - jobchange', 'jobchange <job number>{,<upper flag>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Job - jobname', 'jobname(<job number>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Job - eaclass', 'eaclass({<job number>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Job - roclass', 'roclass(<job number>{,<gender>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Job - changebase', 'changebase <job ID number>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Job - classchange', 'classchange <view id>,<type>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - changesex', 'changesex({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - getexp', 'getexp <base xp>,<job xp>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - setlook', 'setlook <look type>,<look value>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - changelook', 'changelook <look type>,<look value>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - pushpc', 'pushpc <direction>,<cells>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Misc - get_revision', 'get_revision()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Misc - get_githash', 'get_githash()', '',3);


--4,1.- Item-related commands
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getitem', 'getitem <item id>,<amount>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getitem', 'getitem "<item name>",<amount>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getitem2', 'getitem2 <item id>,<amount>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getitem2', 'getitem2 "<item name>",<amount>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getitembound', 'getitembound <item id>,<amount>,<bound type>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getitembound', 'getitembound "<item name>",<amount>,<bound type>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getitembound2', 'getitembound2 <item id>,<amount>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>,<bound type>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getitembound2', 'getitembound2 "<item name>",<amount>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>,<bound type>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getnameditem', 'getnameditem <item id>,<character name|character ID>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getnameditem', 'getnameditem "<item name>",<character name|character ID>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - rentitem', 'rentitem <item id>,<time>{,<account_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - rentitem', 'rentitem "<item name>",<time>{,<account_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - rentitem2', 'rentitem2 <item id>,<time>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>{,<account_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - rentitem2', 'rentitem2 "<item name>",<time>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>{,<account_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - makeitem', 'makeitem <item id>,<amount>,"<map name>",<X>,<Y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - makeitem', 'makeitem "<item name>",<amount>,"<map name>",<X>,<Y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - makeitem2', 'makeitem2 <item id>,<amount>,"<map name>",<X>,<Y>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - makeitem2', 'makeitem2 "<item name>",<amount>,"<map name>",<X>,<Y>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Item - cleanarea', 'cleanarea "<map name>",<x1>,<y1>,<x2>,<y2>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Item - cleanmap', 'cleanmap "<map name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - searchitem', 'searchitem <array name>,"<item name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - delitem', 'delitem <item id>,<amount>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - delitem', 'delitem "<item name>",<amount>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - cartdelitem', 'cartdelitem <item id>,<amount>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - cartdelitem', 'cartdelitem "<item name>",<amount>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - storagedelitem', 'storagedelitem <item id>,<amount>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - storagedelitem', 'storagedelitem "<item name>",<amount>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - delitem2', 'delitem2 <item id>,<amount>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - delitem2', 'delitem2 "<item name>",<amount>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - cartdelitem2', 'cartdelitem2 <item id>,<amount>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - cartdelitem2', 'cartdelitem2 "<item name>",<amount>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - storagedelitem2', 'storagedelitem2 <item id>,<amount>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - storagedelitem2', 'storagedelitem2 "<item name>",<amount>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>{,<account ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - countitem', 'countitem(<item id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - countitem', 'countitem("<item name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - cartcountitem', 'cartcountitem(<item id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - cartcountitem', 'cartcountitem("<item name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - storagecountitem', 'storagecountitem(<item id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - storagecountitem', 'storagecountitem("<item name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - countitem2', 'countitem2(<item id>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - countitem2', 'countitem2("<item name>",<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - cartcountitem2', 'cartcountitem2(<item id>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - cartcountitem2', 'cartcountitem2("<item name>",<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - storagecountitem2', 'storagecountitem2(<item id>,<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - storagecountitem2', 'storagecountitem2("<item name>",<identify>,<refine>,<attribute>,<card1>,<card2>,<card3>,<card4>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - countbound', 'countbound({<bound type>{,<char_id>}})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - groupranditem', 'groupranditem <group id>{,<sub_group>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getrandgroupitem', 'getrandgroupitem <group_id>{,<quantity>{,<sub_group>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - getgroupitem', 'getgroupitem <group_id>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - enable_items', 'enable_items;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - disable_items', 'disable_items;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - itemskill', 'itemskill <skill id>,<skill level>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - itemskill', 'itemskill "<skill name>",<skill level>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - consumeitem', 'consumeitem <item id>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - consumeitem', 'consumeitem "<item name>"{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - produce', 'produce <item level>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - cooking', 'cooking <dish level>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - makerune', 'makerune <% success bonus>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Card - successremovecards', 'successremovecards <equipment slot>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Card - failedremovecards', 'failedremovecards <equipment slot>,<type>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Refine - repair', 'repair <broken item number>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Refine - repairall', 'repairall {<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Refine - successrefitem', 'successrefitem <equipment slot>{,<count>{,<char_id>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Refine - failedrefitem', 'failedrefitem <equipment slot>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Refine - downrefitem', 'downrefitem <equipment slot>{,<count>{,<char_id>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - unequip', 'unequip <equipment slot>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - delequip', 'delequip <equipment slot>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - breakequip', 'breakequip <equipment slot>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - clearitem', 'clearitem {,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - equip', 'equip <item id>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item/Eq - autoequip', 'autoequip <item id>,<option>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Shop - buyingstore', 'buyingstore <slots>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Shop - searchstores', 'searchstores <uses>,<effect>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Atcommand - enable_command', 'enable_command;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Atcommand - disable_command', 'disable_command;', '',3);
--4,1.- End of item-related commands


INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player/Storage - openstorage', 'openstorage;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mail - openmail', 'openmail({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Auction - openauction', 'openauction({<char_id>});', '',3);


--4,2.- Guild-related commands
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - guildopenstorage', 'guildopenstorage()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - guildchangegm', 'guildchangegm(<guild id>,<new master''s name>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - guildgetexp', 'guildgetexp <amount>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - guildskill', 'guildskill <skill id>,<level>', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - guildskill', 'guildskill "<skill name>",<level>', '',3);
--4,2 End of guild-related commands.


INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - resetlvl', 'resetlvl <action type>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - resetstatus', 'resetstatus({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Skill/Player - resetskill', 'resetskill({<char_id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect/Status - sc_start', 'sc_start 	<effect type>,<ticks>,<value 1>{,<rate>,<flag>{,<GID>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect/Status - sc_start2', 'sc_start2 	<effect type>,<ticks>,<value 1>,<value 2>{,<rate>,<flag>{,<GID>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect/Status - sc_start4', 'sc_start4 	<effect type>,<ticks>,<value 1>,<value 2>,<value 3>,<value 4>{,<rate>,<flag>{,<GID>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect/Status - sc_end', 'sc_end 	<effect type>{,<GID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect/Status - getstatus', 'getstatus(<effect type>{,<type>{,<char_id>}})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Effect - skilleffect', 'skilleffect <skill id>,<number>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Effect - skilleffect', 'skilleffect "<skill name>",<number>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Effect - npcskilleffect', 'npcskilleffect <skill id>,<number>,<x>,<y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Effect - npcskilleffect', 'npcskilleffect "<skill name>",<number>,<x>,<y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Effect - specialeffect', 'specialeffect <effect number>{,<send_target>{,"<NPC Name>"}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Effect - specialeffect2', 'specialeffect2 <effect number>{,<send_target>{,"<Player Name>"}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Status - statusup', 'statusup <stat>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Status - statusup2', 'statusup2 <stat>,<amount>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - bonus', 'bonus <bonus type>,<val1>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - bonus2', 'bonus2 <bonus type>,<val1>,<val2>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - bonus3', 'bonus3 <bonus type>,<val1>,<val2>,<val3>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - bonus4', 'bonus4 <bonus type>,<val1>,<val2>,<val3>,<val4>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - bonus5', 'bonus5 <bonus type>,<val1>,<val2>,<val3>,<val4>,<val5>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - autobonus', 'autobonus <bonus script>,<rate>,<duration>{,<flag>,{<other script>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - autobonus2', 'autobonus2 <bonus script>,<rate>,<duration>{,<flag>,{<other script>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - autobonus3', 'autobonus3 <bonus script>,<rate>,<duration>,<skill id>,{<other script>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - autobonus3', 'autobonus3 <bonus script>,<rate>,<duration>,"<skill name>",{<other script>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - bonus_script', 'bonus_script "<script code>",<duration>{,<flag>{,<type>{,<status_icon>{,<char_id>}}}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - bonus_script_clear', 'bonus_script_clear {<flag>,{<char_id>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Skill/Player - skill', 'skill <skill id>,<level>{,<flag>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Skill/Player - skill', 'skill "<skill name>",<level>{,<flag>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Skill/Player - addtoskill', 'addtoskill <skill id>,<level>{,<flag>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Skill/Player - addtoskill', 'addtoskill "<skill name>",<level>{,<flag>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - nude', 'nude {<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - sit', 'sit {"<character name>"};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - stand', 'stand {"<character name>"};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - disguise', 'disguise <Monster ID>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - undisguise', 'undisguise {<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - transform', 'transform <monster ID>,<duration>,<sc type>{,<val1>,<val2>,<val3>,<val4>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Effect - transform', 'transform "<monster name>",<duration>,<sc type>{,<val1>,<val2>,<val3>,<val4>};', '',3);


--4,3 Marriage-related commands
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - marriage', 'marriage("<spouse name>");', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - wedding', 'wedding;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - divorce', 'divorce({<char_id>})', '',3);
--4,3.- End of marriage-related commands


INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - pcfollow', 'pcfollow <id>,<target id>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - pcstopfollow', 'pcstopfollow <id>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - pcblockmove', 'pcblockmove <id>,<option>;', '',3);


----------------------------------
-- 5.- Mob / NPC -related commands
----------------------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - monster', 'monster     "<map name>",<x>,<y>,"<name to show>",<mob id>,<amount>{,"<event label>",<size>,<ai>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - areamonster', 'areamonster "<map name>",<x1>,<y1>,<x2>,<y2>,"<name to show>",<mob id>,<amount>{,"<event label>",<size>,<ai>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - areamobuseskill', 'areamobuseskill "<map name>",<x>,<y>,<range>,<mob id>,<skill id>,<skill level>,<cast time>,<cancelable>,<emotion>,<target type>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - areamobuseskill', 'areamobuseskill "<map name>",<x>,<y>,<range>,<mob id>,"<skill name>",<skill level>,<cast time>,<cancelable>,<emotion>,<target type>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - killmonster', 'killmonster "<map name>","<event label>"{,<type>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - killmonsterall', 'killmonsterall "<map name>"{,<type>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - strmobinfo', 'strmobinfo(<type>,<monster id>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - mobcount', 'mobcount("<map name>","<event label>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - clone', 'clone "<map name>",<x>,<y>,"<event>",<char id>{,<master_id>{,<mode>{,<flag>,<duration>}}}', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - summon', 'summon "monster name",<monster id>{,<Time Out>{,"event label"}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - addmonsterdrop', 'addmonsterdrop <monster id>,<item id>,<rate>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - addmonsterdrop', 'addmonsterdrop "<monster name>",<item id>,<rate>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - delmonsterdrop', 'delmonsterdrop <monster id>,<item id>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mob - delmonsterdrop', 'delmonsterdrop "<monster name>",<item id>;', '',3);


INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - disablenpc', 'disablenpc "<NPC object name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - enablenpc', 'enablenpc "<NPC object name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - hideonnpc', 'hideonnpc "<NPC object name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - hideoffnpc', 'hideoffnpc "<NPC object name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - doevent', 'doevent "<NPC object name>::<event label>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - donpcevent', 'donpcevent "<NPC object name>::<event label>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - cmdothernpc', 'cmdothernpc "<npc name>","<command>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - npctalk', 'npctalk "<message>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - setnpcdisplay', 'setnpcdisplay("<npc name>", "<display name>", <class id>, <size>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - setnpcdisplay', 'setnpcdisplay("<npc name>", "<display name>", <class id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - setnpcdisplay', 'setnpcdisplay("<npc name>", "<display name>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - setnpcdisplay', 'setnpcdisplay("<npc name>", <class id>)', '',3);


--5,1.- Time-related commands
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - addtimer', 'addtimer <ticks>,"NPC::OnLabel";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - deltimer', 'deltimer "NPC::OnLabel";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - addtimercount', 'addtimercount <ticks>,"NPC::OnLabel";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - initnpctimer', 'initnpctimer{ "<NPC name>" {, <Attach Flag>} } | { "<NPC name>" | <Attach Flag> };', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - stopnpctimer', 'stopnpctimer{ "<NPC name>" {, <Detach Flag>}  } | { "<NPC name>" | <Detach Flag> };', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - startnpctimer', 'startnpctimer{ "<NPC name>" {, <Attach Flag>} } | { "<NPC name>" | <Attach Flag> };', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - setnpctimer', 'setnpctimer <tick>{,"<NPC name>"};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - getnpctimer', 'getnpctimer(<type of information>{,"<NPC name>"})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - attachnpctimer', 'attachnpctimer {"<character name>"};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - detachnpctimer', 'detachnpctimer {"<NPC name>"};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - sleep', 'sleep <milliseconds>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - sleep2', 'sleep2 <milliseconds>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - awake', 'awake "<NPC name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Timer - progressbar', 'progressbar "<color>",<seconds>;', '',3);
--5,1.- End of time-related commands


INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Messaging - announce', 'announce "<text>",<flag>{,<fontColor>{,<fontType>{,<fontSize>{,<fontAlign>{,<fontY>}}}}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Messaging - mapannounce', 'mapannounce "<map name>","<text>",<flag>{,<fontColor>{,<fontType>{,<fontSize>{,<fontAlign>{,<fontY>}}}}}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Messaging - areaannounce', 'areaannounce "<map name>",<x1>,<y1>,<x2>,<y2>,"<text>",<flag>{,<fontColor>{,<fontType>{,<fontSize>{,<fontAlign>{,<fontY>}}}}}};', '',3);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Shop - callshop', 'callshop "<name>",<option>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Shop - npcshopitem', 'npcshopitem "<name>",<item id>,<price>{,<item id>,<price>{,<item id>,<price>{,...}}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Shop - npcshopadditem', 'npcshopadditem "<name>",<item id>,<price>{,<item id>,<price>{,<item id>,<price>{,...}}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Shop - npcshopdelitem', 'npcshopdelitem "<name>",<item id>{,<item id>{,<item id>{,...}}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Shop - npcshopattach', 'npcshopattach "<name>"{,<flag>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Shop - npcshopupdate', 'npcshopupdate "<name>",<item_id>,<price>{,<stock>}', '',3);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Chatroom - waitingroom', 'waitingroom "<chatroom name>",<limit>{,"<event label>"{,<trigger>{,<required zeny>{,<min lvl>{,<max lvl>}}}}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Chatroom - delwaitingroom', 'delwaitingroom {"<NPC object name"};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Chatroom - enablewaitingroomevent', 'enablewaitingroomevent {"<NPC object name>"};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Chatroom - disablewaitingroomevent', 'disablewaitingroomevent {"<NPC object name>"};', '',3);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Battle - enablearena', 'enablearena;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Battle - disablearena', 'disablearena;', '',3);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Chatroom - getwaitingroomstate', 'getwaitingroomstate(<information type>{,"<NPC object name>"})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Chatroom - warpwaitingpc', 'warpwaitingpc "<map name>",<x>,<y>{,<number of people>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Chatroom - kickwaitingroomall', 'kickwaitingroomall {"<NPC object name>"};', '',3);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mapflag - setmapflagnosave', 'setmapflagnosave "<map name>","<alternate map name>",<x>,<y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mapflag - setmapflag', 'setmapflag "<map name>",<flag>{,<zone>{,<type>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mapflag - removemapflag', 'removemapflag "<map name>",<flag>{,<zone>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mapflag - getmapflag', 'getmapflag("<map name>",<flag>{,<type>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mapflag - setbattleflag', 'setbattleflag "<battle flag>",<value>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mapflag - getbattleflag', 'getbattleflag("<battle flag>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Warp - warpportal', 'warpportal <source x>,<source y>,"<map name>",<target x>,<target y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Warp - mapwarp', 'mapwarp "<from map>","<to map>",<x>,<y>{,<type>,<ID>};', '',3);


--5,2.- Guild-related commands
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - maprespawnguildid', 'maprespawnguildid "<map name>",<guild id>,<flag>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild/WOE - agitstart', 'npcstop;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild/WOE - agitstart2', 'npcstop;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild/WOE - agitend', 'npcstop;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild/WOE - agitend2', 'npcstop;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - gvgon', 'gvgon "<map name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - gvgoff', 'gvgoff "<map name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - flagemblem', 'flagemblem <guild id>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - guardian', 'guardian "<map name>",<x>,<y>,"<name to show>",<mob id>{,"<event label>"{,<guardian index>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Guild - guardianinfo', 'guardianinfo("<map name>", <guardian number>, <type>);', '',3);
--5,2.- End of guild-related commands

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - npcspeed', 'npcspeed <speed value>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - npcwalkto', 'npcwalkto <x>,<y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - npcstop', 'npcstop;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'NPC - movenpc', 'movenpc "<NPC name>",<x>,<y>{,<dir>};', '',3);

-----------------------
-- 6.- Other commands
-----------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Messaging - debugmes', 'debugmes "<message>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Messaging - logmes', 'logmes "<message>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Messaging - globalmes', 'globalmes "<message>"{,"<NPC name>"};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Math - rand', 'rand(<number>{,<number>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - viewpoint', 'viewpoint <action>,<x>,<y>,<point number>,<color>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - cutin', 'cutin "<filename>",<position>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - emotion', 'emotion <emotion number>{,<target>{,"<target name>"}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - misceffect', 'misceffect <effect number>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - soundeffect', 'soundeffect "<effect filename>",<type>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - soundeffectall', 'soundeffectall "<effect filename>",<type>{,"<map name>"}{,<x0>,<y0>,<x1>,<y1>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - playBGM', 'playBGM "<BGM filename>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - playBGMall', 'playBGMall "<BGM filename>"{,"<map name>"{,<x0>,<y0>,<x1>,<y1>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Battle - pvpon', 'pvpon "<map name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env/Battle - pvpoff', 'pvpoff "<map name>";', '',3);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Atcommand - atcommand', 'atcommand "<command>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Atcommand - charcommand', 'charcommand "<command>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Atcommand - bindatcmd', 'bindatcmd "<command>","<NPC object name>::<event label>"{,<atcommand level>,<charcommand level>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Atcommand - unbindatcmd', 'unbindatcmd "<command>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Atcommand - useatcmd', 'useatcmd "<command>";', '',3);

--6,1.- Unit-related commands
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitwalk', 'unitwalk <GID>,<x>,<y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitwalk', 'unitwalk <GID>,<Target ID>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitattack', 'unitattack <GID>,<Target ID>{,<action type>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitattack', 'unitattack <GID>,"<Target Name>"{,<action type>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitkill', 'unitkill <GID>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitwarp', 'unitwarp <GID>,"<map name>",<x>,<y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitstopattack', 'unitstopattack <GID>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitstopwalk', 'unitstopwalk <GID>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitemote', 'unitemote <GID>,<emotion number>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitskilluseid', 'unitskilluseid <GID>,<skill id>,<skill lvl>{,<target id>,<casttime>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitskilluseid', 'unitskilluseid <GID>,"<skill name>",<skill lvl>{,<target id>,<casttime>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitskillusepos', 'unitskillusepos <GID>,<skill id>,<skill lvl>,<x>,<y>{,<casttime>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - unitskillusepos', 'unitskillusepos <GID>,"<skill name>",<skill lvl>,<x>,<y>{,<casttime>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - getunitname', 'getunitname <GID>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - setunitname', 'setunitname <GID>,"<new name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - getunitdata', 'getunitdata <GID>,<arrayname>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Unit - setunitdata', 'setunitdata <GID>,<parameter>,<new value>;', '',3);
--6,1.- End of unit-related commands


INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Skill/NPC - npcskill', 'npcskill <skill id>,<skill lvl>,<stat point>,<NPC level>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Skill/NPC - npcskill', 'npcskill "<skill name>",<skill lvl>,<stat point>,<NPC level>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Environment - day', 'day;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Environment - night', 'night;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String/RegEx - defpattern', 'defpattern <set number>,"<regular expression pattern>","<event label>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String/RegEx - activatepset', 'activatepset <set number>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String/RegEx - deactivatepset', 'deactivatepset <set number>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String/RegEx - deletepset', 'deletepset <set number>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Math - pow', 'pow(<number>,<power>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Math - sqrt', 'sqrt(<number>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Math - distance', 'distance(<x0>,<y0>,<x1>,<y1>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - md5', 'md5("<string>")', '',3);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - setiteminfo', 'setiteminfo(<item id>,<type>,<value>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Item - setitemscript', 'setitemscript(<item id>,<"{ new item script }">{,<type>});', '',3);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - atoi', 'atoi("<string>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - axtoi', 'axtoi("<string>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - strtol', 'strtol("<string>", base)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - compare', 'compare("<string>","<substring>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - strcmp', 'strcmp("<string>","<string>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - getstrlen', 'getstrlen("<string>")', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - charisalpha', 'charisalpha("<string>",<position>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - charat', 'charat(<string>,<index>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - setchar', 'setchar(<string>,<char>,<index>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - insertchar', 'insertchar(<string>,<char>,<index>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - delchar', 'delchar(<string>,<index>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - strtoupper', 'strtoupper(<string>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - strtolower', 'strtolower(<string>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - charisupper', 'charisupper(<string>,<index>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - charislower', 'charislower(<string>,<index>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - substr', 'substr(<string>,<start_index>,<end_index>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - explode', 'explode(<dest_array>,<string>,<delimiter>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - implode', 'implode(<string_array>{,<glue>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - sprintf', 'sprintf(<format>[,param[,param[,...]]])', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - sscanf', 'sscanf(<string>,<format>[,param[,param[,...]]])', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - strpos', 'strpos(<haystack>,<needle>{,<offset>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - replacestr', 'replacestr(<input>, <search>, <replace>{, <usecase>{, <count>}})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - countstr', 'countstr(<input>, <search>{, <usecase>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'String - preg_match', 'preg_match(<regular expression pattern>,<string>{,<offset>})', '',3);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Player - setfont', 'setfont <font>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - showdigit', 'showdigit <value>{,<type>};', '',3);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Environment - setcell', 'setcell "<map name>",<x1>,<y1>,<x2>,<y2>,<type>,<flag>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Environment - checkcell', 'checkcell ("<map name>",<x>,<y>,<type>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Environment - setwall', 'setwall "<map name>",<x>,<y>,<size>,<dir>,<shootable>,"<name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Environment - delwall', 'delwall "<name>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Env - readbook', 'readbook <book id>,<page>;', '',3);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'SQL - query_sql', 'query_sql("your MySQL query"{, <array variable>{, <array variable>{, ...}}});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'SQL - query_logsql', 'query_logsql("your MySQL query"{, <array variable>{, <array variable>{, ...}}});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'SQL - escape_sql', 'escape_sql(<value>)', '',3);

------------------------
-- 7.- Instance commands
------------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Instance - instance_create', 'instance_create("<instance name>");', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Instance - instance_destroy', 'instance_destroy {<instance id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Instance - instance_enter', 'instance_enter("<instance name>"{,<x>,<y>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Instance - instance_npcname', 'instance_npcname("<npc name>"{,<instance id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Instance - instance_mapname', 'instance_mapname("<map name>"{,<instance id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Instance - instance_id', 'instance_id()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Instance - instance_warpall', 'instance_warpall "<map name>",<x>,<y>{,<instance id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Instance - instance_announce', 'instance_announce <instance id>,"<text>",<flag>{,<fontColor>{,<fontType>{,<fontSize>{,<fontAlign>{,<fontY>}}}}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Instance - instance_check_party', 'instance_check_party(<party id>{,<amount>{,<min>{,<max>}}})', '',3);

---------------------------
-- 8.- Quest Log commands
---------------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Quest - questinfo', 'questinfo <Quest ID>,<Icon>{,<Map Mark Color>{,<Job Class>}};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Quest - setquest', 'setquest <ID>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Quest - completequest', 'completequest <ID>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Quest - erasequest', 'erasequest <ID>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Quest - changequest', 'changequest <ID>,<ID2>{,<char_id>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Quest - checkquest', 'checkquest(<ID>{,PLAYTIME|HUNTING{,<char_id>}})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Quest - isbegin_quest', 'isbegin_quest(<ID>{,<char_id>})', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Quest - showevent', 'showevent <icon>{,<mark color>{,<char_id>}}', '',3);

----------------------------
-- 9.- Battleground commands
----------------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - waitingroom2bg_single', 'waitingroom2bg_single(<battle group>,"<map name>",<x>,<y>,"<npc name>");', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - waitingroom2bg', 'waitingroom2bg("<map name>",<x>,<y>,"<On Quit Event>","<On Death Event>"{,"<NPC Name>"});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - bg_team_setxy', 'bg_team_setxy <Battle Group ID>,<x>,<y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - bg_warp', 'bg_warp <Battle Group>,"<map name>",<x>,<y>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - bg_monster', 'bg_monster <Battle Group>,"<map name>",<x>,<y>,"<name to show>",<mob id>,"<event label>";', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - bg_monster', 'bg_monster(<Battle Group>,"<map name>",<x>,<y>,"<name to show>",<mob id>,"<event label>");', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - bg_monster_set_team', 'bg_monster_set_team <GID>,<Battle Group>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - bg_leave', 'bg_leave;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - bg_destroy', 'bg_destroy <Batte Group>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - areapercentheal', 'areapercentheal "<map name>",<x1>,<y1>,<x2>,<y2>,<hp>,<sp>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - bg_get_data', 'bg_get_data(<Battle Group>,<type>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - bg_getareausers', 'bg_getareausers(<Battle Group>,"<map name>",<x0>,<y0>,<x1>,<y1>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'BG - bg_updatescore', 'bg_updatescore "<map name>",<Guillaume Score>,<Croix Score>;', '',3);


--------------------
-- 10.- Pet commands
--------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet - bpet', 'bpet;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet - pet', 'pet <pet id>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet - makepet', 'makepet <pet id>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet - getpetinfo', 'getpetinfo(<type>)', '',3);

-------------------------------
-- 10.1.- The Pet AI commands
-------------------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet AI - petskillbonus', 'petskillbonus <bonus type>,<value>,<duration>,<delay>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet AI - petrecovery', 'petrecovery <status type>,<delay>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet AI - petloot', 'petloot <max items>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet AI - petskillsupport', 'petskillsupport <skill id>,<skill level>,<delay>,<percent hp>,<percent sp>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet AI - petskillsupport', 'petskillsupport "<skill name>",<skill level>,<delay>,<percent hp>,<percent sp>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet AI - petheal', 'petheal <level>,<delay>,<percent hp>,<percent sp>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet AI - petskillattack', 'petskillattack <skill id>,<skill level>,<rate>,<bonusrate>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet AI - petskillattack', 'petskillattack "<skill name>",<skill level>,<rate>,<bonusrate>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet AI - petskillattack2', 'petskillattack2 <skill id>,<damage>,<number of attacks>,<rate>,<bonusrate>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Pet AI - petskillattack2', 'petskillattack2 "<skill name>",<damage>,<number of attacks>,<rate>,<bonusrate>;', '',3);

-----------------------------
-- 11.- Homunculus commands
-----------------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Homun - homevolution', 'homevolution;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Homun - morphembryo', 'morphembryo;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Homun - hommutate', 'hommutate {<ID>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Homun - checkhomcall', 'checkhomcall()', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Homun - gethominfo', 'gethominfo(<type>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Homun - homshuffle', 'homshuffle;', '',3);

--------------------------
-- 12.- Mercenary commands
--------------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mercenary - mercenary_create', 'mercenary_create <class>,<contract time>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mercenary - mercenary_heal', 'mercenary_heal <hp>,<sp>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mercenary - mercenary_sc_start', 'mercenary_sc_start <type>,<tick>,<val1>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mercenary - mercenary_get_calls', 'mercenary_get_calls(<guild>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mercenary - mercenary_set_calls', 'mercenary_set_calls <guild>,<value>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mercenary - mercenary_get_faith', 'mercenary_get_faith(<guild>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mercenary - mercenary_set_faith', 'mercenary_set_faith <guild>,<value>;', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Mercenary - getmercinfo', 'getmercinfo(<type>{,<char id>});', '',3);

----------------------
-- 13.- Party commands
----------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Party - getpartyname', 'getpartyname(<party id>)', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Party - getpartymember', 'getpartymember <party id>{,<type>};', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Party - getpartyleader', 'getpartyleader(<party id>{,<type>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Party - party_create', 'party_create("<party name>"{,<character id>{,<item share>,<item share type>}});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Party - party_destroy', 'party_destroy(<party id>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Party - party_addmember', 'party_addmember(<party id>,<character id>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Party - party_delmember', 'party_delmember({<character id>,<party id>});', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Party - party_changeleader', 'party_changeleader(<party id>,<character id>);', '',3);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Party - party_changeoption', 'party_changeoption(<party id>,<option>,<flag>);', '',3);


----------------------------------------------------
-- Template records.
----------------------------------------------------
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Shop - shop (floating)', '-	shop	<NPC Name>	<sprite id>,<itemid>:<price>{,<itemid>:<price>...}', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Shop - shop', '<map name>,<x>,<y>,<facing>	shop	<NPC Name>	<sprite id>,<itemid>:<price>{,<itemid>:<price>...}', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Shop - cashshop (floating)', '-	cashshop	<NPC Name>	<sprite id>,<itemid>:<price>{,<itemid>:<price>...}', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Shop - cashshop', '<map name>,<x>,<y>,<facing>	cashshop	<NPC Name>	<sprite id>,<itemid>:<price>{,<itemid>:<price>...}', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Shop - itemshop (floating)', '-	itemshop	<NPC Name>	<sprite id>,<costitemid>{:<discount>},<itemid>:<price>{,<itemid>:<price>...}', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Shop - itemshop', '<map name>,<x>,<y>,<facing>	itemshop	<NPC Name>	<sprite id>,<costitemid>{:<discount>},<itemid>:<price>{,<itemid>:<price>...}', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Shop - pointshop (floating)', '-	pointshop	<NPC Name>	<sprite id>,<costvariable>{:<discount>},<itemid>:<price>{,<itemid>:<price>...}', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Shop - pointshop', '<map name>,<x>,<y>,<facing>	pointshop	<NPC Name>	<sprite id>,<costvariable>{:<discount>},<itemid>:<price>{,<itemid>:<price>...}', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Shop - marketshop', '<map name>,<x>,<y>,<facing>	marketshop	<NPC Name>	<sprite id>,<itemid>:<price>:<quantity>{,<itemid>:<price>:<quantity>...}', '',0);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Duplicate - Warp', '<map name>,<x>,<y>,<facing>	duplicate(<label>)	<NPC Name>	<spanx>,<spany>', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Duplicate - Shop (floating)', '-	duplicate(<label>)	<NPC Name>	<sprite id>', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Duplicate - Shop', '<map name>,<x>,<y>,<facing>	duplicate(<label>)	<NPC Name>	<sprite id>', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Duplicate - NPC (floating)', '-	duplicate(<label>)	<NPC Name>	<sprite id>,<triggerX>,<triggerY>', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Duplicate - NPC', '<map name>,<x>,<y>,<facing>	duplicate(<label>)	<NPC Name>	<sprite id>,<triggerX>,<triggerY>', '',0);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl -  Mapflag', '<map name>	mapflag	<flag>', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl -  Monster Spawn', '<map name>,<x>,<y>,<xs>,<ys>	monster	<monster name>	<mob id>,<amount>,<delay1>,<delay2>,<event>{,<mob size>,<mob ai>}', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl -  Warp', '<from mapname>,<fromX>,<fromY>,<facing>	warp	<warp name>	<spanx>,<spany>,<to mapname>,<toX>,<toY>', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl -  NPC', '<map name>,<x>,<y>,<facing>	script	<NPC Name>	<sprite id>,{

	//<code>

}', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl -  NPC (with triggers)', '<map name>,<x>,<y>,<facing>	script	<NPC Name>	<sprite id>,<triggerX>,<triggerY>,{

	//<code>

}', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl -  NPC (floating)', '-	script	<NPC Name>	-1,,{

	//<code>

}', '',0);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl - Function', 'function	script	<function name>	{

	//<code>

}', '',0);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnClock', 'OnClock<hour><minute>:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnMinute', 'OnMinute<minute>:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnHour', 'OnHour<hour>:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnDayHourMin', 'On<weekday><hour><minute>:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnDay', 'OnDay<month><day>:

	//<code>

end;', '',0);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnInit', 'OnInit:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnInterIfInit', 'OnInterIfInit:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnInterIfInitOnce', 'OnInterIfInitOnce:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnInstanceInit', 'OnInstanceInit:

	//<code>

end;', '',0);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnAgitStart', 'OnAgitStart:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnAgitStart2', 'OnAgitStart2:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnAgitEnd', 'OnAgitEnd:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnAgitEnd2', 'OnAgitEnd2:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnAgitInit', 'OnAgitInit:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnAgitInit2', 'OnAgitInit2:

	//<code>

end;', '',0);

INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnTouch', 'OnTouch:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnTouch_', 'OnTouch_:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnTouchNPC', 'OnTouchNPC:

	//<code>

end;', '',0);


INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnPCLoginEvent', 'OnPCLoginEvent:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnPCLogoutEvent', 'OnPCLogoutEvent:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnPCBaseLvUpEvent', 'OnPCBaseLvUpEvent:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnPCJobLvUpEvent', 'OnPCJobLvUpEvent:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnPCDieEvent', 'OnPCDieEvent:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnPCKillEvent', 'OnPCKillEvent:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnNPCKillEvent', 'OnNPCKillEvent:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnPCLoadMapEvent', 'OnPCLoadMapEvent:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnPCStatCalcEvent', 'OnPCStatCalcEvent:

	//<code>

end;', '',0);
INSERT INTO Snippets(LibraryID, Name, BeforeSelection, AfterSelection, Sort) VALUES ((SELECT `LibraryID` FROM `_rAthenaLibID` LIMIT 1), 'Tmpl/Label - OnWhisperGlobal', 'OnWhisperGlobal:

	//<code>

end;', '',0);
----------------------------------------------------
-- End of script Commands records.
----------------------------------------------------
