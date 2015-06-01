-- this is a comment

return {					-- lua code  for a table
	name="tutorial",			-- name that appear in the menu
	current=0,				-- don't touch it or assume your responsability
	{					-- here begin the first element
		type="picture",			-- the type can be "picture" or "level"
		image="sing.jpg",		-- a picture can have an image stored in the image directory
		music="picture.ogg"		-- a song stored in the sound directory
	},
	{
		type="picture",			-- also a picture element
		text="your dungeon\n..."	-- you can also make a text that appear at the center of screen
	},
	{
		type="level",			-- second type : "level", 
		map="tutorial_1.lua",		-- a map in the map directory
		music="Sideways.mp3",		-- a music
		timecoef=1,			-- you can modify the time
		charactervelocity=10		-- also the character velocity
	},
	{
		type="picture" 			-- all element can be "level" or "picture"
	}
}
