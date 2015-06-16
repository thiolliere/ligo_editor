# ligo_editor

Welcome to the ligo editor.

the archive contain a basic example of user dungeon and a guide to create your own step by step.

# guide

## extraction

download the zip file, extract it and move all the file inside into your user directory.

    Windows XP: C:\Documents and Settings\user\Application Data\LOVE\ or %appdata%\LOVE\ligo
    Windows Vista and 7: C:\Users\user\AppData\Roaming\LOVE or %appdata%\LOVE\ligo
    Linux: $XDG_DATA_HOME/love/ or ~/.local/share/love/ligo
    Mac: /Users/user/Library/Application Support/LOVE/ligo

if ligo directory doesn't exist create it.

## dungeon

There is in the dungeon directory an example of dungeon. To create another dungeon just copy it into sthg.dungeon.lua and change the element ( { ... }, )
for example change userMap.lua into demo.lua and userMusic.ogg into demo.ogg.

Now we have to create demo.ogg in the sound directory and demo.lua in the map directory.

## sound

Just create the file demo.ogg in the directory sound. Other extension are also possible like mp3... But it's not patent free.

## map

To generate a map you will use tiled. So install it and launch it.

open a new project, the map must be orthogonal, I think a good size is 200x200 but maybe more is possible, try it yourself.

now you have an empy map, save it into demo.tmx and export it in lua into demo.lua in the map directory.

first import the tileste with terrain that is terrain.tsx.
and then import the other.

if you want to create other tileset they must be in map directory and their image too.

create a new tile layer named floor. Fill it in the floor use terrain tool to create wall. floor is a graphical layer, to make the wall physical use the automapping. 

now let's create object. create a new tile layer named object. Object and wall layer are similar. I use different layer because when I want to modify the floor, I just remove the wall layer, modify the floor and automap.

the character tileset contain some mandatory tile. Put into the object layer the tile int and link whereever you want. and also both character tile (tile with property name=character) at the place you want them to spawn. The fin tile is the end, it pass to the next element in the dungeon.

you must be able to have a functional map now. Try it.

to add other object see other tileset. there are many types (name property) of object : arrow, arrowslit, generator, redmonster, pike. Only redmonster, pike arrowslit and generator can be created directly (by put it in the object layer), arrow will crash.

let's see tileset one by one :

* allout : object are on the second line each allout shoot the bullet at the top of them. I don't there are differences yet, to make one import the tileset, modify property with the specification in the readme of ligo in github or in thiolliere.org/ligo. And export it if you want.

* arrowslit object are on the second to the fith line, the first line shoot the first bullet which have 0.5 velocity the second line the second bullet etc... in a line the first arrowslit shoot at right the second down, the third left and the fourth up.

* fireeater : line 2-4, column 1-4. column 1-2 -> first bullet; columc 3-4 second one. the colume 1 and 3 in clockwise direction.

* pitcher : lines 2, column 1-5; each pitcher shoot the bullet at the top of them.

It's all, hope you'll create some.

[A video showing an execution of this guide](www.thiolliere.org/ligo/demo_editor.avi)
