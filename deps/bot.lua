local discordia = require('discordia')
local client = discordia.Client()
local prefix = ">"

client:on('ready', function()
	print("------------------")
	print("Bot starting up...")
    print("Made by Johnathan Eilers.")
    print("------------------")
    print(" ")
    print("Logged in as user '" .. client.user.username .. "'")
    print("Bot successfully started.")
    client:setGameName("zelotex.us | ".. prefix .."help")
    local botspam = client:getChannel('285931846112509953')
	botspam:sendMessage {
  		embed = {
    		title = "Message from **ZELO** \n ",
    		fields = {
      		{name = ":wave: *Introduction* :wave:", value = "Heyo! I'm **ZELO**, you're brand new personalized bot! I'm pretty useful, and i'm friendly, so feel free to talk to me! (Yes, I have the mental capacity to talk back.) I may not give the best answers, but hey, it's something, right!? Anyways, you can also do **".. prefix .."help** to see what commands I have to offer. The current chat prefix is **'".. prefix .."'**. Enjoy my presence!", inline = true},
    	},
    	color = discordia.Color(17, 0, 125).value,
  		}
	}
end)

client:on('messageCreate', function(message)
------------------------------------------------------------------------------------------
	-- Music Commands
    if message.content == prefix .. "play" then
        message.channel:sendMessage(":fire: This feature is disabled! :fire:")
        print("Command "..prefix.."play command registered.")
    end
    
    if message.content == prefix .. "stop" then
        message.channel:sendMessage(":fire: This feature is disabled! :fire:")
        print("Command "..prefix.."play command registered.")
    end
    
    if message.content == prefix .. "pause" then
		message.channel:sendMessage(":fire: This feature is disabled! :fire:")
		print("Command "..prefix.."pause command registered.")
	end
    -- End Music Commands
------------------------------------------------------------------------------------------
    -- Core Commands
    if message.content == prefix.."help" then
		 message.channel:sendMessage {
  			embed = {
    		title = ":gear: Zelotex Command List :gear:",
    		fields = {
    		{name = ":grey_question: **Information** :grey_question:", value = "This is the help menu for **ZELO**. All commands with the prefix of '**".. prefix .."**' can be used by anyone, while a prefix of '.' is restricted to admins. For example, **".. prefix .."help** can be run by anybody, while **.die** can only be run by an admin.", inline = true},
      		{name = ":gear: **Core Commands/Utilities** :gear:", value = "**".. prefix .."help** - Shows this command list. \n**".. prefix .."serverstatus** - Shows the current status of the Minecraft server. \n**.die** - Forcefully kills the bot dead.", inline = true},
      		{name = ":fire: **Music** :fire: ", value = "**".. prefix .."play** <YouTube link> - Plays the song provided. Can also search for songs. \n**".. prefix .."stop** - Stops the currently playing music. \n**".. prefix .."pause** - Pauses the music. **.play** can be used to resume.", inline = true},
    		{name = ":video_game: **Fun and Games** :video_game:", value = "**".. prefix .."rps** - Play a game of Rock, Paper, Scissors agains the bot! \n**".. prefix .."rtd** - Rolls a virtual 6 sided dice. \n**".. prefix .."truth** - Comes up with a random TRUTH question for Truth or Dare! \n**".. prefix .."dare** - Comes up with a random DARE for Truth or Dare!"}
    		},
    		color = discordia.Color(17, 0, 125).value,
  			}
		 }
    end
    
    if message.content == prefix .. "serverstatus" then
		message.channel:sendMessage(":gear: This feature is disabled! :gear:")
		print("Command "..prefix.."serverstats command registered.")
	end
------------------------------------------------------------------------------------------
	-- Shutdown Command	
	if message.content == ".die" then
		message.channel:sendMessage(":skull: Shutting down... :skull: ")
		print("Shutting bot down...")
		message.channel:mentionString("u got rekt")
	end
------------------------------------------------------------------------------------------
	-- Fun & Games Commands
	if message.content == prefix .. "rps" then
        message.channel:sendMessage(":video_game: This feature is disabled! :video_game:")
        print("Command "..prefix.."rps command registered.")
    end
    
    if message.content == prefix .. "rtd" then
        message.channel:sendMessage(":video_game: This feature is disabled! :video_game:")
        print("Command "..prefix.."rtd command registered.")
    end
    
    if message.content == prefix .. "truth" then
        message.channel:sendMessage(":video_game: This feature is disabled! :video_game:")
        print("Command "..prefix.."truth command registered.")
    end
    
    if message.content == prefix .. "dare" then
        message.channel:sendMessage(":video_game: This feature is disabled! :video_game:")
        print("Command "..prefix.."dare command registered.")
    end
------------------------------------------------------------------------------------------	
end)

client:run('MjkxMzUwOTMxODU1OTAwNjgy.C6oNNg.SpkTmWptcwd58IZ_8Ge_c8wzEjM')