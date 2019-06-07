"RYAN QUEST" by Maxwell Joslyn

Use scoring. Use American dialect. Use brief room descriptions.

The maximum score is 10.

The story genre is "Surreal".

The story description is "As game-design student Ryan Wright, you must navigate the curious city of Copenhagen while avoiding its perils and becoming its Casanova."

The story headline is "A Thoroughly Accurate Simulation".

The story creation year is 2018.

Release along with the introductory postcard and cover art ("A photo of the protagonist.").

The release number is 2.

Release along with an interpreter.

Book 1 - Procedure

Figure of Ryan is the file "Medium Cover.png".

Sound of eagle is the file "Short-Screech.ogg".

Part 1 - Grabbing

Understand "grab [something]" as taking.

Part 2 - Printing Directions

Understand the command "directions" as something new.

Directions is an action applying to nothing. Understand "directions" or "dirs" or "ways" as directions.

Check directions:
	do nothing.

Carry out directions:
	do nothing.

Report directions:
	if the location is the island:
		say "From here you can ride the eagle to return to the mainland.";
	else:
		repeat with that way running through directions:
			if the room that way from the location is a room:
				now that way is marked for listing;
		say "From here you can:";
		say line break;
		repeat with that way running through directions:
			if that way is marked for listing:
				let Q be the room that way from the location;
				say "- go [bold type][that way][roman type] to [the Q]";
				say line break;
		if the location is the path and the eagle is in the location:
			say "- ride the eagle to go to the island.";
			say line break;
		if the location is the train platform:
			say "- ride the C-Train to go to Copenhagen Metro Station.";
			say line break;
		if the location is the metro station:
			say "- ride the C-Train to go to the Hellerup Train Platform.";
			say line break;
		now every direction is not marked for listing.

Part 3 - Goto Room

Understand "travel [any room]" or "travel to [any room]" or "go [any room]" or "go to [any room]" as a mistake ("Unfortunately, you must travel room-by-room. The implementation of commands to directly travel to a known room caused bugs with plot event timing, and this game was hard enough to get working as it is.")

[
[It was good that I tried this out, but the fact that the player gets moved from one room to another instantly (and without any of the normal restraints on movement) can cause problems - for example, going inside the belly of the tree without being high, or traveling to the island without riding the eagle. Thus, I will not put these commands in the game.]

Understand the command "travel" as something new.

Traveling is an action applying to one thing. Understand "travel [any room]" or "travel to [any room]" or "go [any room]" or "go to [any room]" as traveling.

Check traveling:
	if the noun is not visited, say "You can only fast-travel to places you've already been." instead;
	if the noun is limbo, say "'Limbo' is not part of the game world." instead;
	if the noun is the fake tree, try traveling the belly of the tree instead; [bad]
	if the noun is not a room, say "Use 'travel' or 'go to' with the name of a room." instead.

Carry out traveling:
	say "You go to [the noun].";
	now the player is in the noun.

Report traveling:
	do nothing.]


Part 4 - Money

Price is a kind of value. 10 kroner specifies a price. A thing has a price. The price of a thing is usually 0 kroner. After examining something for sale which is not the money, say "It costs [the price of the noun]."

Definition: a thing is free if the price of it is 0 kroner.
Definition: a thing is for sale if it is not free.

Instead of taking something for sale which is not the money:
	say "That costs money."

Before buying something for sale when the player does not enclose the money:
	say "You don't have any money." instead.
	
Before buying something for sale when the money is free:
	say "You don't have any money." instead.
	
Before buying something for sale when the price of the money is less than the price of the noun:
	say "You don't have enough money for [the noun]." instead.
	
Instead of buying something:
	decrease the price of the money by the price of the noun;
	say "You pay [the price of the noun] for [the noun], leaving yourself with [the price of the money].";
	if the money is free:
		now the money is in Limbo;
	now the price of the noun is 0 kroner;
	now the player is carrying the noun.


The player carries a wallet. The description of the wallet is "You picked this bad boy up in Italy. It's a genuine Silvatorio Mossaganezza." The wallet contains money. The price of the money is 2 kroner. The printed name of the money is "money totalling [if the price of the money is 1 kroner]1 krone[else][price of the money][end if]". Understand "cash" or "dosh" as the money. The description of the money is "[The price of the money] will go further than you expect.".

The wallet contains 1 Uncle Sam. The description of the Uncle Sam is "The hardest currency on Earth."

After examining the Uncle Sam for the first time:
	say "A single tear leaks out as you contemplate the majesty of the USD.".

Definition: a person is other if it is not the player.

Instead of buying something free:
	say "That doesn't cost any money.";
	try silently taking the noun.

Instead of buying the money:
	say "The money belongs to you, and you buy things with it."

Instead of taking the money when the player does not enclose the money:
	now the money is in the wallet;
	say "Taken."

Instead of dropping the money:
	say "What are you, a commie drongo? Hang onto that cash!"
	
Part 5 - Getting Help

Table of Commands
Command	Short form	Description
"look"	"l" 	"On its own, describes your immediate surroundings ('l'). For detailed descriptions, specify a direct object ('look backpack')."
"take" 	"N/A" 	"Picks something up."
"inventory"	"i"	"Shows what you're carrying."
"dirs"	"N/A"	"Lists the directions you can go from here."
"ask [italic type]someone[roman type] about/for [italic type]something[roman type]"	"N/A"	"Ask someone if they can tell you about somthing / ask someone to give you something."
"undo"	"N/A"	"Undoes a mistaken action. I won't punish you for making a typo!"
"credits"	"N/A"	"Shows a list of people involved with making the game!"



Asking for help is an action out of world. Understand "advice" or "h" or "help" or "hint" or "hints" or "please help" or  "help please" or "I need help" or "help me please" or "I need help please" or "please help me" as asking for help.

Carry out asking for help:
	say "This is a classic text-adventure game. You play by typing in what you want to do. If this is your first text adventure, I wish you luck, and leave you with these tips:";
	say paragraph break;
	say "1) Take the time to [bold type]'look' at everything[roman type], e.g. 'look (at) cheese' or 'examine rug'. You'll [bold type]experience more jokes and puzzles[roman type] if you scrutinize the game world.";
	say "2) [bold type]'Take' intriguing or suspicious objects with you[roman type] for later. Your backpack will hold as many things as you like.";
	say "3) Refer to this table for some useful commands:";
	say line break;
	say "[fixed letter spacing]";
	repeat through the Table of Commands:
		let X be 10 minus the number of characters in "[command entry]";
		let Y be "";
		repeat with Z running from 1 to X:
			now Y is "[Y] ";
		let A be 4 minus the number of characters in "[short form entry]";
		let B be "";
		repeat with C running from 1 to A:
			now B is "[B] ";
		say "[command entry][Y]- [short form entry][B]- [description entry]";
		say line break;
	say "[roman type]".

Playing credits is an action out of world. Understand "credit" or "credits" as playing credits.

Carry out playing credits:
	say "Written, designed, and programmed by:";
	say line break;
	say "Maxwell Joslyn" in title case;
	say paragraph break;
	say "Sound effects by:";
	say line break;
	say "Larry Drui";
	say paragraph break;
	say "Fearlessly beta tested toward countless improvements by:";
	say line break;
	say "Eric Cleveland, Sophia Virk, Patrick Lynch, Wolfi Henderson, Brian Caddell, Adam Gutierrez-Luft, Zach Sauers, and the BR drongos' drongos, Samara, Nicole, Emmett, Arthur, Lakota, and both Jordans.";
	say paragraph break;
	say "Finally, thanks to everyone who played the game after the first release:[line break]Marléne, Nick, Lyla, Larry, Chris S, Ariel ...[paragraph break]... and some dude named Ryan!";

Part 6 - Ana

The block giving rule is not listed in the check giving it to rules.

The block kissing rule is not listed in the check kissing rulebook.

A woman called Ana is in the IIT Campus. The description of Ana is "A Czech girl in a white dress. Starting next week, she's your TA for Introductory Programming. Starting last night, she's your lover."

Ana is proper-named. Ana is wearing a white dress. The description of the dress is "It looks good on her."

A person can be mad or happy. A person is usually happy. Ana is mad.

Instead of taking a person:
	say "You can't take a living thing!".

Report Ana rejecting conversation when Ana is mad:
	say "Ana tosses her hair and refuses to answer.".

Report Ana rejecting conversation when Ana is not mad:
	say "Ana chuckles. 'My [sweet-name]', she says, 'your guess is as good as mine.'".

To say sweet-name:
	say "[sweet] [pet-name]".

The carrying capacity of Ana is 6.

The conversation of Ana is the Table of Ana Conv Mad.

To say sweet:
	say "[one of]sweet[or]scrumptious[or]lovable[or]darling[then at random]".

To say pet-name:
	say "[one of]Angeles-American[or]piglet[or]exotic treat[then at random]".

[insult exclamation]
To say insult-excl:
	say "[insult]!" in sentence case.

To say insult:
	say "[one of]pig[or]beast[or]bastard[or]fool[or]loser[purely at random]".

Instead of showing something (called the thingy) to Ana when Ana is mad:
	now the thingy is in the location;
	say "She slaps [the thingy] out of [our] hand. '[insult-excl]'".

After showing something (called the thingy) to Ana:
	say "She smiles at you and brushes [the thingy] with her hand."

Instead of taking Ana when Ana is touchable and Ana is mad:
	[this statement stems from a bug. originally I used the word 'named' to initialize Ana, but the actual keyword for that is 'called'. 'named' gave me a thing instead of a person, and I had to debug for a while to figure it out. ('named' seemed so natural for a person that I overlooked it.) while debugging I used this code to help me diagnose. I decided to leave it in as a hidden gag.]
	say "Ana is incensed. 'Trying to take me in in public?! What would your [one of]glorious[or]precious[or]exalted[at random] [one of]Washington[or]Jefferson[or]Lincoln[or]Roosevelt[or]Kennedy[at random] think of that?'".

Instead of taking Ana when Ana is touchable and Ana is happy:
	say "'Yes, take me . . . but not here. Later.' She gives you a wink.".

Instead of touching Ana when Ana is mad:
	say "She slaps your hand away. '[insult-excl]'".

Instead of pressing or pushing Ana, try touching Ana.

After touching Ana:
	say "You caress her, and she rubs her head against your hand."
	[Writing this "after" rule also stops the default "Ana might not like that" thing from printing]

Instead of kissing Ana when Ana is mad:
	say "She slaps the kiss right off your lips. '[insult-excl]'"

After kissing Ana:
	say "You plant your [lippy] lips on her [one of]cheek[or]forehead[or]nose[then at random], and she [one of]squeals[or]wiggles[purely at random] in delight."

[todo: chnge the name of this rule so it is mor descrpting and have nothing to do with potatoes.]
[todo: change 'potato' so instead it is a different item that actually exists in game. it could check the current location and suggest 'buy herring', 'buy joint', or 'buy wheelbarrow/cart' ]
To say buy-tater:
	say "Try making a purchase with the 'buy' command instead, e.g. 'buy potato'."

Before giving something (called the gift) to someone (called the taker):
	if the gift is the money, say "[buy-tater]" instead;
	if the taker is a merchant, say "[buy-tater]" instead; [THIS is the line that makes trigges when people try to GIVE things to a merchant and causeds nonsensical dialogue. todo fixme - take this out and write custom logic for the merchants instead - perhaps a custom action can be used.]
	if the taker is a bird, try feeding the gift to the taker instead;
	if the taker is not Ana, say "[The second noun] [do not] desire [the gift]." instead.

Before giving something (called the gift) to Ana when Ana is mad:
	if the gift is not a flower and the gift is not the panties:
		now the gift is in the location;
		say "She [one of]slaps[or]smacks[at random] [the gift] out of [our] hand." instead.

Before giving something (called the gift) to Ana when Ana is happy:
	if the gift is not listed in ana-gifts:
		say "She giggles, but refuses your offer of [the gift]." instead.

Ana-gifts is a list of things that varies. When play begins: now ana-gifts is {the red flower, blue flower, white flower, yellow flower, Central European panties}.

Instead of giving the backpack to Ana when Ana is mad:
	say "She bats you away.".

Instead of giving the backpack to Ana:
	say "She rolls her eyes and gives you a playful shove. 'Keep that for your classes,' she says.".

Instead of giving the panties to Ana when Ana is mad:
	say "Ana snatches the panties out of your hand, and throws them to the ground.";
	now the panties are in the location.
	
After giving the panties to Ana:
	say "She blushes, then stuffs them into her pocket. 'Thank you,' she says softly.";
	increase the score by 1.
	
Instead of giving a flower to Ana for the first time:
	increase the score by 1;
	now Ana is happy;
	now Ana has the noun;
	now the conversation of Ana is Table of Ana Conv Happy;
	say "Ana sighs and kisses your cheek.";
	silently try Ana entering the stone bench;
	if Ana is on the bench:
		say "[paragraph break]She strolls over to the bench, and sits down to gaze at the flower.";
	otherwise:
		say "[paragraph break]She gazes at the flower.".

After giving a flower to Ana when Ana is not mad:
	say "Ana [one of]giggles[or]grins[or]blushes[or]tickles [regarding the player][our] hand[then at random].";
	now Ana is carrying the noun.

Table of Ana Conv Mad
topic	reply
"panties/underwear/thong"	"She gives you a withering look. 'I[']m in no mood for that right now.'"
"fuck/fucking/sex/evening/night" or "making love" or "[night]"	"Her gaze lingers on you. 'You really do only think about one thing, you [insult].'"
"love"	"She stamps her foot. 'Who are you to talk about love, American?'"
"[class]"	"'Ha! I ought to get you tossed out for canoodling with a TA!'"
"[campus]"	"She shrugs, and indicates the surroundings with a hand. 'Here it is. What of it?'"


Table of Ana Conv Happy
topic	reply
"panties/underwear/thong"	"'You wouldn't mind bringing those to me, would you?' she asks."
"sex/fucking" or "having sex" or "making love"	"She laughs. 'We probably shouldn't . . . but we probably will.'"
"love"	"'We'll see what happens, no?' She blows you a kiss."
"[class]"	"Ana gives you a grin. 'I think I'll have no choice but to grade you harder than the others . . . at least at first.'"
"Christiana"	"She makes a face. 'Why would you want to go there? It's full of crime.'"
"Copenhagen/Denmark"	"'This city is so enchanting. I much prefer it to Prague.'"
"[campus]"	"'This is a good school, American. You'll learn a lot here . . . especially with me as your TA.'"
"[night]"	"'Oh, it was lovely, darling. I was just frustrated that you made me leave, but your lovely gift has made up for it.' She smells the flower, then raises her head and bats her lashes at you."


Part 7 - Bald Eagle

Include Rideable Vehicles by Graham Nelson.

A bird is a kind of rideable animal.

Instead of kissing a bird:
        say "[The noun] shies away from your [lippy] lips.".

To say lippy:
	let Z be {"quivering", "parted", "soft", "searching"};
	sort Z in random order;
	say "[entry 1 of Z]".

Report the wretched bird rejecting conversation:
	say "The bird squawks and looks at you dejectedly."

Report the friendly bird rejecting conversation:
	say "The bird chirrups, and cocks its head at you."

Report the bald eagle rejecting conversation:
	say "The bald eagle nobly looks you in the eye, but does not speak."

Limbo is a room. In Limbo is a bird called the bald eagle. Understand "bird" as the bald eagle.

In Limbo is a bird called the friendly bird.

Instead of mounting the friendly bird:
	say "Good instincts . . . but [the noun] [are] will need to be even friendlier for that."

Instead of mounting the wretched bird:
	say "[The noun] is too weak and sickly to ride."

The description of the bald eagle is "Its plumage feathers are a rich brown, edged with a color that can only be called the Gold Standard. Its head is the same shade as the White House itself."

The description of the friendly bird is "This is the bird you fed earlier. It seems to have regained some energy after eating: [one of]its plumage has a healthy sheen[or]it clucks happily to itself[or]it preens and struts about[then at random]."

Understand the command "feed" as something new.

Feeding it to is an action applying to one carried thing and one thing.

Understand "feed [something] to [something]" as feeding it to. Understand "feed [someone] [something]" as feeding it to (with nouns reversed).

Check feeding something (called the food) to something (called the eater):
	if the eater is not a person, say "You can't feed an inanimate object!" instead;
	if the eater is not a bird, say "[The eater] [are] not willing to be fed by [us]." instead;
	if the eater is the bald eagle, say "[The eater] [are] is free from all desire." instead;
	if the printed name of the food matches the text "panties", say "Unlike [us], [the eater] [are] entirely unmotivated by sexy underwear." instead;
	let Q be {steak, Uncle Sam};
	if the eater is the wretched bird and the food is listed in Q:
		say "[A food] is much too good for [the eater]." instead;
	let L be {pile of herring, mound of herring, steak, Uncle Sam};
	if the food is not listed in L:
		say "[The eater] turns its head away from [the food]." instead.

Carry out feeding something (called the food) to something (called the eater):
	now the food is nowhere;
	if the eater is the wretched bird:
		now the wretched bird is nowhere;
		now the friendly bird is in the cemetery;
		increase the score by 1;
	else if the eater is the friendly bird and the location is the cemetery:
		now the friendly bird is nowhere;
		now the bald eagle is on the gnarled bush;
		increase the score by 2.

Report feeding something (called the food) to something (called the eater):
	if the eater is the wretched bird:
		say "[The eater] regards you warily, then opens its beak and snaps up [the food]. It swallows in one gulp.";
		say line break;	
		say "You see a flash of brilliance in its black, beady eyes. Then it caws, and flies off in the direction of Copenhagen.";
		say line break;
		say "You feel strangely proud.";
	else if the eater is the friendly bird:
		say "[The eater] nuzzles your hand, then spears your offering with its beak. With a jerk of its head, [the food] disappears down the bird's gullet.";
		say line break;
		say "[The eater] shrieks in triumph. It ascends into the sky, until it is so far away that you can only perceive a black dot.";
		say line break;
		say "There is a flash of light so brilliant that you have to avert your eyes. When you look up again, the black dot has disappeared . . .".		
		

Has-ridden-from-path and has-ridden-from-island are truth states that vary.

When play begins:
	now has-ridden-from-path is false;
	now has-ridden-from-island is false.

Instead of mounting the bald eagle:
	if the location is the path:
		if has-ridden-from-path is false:
			now has-ridden-from-path is true;
			play the sound of eagle;
			say "The eagle shrieks, and dives off the promontory with you on its back. As you cling for dear life, it swoops down to skim the water, then soars out above the bay.[paragraph break]The view out here is breathtaking. Twisting your head around, you can look back and see all of Copenhagen laid out like breakfast.";
		else:
			play the sound of eagle;
			say "The eagle screams in the language of liberty, and carries you to the island.";
		say line break;
		now the eagle is in the island;
		now the player is in the island;
		stop the action;
	else:
		if has-ridden-from-island is false:
			play the sound of eagle;
			now has-ridden-from-island is true;
			say "The eagle jetplanes into the heavens with you on its back. After another harrowing ride over the bay, it deposits you neatly on the promontory.";
		else:
			play the sound of eagle;
			say "The eagle shrieks freedomishly, and carries you to the promontory.";
		now the eagle is on the gnarled bush;
		now the player is in the path.

Part 8 - Other Stuff

The carrying capacity of the player is 3. [One for the backpack and one for each hand.]

A merchant is a kind of person.

Part 9 - Food and Cooking

A food is a kind of thing. A food is usually edible. A food is usually portable.

The sanity-check rules are a rulebook.

This is the sanity-check stage rule:
    abide by the sanity-check rules.

The sanity-check stage rule is listed after the before stage rule in the action-processing rules.

To say fool:
	let X be "[dumb]" in title case;
	say "[X] American, have you truly mistaken [the noun] for food?"

To say dumb:
	say "[one of]foolish[or]stupid[or]idiotic[or]ignorant[or]troublesome[then at random]".

Sanity-check eating an inedible thing:
	if the noun is the steak:
		say "You'll have to cook it first." instead;
	otherwise:
		say "[fool]" instead.

Understand the command "cook" as something new.

Cooking is an action applying to one thing. Understand "cook [something]" as cooking. Understand "fry [something]" as cooking.

Check cooking something (called the munch):
	if the munch is not a food, say "[fool]" instead;
	if the frying pan is not touchable, say "You need a pan to cook in." instead;
	if the location is not the apartment, say "Your only place to cook is your apartment stove." instead.

Carry out cooking something for the first time:
	increase the score by 1;
	now the noun is edible.

Carry out cooking something:
	now the noun is edible.

Report cooking something (called the munch):
	say "[We] cook [the munch], filling the air with [one of]delicious[or]tasty[or]mouth-watering[or]delectable[then at random] smells.".

Before eating the steak:
	say "Are you sure? You might need that later. [bracket]y/n[close bracket] ";
	if the player consents:
		continue the action;
	otherwise:
		stop the action.
		
Part 10 - Exit List

To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way]".

Rule for printing the name of a direction (called the way) while constructing the status line:
	choose row with a heading of the way in the Table of Abbreviation;
	say "[shortcut entry]".

Table of Abbreviation
heading	shortcut
north	"N"
northeast	"NE"
northwest	"NW"
east	"E"
southeast	"SE"
south	"S"
southwest	"SW"
west	"W"
up	"U"
down	"D"
inside	"IN"
outside	"OUT"

Part 11 - Status Line

When play begins:
	now the left hand status line is "Loc: [the player's surroundings]. Dirs: [exit list]";
	now the right hand status line is "Points: [score]/[maximum score]".

Rule for printing the name of the hellerup apartment while constructing the status line: say "Apartment".
Rule for printing the name of the strandvejen while constructing the status line: say "Strandvejen".
Rule for printing the name of the main street while constructing the status line: say "Christiana".
Rule for printing the name of the train platform while constructing the status line: say "Platform".
Rule for printing the name of the metro station while constructing the status line: say "Metro".
Rule for printing the name of the commissary while constructing the status line: say "Commissary".

Part 12 - Speech and Conversation

Section 1 - Talking to People

Understand "talk to [someone]" as a mistake ("To speak with someone, try one of 'ask [bracket]someone[close bracket] about something' or 'ask [bracket]someone[close bracket] for something'.").

Asking someone about something is speech. Telling someone about something is speech. Answering someone that something is speech. Asking someone for something is speech.

Instead of telling someone about something:
	try asking the noun about it.

A person has a table name called conversation.

Instead of asking someone about something:
	let the source be the conversation of the noun;
	if topic understood is a topic listed in source:
		say "[reply entry][paragraph break]";
	otherwise:
		try the noun rejecting conversation.

Rejecting conversation is an action applying to nothing.

Check rejecting conversation:
	do nothing.

Carry out rejecting conversation:
	do nothing.

The conversation of the fisherman is the Table of Fisherman Conv.

Table of Fisherman Conv
topic	reply
"the/-- [fishy]"	"'All my herring is fresh from the bay,' he says, waving his hand toward the Gentofte."
"the/-- bird" or "wretched" or "the/-- wretched bird" or "the/-- birds"	"He looks grim. 'We fishermen catch so much herring that the birds sometimes go hungry,' he concedes."
"the/-- " or "the/-- Gentofte" or "the/-- bay of Gentofte"	"'There's loads of [italic type]sild[roman type] living down there for a [italic type]fisker[roman type] like me.'"
"the/-- [denhagen]"	"'Denmark is a [italic type]glimrende[roman type] country, Copenhagen is a [italic type]storsået[roman type] city, and Hellerup is a [italic type]fantastisk[roman type] neighborhood."
"the/-- boat" or "the/-- rowboat" or "the/-- dock"	"'That's my boat, alright. It'd be best if you didn't fool around with it.'"
"the/-- monk" or "[island]"	"The fisherman looks uncomfortable. 'I, uh, I've never heard of such a thing . . . wouldn't you like to buy some fish?'"	

Report the fisherman rejecting conversation:
	say "The [italic type]fisker[roman type] shifts from foot to foot. 'Reckon I don't know much about that.'"

Section 2 - Talking about Things

[copy the Nameless example]
[A thing can be known or unknown.

Understand "ask [someone] about [any known thing]" as interrogating it about. interrogating it about is an action applying to two visible things.
]

Book 2 - Scenario

When play begins:
	say "It is the Year of Our Lord MMXVIII. You have arrived in the Danish city of Copenhagen to pursue a master's degree. You found an apartment for let in the suburb of Hellerup, and promptly moved in. The place isn't much, but for the next two years it's home.";
	say paragraph break;
	say paragraph break;
	say "[bold type]PREPARE YOUR SPIRIT FOR . . .[roman type]";
	say paragraph break;
	say paragraph break;
	display Figure of Ryan.

Part 1 - Hellerup

Hellerup is a region.

Chapter 1 - Hellerup Apartment

The Hellerup Apartment is a room in Hellerup. "Your apartment is a cheery little cube. On the east wall is a round window. A woven rug adorns the floor in the middle of the room. Along the west wall are a fridge and some shelves. A bed lies in the northwest corner, and a stove lies in the northeast."

The player is in the apartment.

[Instead of exiting the apartment:
        try going south.]

The apartment door is a door. It is south of the Apartment and north of Hellerup Strandvejen. The description is "Just looking at this door makes you eager to start each day."

Before listing nondescript items when the location is the apartment:
	now the apartment door is not marked for listing.

The apartment contains a portable thing called a backpack. The backpack is wearable. The backpack is a player's holdall. The description of the backpack is "Adorned with the seal of Reed College, your undergraduate alma mater." Understand "pack" as backpack.

Instead of opening the apartment door when the player does not have the backpack:
	say "You can't go to school without your backpack.";
	stop the action.

The rug, the stove, the round window, and some shelves are scenery in the Apartment.

The description of the round window is "Out the window you can see the Bay of Gentofte. Some way out in the water is a small island. From here it looks quite pleasant[if the island is visited], but you know that it's actually kind of a shithole[otherwise][end if]."

The description of the rug is "The rug depicts a universal healthcare flying over the Kingdom of Denmark."

Instead of taking the rug:
	say "You couldn't possibly take that! It belongs to your landlady.";
	stop the action.
	
In the apartment is a dwarf banana tree. The banana tree is portable. The description of the dwarf banana tree is "As friendly as a plant can get, and eminently pocketable. Its name is Benjamin." Understand "dwarf tree" and "banana tree" and "Benjamin" and "Ben" as the dwarf banana tree.

The description of the stove is "A two-burner electric stove." On top of the stove is a frying pan. The pan is portable. The description of the pan is "Danish engineering makes bad food an impossibility." Understand "pan" as the frying pan.

The shelves are a supporter. On the shelves is a food called a loaf of bread. The description of the bread is "Made with 100% Danish wheat." Understand "shelf" as the shelves. The description of the shelves is "Each of the shelves is thin enough to shave with."

The Apartment contains a fridge. The fridge is a closed container. The fridge is fixed in place and openable. The description of the fridge is "Silvery-subtle. The handle is [description of handle in lower case]". The handle is a thing which is part of the fridge. The description of the handle is "Quite affordant."

Instead of pulling the handle:
	try opening the fridge.

Instead of pushing the handle:
	try closing the fridge.
	
The piece of cheese and a steak are foods in the fridge. The description of the cheese is "An off-white slab. You got it in the airport, but one bite was enough to determine that it tasted gross." The steak is not edible. The description of the steak is "A gift from your landlady: she's rented to Americans before."

After eating the cheese:
	say "God, that was foul."

After printing the name of the steak when the steak is not edible:
	say " (uncooked)".

The glass bottle of Dankdrinke is an edible thing in the fridge. The description of the bottle is "No drinke is more ergonomik than Dankdrinke!"

Instead of drinking something (called the drink):
	silently try eating the drink.

After drinking or eating the Dankdrinke:
	say "Your throat is filled with ergonomitivity.";
	increase the score by 1.

The Apartment contains an enterable thing called the bed. The description of the bed is "Shaped to perfectly fit the human body." On the bed are bedsheets and a pair of Central European panties. Understand "underwear" or "knickers" as the panties.

After smelling the panties:
	say "Pervert."

Instead of wearing the panties:
        say "No way: you'd stretch them."

The description of the bedsheets is "Extremely rumpled from excessive romping." Understand "sheets" or "bedclothes" as bedsheets. The description of the panties is "Pink, frilly, and definitely not yours."

After taking the panties for the first time:
	say "Nice.".



Part 2 - Outdoors in Hellerup

Chapter 1 - Hellerup Strandvejen

Hellerup Strandvejen is a room in Hellerup. "The main street of Hellerup is bordered on its north side by brightly-painted row houses, such as the one containing your apartment. At the east end is a dock, and if you go west you can catch a train."

Some row houses are scenery in Hellerup Strandvejen. The description of the row houses is "I said brightly-painted and I meant it -- yet these suckers must be at least a century old."

Every turn when the fisherman is visible:
	if a random chance of 1 in 3 succeeds:
		let L be the list of things in the wheelbarrow;
		if the number of entries in L is not 0:
			say "The fisherman calls out, 'Today I have [L with indefinite articles]! [one of]Fresh[or]Very tasty[or]Delicious[or]Come and get it[then at random]!'";
		otherwise:
			say "The fisherman [one of]winks at [us][or]taps his foot[or]grins cheerfully[at random].".

The fisherman is a merchant in Hellerup Strandvejen. The fisherman is wearing a long coat, a fingerless glove, a pair of trousers, and a pair of sneakers. A pocket is part of the long coat. The pocket is a container. The pocket has carrying capacity 1. In the pocket is a fistful of herring. The fistful of herring is edible. The description of the pocket is "Haphazardly stitched." The description of the fistful of herring is "Must be tucked away for a rainy day."

Does the player mean taking a fistful of herring: it is unlikely.

The description of the long coat is "The man's coat has clearly seen better days. From the sole remaining pocket protrudes [a list of things in the pocket]."

The description of the glove is "Dirty." The description of the trousers is "Threadbare." The description of the sneakers is "Stained." Understand "shoes" as sneakers.

A wheelbarrow is a thing in Strandvejen. The wheelbarrow is a container which is pushable between rooms. The wheelbarrow has carrying capacity 3. In the wheelbarrow is the pile of herring and the mound of herring.

Instead of taking the wheelbarrow:
	say "That belongs to the fisherman.".

The description of the wheelbarrow is "Rusty but serviceable. It contains [a list of things in the wheelbarrow]."

The price of the pile of herring is 1 kroner. The price of the mound of herring is 2 kroner. The pile of herring and the mound of herring are edible. The description of the pile of herring is "Plump and juicy." The description of the mound of herring is "Moist and fresh."

Instead of the player eating the mound of herring:
	now the mound of herring is inedible;
	say "Ugh, it's really not as good as it looks.";
	now the mound of herring is edible.

Instead of the player eating the mound of herring:
	now the mound of herring is inedible;
	say "What are you, a drongo?";
	now the mound of herring is edible.

The description of the fisherman is "A friendly purveyor of herring, and perhaps more. He wears [a list of things worn by the fisherman]."

Instead of kissing the fisherman:
	say "He swallows nervously and leans away from you."

Instead of kissing someone who is not Ana:
	say "Your seductive skills are no use here."


Chapter 2 - Dock and Bird

After listening to in the dock:
	say "You hear the gentle wind that stirs the Gentofte waters."

The Dock is a room in Hellerup. "This is a shabby little dock used for the fishing trade. At the end of the dock, a little rowboat, moored with a rope, bobs up and down. In the rowboat is a large crate[if the wretched bird is enclosed by the dock], atop which sits a bird[end if]." The dock is east of Strandvejen.

A rowboat and a rope are scenery in the dock. The rowboat is an open container. The description of the rowboat is "This rowboat is sad but serviceable." Understand "boat" as the rowboat.

The description of the rope is "Soaked and salty, but somehow still strong.".

Instead of entering the rowboat, say "[The rowboat] is much too slippery for a landlubber like you to get in."

In the rowboat is a enterable supporter called the herring crate. The description of the crate is "It's got to be loaded with herring." The crate is fixed in place. Understand "large" or "large crate" as the crate.

Instead of opening the herring crate:
	say "Nuts! It's barred and locked."

On top of the herring crate is a bird called a wretched bird. The description of the bird is "The species is impossible to identify, but its plumage is wilted, its beak is crooked, and its eyes are dull."

Chapter 3 - Hellerup Train Platform

The Train Platform is a room in Hellerup. "The open-air train platform has a line that runs to Copenhagen. There are no tickets: it is free to ride. [if the commissary is not visited]A staircase and [an arrow-shaped sign] in the northwest corner of the station pair up to beckon you downward[else]In the northwest corner of the station stands the staircase that leads to the Commissary[end if]."

The train platform is west of Strandvejen.

A wall sign is a thing in the train platform. The wall sign is fixed in place. The description of the sign is "It reads, 'Get into the train at your leisure.'"

The C-Train is an enterable container in the Platform. The description of the C-Train is "This train is a large glass lozenge containing one big wrap-around sofa." Understand "c-train" or "train" or "pod" or "C-train" or "C-Train" as the C-Train. The C-train is not portable.

Instead of taking the C-train:
	say "You can hardly pick up a train!".

The wrap-around sofa is an enterable supporter in the C-Train. Understand "couch" as the wrap-around sofa. The description of the sofa is "Made of plush leather for discerning Danish derrieres." The sofa is fixed in place.

Understand the command "leave" as something new.

Leaving is an action applying to one thing. Understand "leave [something]" as leaving.

Check leaving something:
	if the C-train encloses the player:
		now the player is in the holder of the C-train;
	else if the player is in the apartment:
		try going south;
	otherwise:
		say "Try the 'dirs' command to see where you can go from here." instead.

Instead of mounting the C-train, try entering the C-train.

Understand the command "board" as something new.

Boarding is an action applying to one thing. Understand "board [something]" as boarding.

Check boarding something:
	if the noun is not the C-train, say "You can't board that!".

Carry out boarding something:
	try entering the noun instead.

Instead of exiting when the location is the C-train:
	try leaving the C-train.

Understand "exit train" or "exit c-train" as exiting.

Does the player mean leaving the C-train: it is very likely.

Does the player mean pulling the lever: it is very likely.

The lever is a device in the C-train. The description of the lever is "The handle has indentations shaped to cuddle your fingers. A small speaker grille is embedded in the tippy-top." The speaker grille is a thing which is part of the lever. The description of the grille is "Nine teeny holes form this barely-there speaker." Understand "grille" or "grill" or "speaker grill" or "speaker grille" as the speaker grille.

Instead of pressing the lever:
	say "[pullme]".

Instead of pushing the lever:
	say "[pullme]".

To say pullme:
	say "'You must pull me!' the lever says [one of]jubilantly[or]joyously[or]pleasantly[then at random].".

Instead of pulling, pressing, or pushing the lever when the player is not enclosed by the C-train, say "You'll have to get in the train to do that." instead.

Carry out pulling the lever:
	try silently switching on the lever.

Report pulling the lever:
	do nothing.

[get rid of the obnoxious 'nothing obvious happens' default report, which was coming up even with "report pulling the lever: do nothing" in place.]
The report pulling rule is not listed in the report pulling rules.

After switching on the lever:
	now the lever is switched off;
	if the location is the Platform:
		say "With a tug of the lever, you are transported to Copenhagen proper.";
		now the C-train is in the metro station;
		now the player is in the metro station;
		say "You step out of the train.";
	else if the location is the Metro Station:
		say "With a tug of the lever, you are transported to the suburb of Hellerup.";
		now the C-train is in the Platform;
		now the player is in the Platform;
		say "You step out of the train.".

Some downward stairs are scenery in the platform. The description of the downward stairs is "This must be the way to the Commissary."

Chapter 4 - The Socialist Money Commissary
[fix: not enough money in the game, easy to get stuck. have the bills reset every so often.]
[fix: change out of money message to instead be "come back soon", so that playes will eturn looking for more money.]

To say arrow text:
	let the word be "This way for money" in upper case;
	say the word.

The arrow-shaped sign is a thing in the train platform. The description of the sign is "The delightfully red arrow is painted with blue text: '[arrow text]'.". The arrow-shaped sign is fixed in place.

Down from the train platform is a room called Socialist Money Commissary.
The description of the commissary is "The inside of the commissary is a bit cramped, but the lighting is gentle and there is air-conditioning. ".
Some upward stairs are scenery in the commissary. The description of the upward stairs is "If you want to go upward, these stairs are a safe bet."

The conversation of the clerk is Table of Clerk Conv.

Table of Clerk Conv
topic	reply
"the/-- money/krone/kroner/"	"'Each shipment comes stamped with the Queen's royal seal, and every krone may be spent with her blessing.'"
"Hellerup/train/platform" or "train platform"	"'We are fortunate to have a direct self-service connection to Copenhagen,' the clerk says. 'You can go at any hour of day!'"
"socialist/socialism/commissary" or "money commissary" or "socialist commissary"	"The clerk stands up straight. 'The Danish way of life is civilized and prosperous. It's a pity not all countries work the way we do!'"
"capitalist/capitalism"	"The clerk scowls. 'You'd better leave such topics alone during your time here, American.'"

Report the clerk rejecting conversation:
	say "The clerk demurres, giving no answer.".

The clerk is a woman in the commissary. The clerk is wearing a brown jumpsuit and a gold apron. The description of the clerk is "She gives you the smile of a true believer. She is wearing [a list of things worn by the clerk]." The description of the jumpsuit is "Fish-brown." The description of the apron is "Unfortunately, it's only gold-dyed cloth, not actual gold."

A note is a kind of thing.

The one-krone note, the two-kroner note and the three-kroner note are notes in the commissary. The price of the one-krone note is 1 kroner. The price of the two-kroner note is 2 kroner. The price of the three-kroner note is 3 kroner. The indefinite article of the one-krone note is "a".

The description of the one-krone note is "Depicts Queen Magrethe II. Maybe one day you will meet her."

The description of the two-kroner note is "It bears the likeness of King Christian IV. He rekt Northern Germany during the Thirty Years War."

The description of the three-kroner note is "Depicts a piddly little island[if the island is unvisited][else], which you can tell was based on the one in the bay[end if]."

Instead of buying a note:
	try taking the noun.

Instead of the player taking a note (called the cashola) in the commissary:
	let Y be "[dumb]" in title case;
	say "[Y] American! Under Socialism, everyone has a job to do - and the clerk's job is to hand you that [cashola]. For free![paragraph break]The clerk picks up [the cashola], and gives it to you.";
	[if the player was reduced to 0 kroner, the money got moved to Limbo, so here we will check for that and move it back]
	if the money is not in the wallet, now the money is in the wallet;
	increase the price of the money by the price of the cashola;
	now the cashola is nowhere.

Instead of asking the clerk for a note (called the cashola):
	say "The clerk does as you ask: she [regarding the clerk][pick] up [the cashola], and gives it to you.";
	[if the player was reduced to 0 kroner, the money got moved to Limbo, so here we will check for that and move it back]
	if the money is not in the wallet, now the money is in the wallet;
	increase the price of the money by the price of the cashola;
	now the cashola is in limbo.

Clerk-saidit is a truth state that varies. When play begins: now clerk-saidit is false.

Every turn when the player is in the commissary (this is the tell the player when the commissary is out of money rule):
	if there are no notes in the commissary:
		if clerk-saidit is false:
			now clerk-saidit is true;
			say "The clerk says, 'Unfortunately, we're out of money right now. Please return in a little while.'";
		else:
			say "It seems there's no money available right now.".

Every turn when the player is not in the commissary (this is the restock the commissary with money rule):
	if the number of notes in the commissary is less than 3:
		if a random chance of 1 in 4 succeeds:
			let X be a random note in Limbo;
			if X is a note:
				now X is in the commissary.

Test restock with "test p1 / n / get in train / pull lever / down / up / z / z / z / z / down".

Part 4 - Copenhagen

Copenhagen is a region.

Chapter 1 - Copenhagen Metro Station

In Copenhagen is a room called Copenhagen Metro Station. The description of the metro station is "This is the main metro station in Copenhagen. Its creator won the Best Dane of the Year Award.[paragraph break]A flight of stairs which lead upward and southward to IIT Campus, where you begin your classes next week. Christiana lies northwest of here: don't go there at night! If you're feeling contemplative, the Danes have built an efficient route running west to the Aarenhus Cemetery.[paragraph break]A small door stands in the southeast corner of the station near a fake tree."

South of the metro station is a room called IIT Campus. IIT Campus is up from the metro station. IIT Campus is in Copenhagen.

Some stairs to IIT Campus are scenery in metro station. The description of the stairs to IIT Campus is "[one of]Patently pedestriable[or]Sublimely steppable[then at random]." Some stairs to the Metro Station are scenery in IIT Campus. The description of the stairs to the Metro Station is "Just stairs, really. They just can't compare to the ones in the metro station."

Northwest of the Metro Station is a room called Christiana Main Street. Christiana Main Street is in Copenhagen.

West of the metro station is a room called Aarenhus Cemetery. The Cemetery is in Copenhagen.

There is a room in Copenhagen called The Path.

A door called a small door is southeast of the metro station and northwest of The Path. The small door is scenery. The description of the small door is "It's not even a finished door - just a plank of wood on hinges. A sign hangs from a nail in the middle.".

A thing called the small sign is part of the small door. The description of the small sign is "The hand-lettered sign reads, 'My friend, you've gotten [the score] point[s] so far.'".

In the station is a locked lockable closed door called the fake tree. Understand "tree" or "artificial tree" as the fake tree. The description of the fake tree is "A huge plastic palm tree, fifteen feet tall and twenty feet around. It 'grows' from an inch-thick disc of marble which is set into the floor of the station, disrupting the pattern of tiles around it."

The fake tree is inside from the metro station and outside from the Belly of the Tree.

[When "l belly" or "x belly" is issued, this code stops the fake tree from being mentioned in the ensuing description of items in the location. Nondescript roughly means 'has been seen before' which is guaranteed since they've been to the metro station before being able to come in here.]
Before listing nondescript items when the location is the belly:
	now the fake tree is not marked for listing.

Before opening or entering the locked fake tree:
	say "You examine [the fake tree], but there's no way to get in.[paragraph break]Perhaps if you boosted your imagination you'd think of something.";
	stop the action.

Understand "boost imagination" or "boost my imagination" or "boost the imagination" as a mistake ("Nice try, drongo!").

Instead of going inside from the metro station when the fake tree is locked:
	try entering the fake tree.

After going through the unlocked fake tree to the belly for the first time:
	say "You walk up to the fake tree. Your instincts propel you onward, and you walk [italic type]into[roman type] the tree.[paragraph break]You're inside the tree, Ryan.".

After going through the unlocked fake tree to the belly:
	say "You walk up to the fake tree, and boldly stride in.".

The Belly of the Tree is a room in copenhagen. The description of the belly of the tree is "It's gloomy in here."

Every turn:
	if the player encloses the ineffable mystery or the player encloses something which encloses the mystery:
		if the player is in the belly of the tree:
			say "The ineffable mystery pulses like crazy.";
		else if the location is the metro station:
			say "The ineffable mystery pulses rapidly.";
		else:
			let Q be the number of moves from the location to the belly of the tree;
			if Q <= 2:
				say "The ineffable mystery pulses slowly."

Yourself can be dull or enlightened.

When play begins:
	now the player is dull.

The print obituary headline rule is not listed in any rulebook.

Looking is dunko. Examining is dunko. Searching is dunko.

Rule for printing the player's obituary:
	if the score is less than the maximum score:
		say "From outside of time and space, infinite power is awakened.
		
		With no warning, the ultimate technique destroys not only your body, but also your spirit. Your last thought is, 'If only I had collected all of the points!'";
	else:
		say "You summon all your power and perform the ultimate technique. Infinite power courses through both your body and your spirit.[line break]
		[line break]
		You did it, friend[line break]
		You did your best[line break]
		You played the game[line break]
		You won the quest[line break]
		[line break]
		You fed the bird[line break]
		You rode the train[line break]
		You sussed out spots[line break]
		With points to gain[line break]
		[line break]
		You bought herring[line break]
		And dank weed too[line break]
		You talked to folks[line break]
		Much unlike you[line break]
		[line break]
		You made Ana[line break]
		Stop being mad[line break]
		Now she will be[line break]
		Forever glad[line break]
		[line break]
		Eight times you pressed[line break]
		The beige button[line break]
		Haha, I say[line break]
		That one was fun[line break]
		[line break]
		You relaxed in[line break]
		The graveyard zone[line break]
		You made your way[line break]
		All on your own[line break]
		[line break]
		With eagle's help[line break]
		You met the monk[line break]
		You opened up[line break]
		His wooden trunk[line break]
		[line break]
		The dank you smoked[line break]
		Set your mind free[line break]
		You willed yourself[line break]
		To enter tree[line break]
		[line break]
		You did the thing[line break]
		Good job to you[line break]
		Perhaps I'll make[line break]
		Ryan Quest 2	[line break]
		[line break]
		Now you are done[line break]
		You're at the end[line break]
		Thanks for being[line break]
		My closest friend[line break]".

Instead of dunko when the noun is the ineffable mystery and the location is the belly:
	[the newlines here should stay hardcoded to avoid any formatting that sometimes occurs with paragraph breaks]
	now the player is sober;
	now the player is enlightened;
	now the ineffable mystery is in Limbo;
	say "You gaze at the ineffable mystery.
		
		Suddenly
		
		in an instant
		
		you understand!
		
		The ultimate technique, the final technique, the last possible technique, is yours! Now all you have to do is use it.'"

Ultimating is an action applying to nothing. Understand "use ultimate technique" or "use the ultimate technique" or "perform ultimate technique" or "perform the ultimate technique" or "the ultimate technique"as ultimating.

Check ultimating:
	if the player is dull, say "You are not enlightened, and cannot perform the ultimate technique." instead.

Carry out ultimating:
	do nothing.

Report ultimating:
	if the score is less than the maximum score:
		end the story;
	otherwise:
		end the story finally.


Chapter 2 - Aarenhus Cemetery

The description of Aarenhus Cemetery is "Dark paths run here and there among the marble tombs. Some trees provide relaxing shade[if there are flowers in the cemetery], and flowers bloom here and there[otherwise][end if]." Understand "graveyard" as the cemetery.

Some marble tombs and some trees are scenery in the cemetery. The description of the tombs is "Your attention rests on a tomb of [one of]pale white[or]blue-gray[or]gray-green[or]reddish-purple[then at random] marble with [one of]pinkish[or]dark brown[or]silvery[or]gold[purely at random] streaks.". The description of the trees is "Strong and hardy. It's macabre, but bones make excellent fertilizer.". Understand "tomb" or "marble" as the tombs. Understand "tree" as the trees.

Understand the command "relax" as something new.

Relaxing is an action applying to nothing. Understand "relax" or "relax in the shade" as relaxing.

Check relaxing:
	if the location is not the cemetery:
		say "You can kill time with 'wait', but if you want to truly relax, you're in the wrong place." instead.

Carry out relaxing for the first time:
	increase the score by 1.

Carry out relaxing:
	do nothing.

Has-relaxed is a truth state that varies. When play begins: now has-relaxed is false.

[I tried programming this with the normal "for the first time" construct, but couldn't figure out how to make the non-first-time message NOT show up on the first time.]
After relaxing:
	if has-relaxed is false:
		say "You take a deep breath of Danish air, and let it out slowly.";
		now has-relaxed is true;
	otherwise:
		say "You breathe in and out. Now you're calmer than ever.".

To say qualifier:
	let Z be {"superb", "excellent", "terrific", "perfect"};
	sort Z in random order;
	say "[entry 1 of Z]".

Every turn when the player is in the cemetery:
	if the friendly bird is in the cemetery:
		do nothing;
	if has-relaxed is true:
		do nothing;
	otherwise:
		if a random chance of 1 in 4 succeeds:
			say "This seems like a [qualifier] place to relax.".

A flower is a kind of thing. A flower is always portable.

A red flower, a white flower, a blue flower, and a yellow flower are flowers in the cemetery. The description of the red flower is "Sweet-smelling." The description of the white flower is "The color of fine linen." The description of the blue flower is "As blue as the sky." The description of the yellow flower is "The yellow petals crinkle at the edges."

Chapter 3 - IIT Campus

The description of IIT Campus is "The campus is pretty sleepy in the summer. A construction crew is working around the bell tower, but [if Ana is in IIT Campus]the only student you see is Ana[otherwise]no students are to be seen[end if]."

The stone bench is an enterable supporter in the campus. The stone bench is fixed in place. The description of the bench is "Effortlessly square.[paragraph break]On the base, nearly invisible, is an unlabelled beige button. The button is [button-desc]." The carrying capacity of the bench is 2.

To say button-desc:
	say "rounder than round: it's Dane-Rounde".

The button is a device. The button is part of the bench. The description of the button is "This button is [button-desc].".

Understand the command "press" as something new.

Pressing is an action applying to one thing. Understand "press [something]" as pressing.

Instead of touching, pressing, or pushing someone who is not Ana:
	say "Mind your manners, [dumb] American!".
	
Instead of pushing the button:
	try pressing the button.

Check pressing something:
	if the noun is not touchable, say "That's nowhere near you!" instead.

Carry out pressing something:
	if the noun is not a device, say "You give [the noun] a poke.";
	if the noun is a device which is switched on:
		try switching off the noun;
	otherwise:
		try switching on the noun.

Report pressing something:
	do nothing.

Button-number is a number that varies.

When play begins:
	now button-number is 0.

After switching on the button:
	now the button is switched off;
	increase button-number by 1;
	let L be {"F", "E", "E", "D", "B", "I", "R", "D"};
	let B be the button-number;
	if B is greater than the number of entries in L:
		say "Nothing appears to happen.";
	otherwise:
		let X be entry B in L;
		say "From somewhere nearby, a voice yells, [quotation mark][X]![quotation mark]";
		if B is the number of entries in L:
			increase the score by 1. [Give a point for making it all the way through the hint.]


A worker is a kind of man.

The sawyer and the carpenter are workers in IIT Campus.

To say worker-no:
	say "You don't want to get in the way of their work." 

Before touching a worker, say worker-no instead.

Report the sawyer rejecting conversation:
	say worker-no.

Report the carpenter rejecting conversation:
	say worker-no.

The description of the sawyer is "Short and squat." The description of the carpenter is "Tall and thin."

After listening to in IIT Campus:
	say "The workers are [one of]sawing a [woodler][or]hammering a [woodler][or]joking with each other[then at random]."

To say woodler:
	say "[one of]board[or]plank[or]log[then at random]".

Chapter 5 - Christiana

After listening to in Christiana Main Street:
	say "You hear pleasant strains of music: [one of]6000 different footsteps arranged into a dance number.[or]splrrrrrrt![or]un-sk-un-sk-un-sk-un-sk![or]honk, honk, ding ding ding![or]clang, sploosh, bzzzzzzrt![then at random]"

The description of Christiana Main Street is "This spacious street at the entrance of Christiana is stuffed with all manner of people."

A flood of tourists, a gathering of hippies, and an infestation of musicians are people in Christiana. Understand "tourist" as the tourists. Understand "hippie" as the hippies. Understand "musician" or "player" as the musicians.

The description of the tourists is "So bristling with cameras that you can't get a good look at them."

The description of the hippies is "Real flower children. Who knows what their agenda is."

The description of the musicians is "Almost certainly unlicensed."

Instead of asking the pusher about "[weed]":
	say "He says, 'This is quality grass. Might make you see stuff, heh heh.'";

Instead of asking the pusher about "the/-- Christiana/main/street":
	say "The pusher smiles a little. 'I wouldn't trade this place for anything . . . even when a drongo like you asks a question like that.'"

Instead of asking the pusher about "the/-- tourist/musician/hippie/tourists/musicians/hippies":
	say "He raises his hands. 'Don't lump me in with [that-crowd].'"

To say that-crowd:
	say "[one of]those drongos[or]those parsleys[or]those balugas[then at random]".

Instead of asking the pusher about something:
	say "He rolls his freaky eyes. 'You lookin['] to buy or not?' he says.".

Instead of asking the pusher for something  during Way-Baked:
	say "'Quit it, drongo. Can't you see I'm rolling a joint here?'";

Instead of asking the pusher for the joint:
	say "'If you wanna buy a joint, buy a joint,' says the pusher."

Instead of asking the pusher for something:
	say "'I'm not giving you anything for free,' the pusher says."

To say pusher-desc:
	say "His eyes are freaky, but your friends say he's honest.".

A pusher is a merchant in Christiana Main Street. The description of the pusher is "[pusher-desc]".

To eye is a verb.
Every turn when the pusher is visible:
	if a random chance of 1 in 5 succeeds:
		say "[The pusher] [adapt verb eye] [our] [random thing which is carried by the player]."

A pushcart is a supporter in Christiana Main Street. The pushcart is pushable between rooms. The description of the pushcart is "A vital tool of the drug trade.". Understand "cart" or "tool" as the pushcart.

[maybe todo; give the pusher a (variable) line to say here to reinforce his character ... or maybe kick you out of the location?]
Instead of touching or pushing the pushcart:
	say "You probably shouldn't touch the pusher's stuff."

A drug is a kind of thing. A drug is usually portable.

A marijuana joint is a drug on the pushcart. The marijuana joint has price 2 kroner. The description of the joint is "This is the premium shit right here." Understand "weed" or "pot" or "cigarette" or "jazz cabbage" or "devil's lettuce" or "Devil's lettuce" as the joint.

Understand the command "smoke" as something new.

Smoking is an action applying to one carried thing. Understand "smoke [something]" or "hit [something]" or "toke [something]" as smoking.

Yourself can be sober or baked.

When play begins:
	now the player is sober.

Check smoking something (called the junk):
	if the junk is not a drug, say "You don't want to smoke [the junk]." instead;
	if the player is baked, say "You can't handle getting any higher." instead.

Carry out smoking something (called the junk):
	now the player is baked;
	now the junk is in Limbo.

Report smoking something (called the junk):
	say "You hit it and don't quit it. Your War-on-Drugs work ethic erases that joint from existence.[paragraph break]Now you're baked.".

Not-Baked is a recurring scene. Way-Baked is a recurring scene.

Not-Baked begins when play begins. Not-Baked ends when the player is baked.

Way-Baked begins when Not-Baked ends. Way-Baked ends when the time since Way-Baked began is 20 minutes. Way-Baked begins when the player is baked.

When Way-Baked ends:
	say "Your high has worn off.";
	now the player is sober;
	now the fake tree is locked;
	now the fake tree is closed;
	now the description of the pusher is "[pusher-desc]";
	now the joint is on the pushcart;
	now the price of the joint is 2 kroner;
	if the player is in the belly and the player does not enclose the ineffable mystery:
		say "Suddenly, the strange space within the tree squeezes shut. As the walls contract, you are forced out into the metro station. Before your eyes, the opening in the side of [the fake tree] shrinks and disappears.";
		now the player is in the metro station.

When Way-Baked begins:
	now the fake tree is unlocked;
	now the fake tree is open;
	now the description of the pusher is "Busily rolling another mondo joint.".

Every turn when the player is baked:
	say "[baked-exclaim]".

To say baked-exclaim:
	let L be a list of texts;
	let Z be "[one of]Wow[or]Damn[or]Man[then at random].";
	if a random chance of 1 in 3 succeeds:
		add Z to L;
	add "You're" to L;
	let Y be "[one of]totally[or]super[or]completely[or]really, really[then at random]";
	add Y to L;
	add "baked" to L;
	repeat with N running through L:
		if N is "baked":
			say "baked.";
		otherwise:
			say "[N] ".
               

Chapter 6 - The Path

The description of the path is "This odd little path runs out of the metro station and terminates at a promontory overlooking the bay. The ground is grassy, but the only larger vegetation is a gnarled bush.[paragraph break]Out in the bay is a small island."

A gnarled bush is scenery in the path. The gnarled bush is an enterable supporter. The description of the bush is "The leaves and branches are so tangled that it could probably support some weight." The carrying capacity of the bush is 2.

Chapter 7 - The Island

The Island of Technique is a room in Copenhagen. The description of the island is "This little island is no tropical paradise: it's foggy, muddy, and riddled with trees."

Report the monk rejecting conversation:
	say "'I cannot help you with that,' says the monk.".

The conversation of the monk is Table of Monk Conv.

Table of Monk Conv
topic	reply
"[weed]"	"'Such a substance as this will certainly help you comprehend the ultimate technique.'"
"[mystery]"	"[if the monk encloses the mystery]'I cannot yet reveal that sort of knowledge to you[else]When taken to the right place, the ineffable mystery will help you understand the ultimate technique[end if]'."
"[island]"	"'This island is my home. A friendly [italic type]fisker[roman type] brings me fresh herring to eat, and I sleep in the fork of a tree. Who could ask for more?'"
"[technique]"	"'The last possible technique? Yes, I know of it. [if the score is less than gotta-have]I cannot, per se, teach it to you, but I will show you the way forward . . . [italic type]if[roman type] you improve your score.' He points at the top right corner of the screen.[else]The contents of [thisthat] wooden box are your pathway toward the technique.'[end if]"
"the/-- [fisker]"	"'Ah yes, the one who supplies me with food. A pious man, he is.'"
"the/-- [denhagen]"	"'This is a fine place,' says the monk. 'The beer is cheap, and the fish are savory.'"
"the/-- box" or "the/-- wooden box" or "the/-- small box" or "the/-- small wooden box"	"'The contents of [thisthat] wooden box are your pathway toward the ultimate technique[if the score is less than gotta-have], but your score is not yet high enough for me to give it to you.' He gestures toward the top right of the screen.[else].'[end if]"

To say thisthat:
	if the monk encloses the wooden box:
		say "this";
	otherwise:
		say "that".

A monk is a man in the island. The monk is wearing a gray robe. The description of the robe is "A simple garment made of rough material, with big sleeves."

The description of the monk is "He stands solemnly, with his arms [if the monk is not wearing the gray robe]at his sides[otherwise]nearly enveloped by the sleeves of his robe[end if].[if the monk carries the box] In one hand he carries a small wooden box.[otherwise][end if]"

The monk is holding a closed openable container called the wooden box. The description of the box is "Plainer than a raw herring.". Understand "wooden" or "box" or "small" or "the box" as the box.

Inside the box is the ineffable mystery. The description of the mystery is "Did you really think you could figure this one out just by looking?" The indefinite article of the mystery is "the".

Understand "[eff] [mystery]" as a mistake ("Nice try, drongo!")

Instead of dropping the mystery:
	say "No way you're going to part with that. You earned it.".

Instead of dropping something that encloses the mystery:
	say "No way you're going to drop that. It contains [the ineffable mystery]!"

Instead of giving something which encloses the mystery to someone:
	say "You can't give away [the ineffable mystery]!"

Instead of giving the ineffable mystery to someone:
	say "You can't give away [the ineffable mystery]!"

Instead of removing the ineffable mystery from the wooden box:
	say "No, no. The ineffable mystery belongs in its box.".

Gotta-have is a number that varies.

When play begins:
	now gotta-have is 5.

Instead of taking the box:
	say "The monk holds [the box] out of your reach. Do you ask him for it?[command clarification break]";
	if the player consents, try asking the monk for the box.

Check the player asking the monk for something (called the doozy):
	if the score is less than gotta-have:
		say "The monk gestures at the top right corner of the screen. 'Your score is too low for you to receive my blessing, traveler!'" instead;
	if the doozy is not the box:
		say "The monk shakes his head. 'I cannot give you such a thing, traveler.'" instead;
	otherwise:
		now the player has the wooden box;
		increase the score by 1;
		say "The monk hands you [the box].[paragraph break]As you take it in your hands, you feel a great weightiness upon your soul.";
		rule succeeds.

Persuasion rule for the monk doing something: persuasion succeeds.

Chapter 8 - Text Understanding

Understand "fisherman/fish/herring/pile/mound/crate" or "herring crate" or "pile of herring" or "mound of herring" as "[fishy]". Understand "city/Denmark/Copenhagen/Hellerup" as "[denhagen]".


Understand "last night" or "our night together" as "[night]". Understand "IIT campus" or "IIT Campus" or "school campus" or "university campus" or "campus" or "school" or "university" or "college" as "[campus]". Understand "programming" or "class" or "Introductory Programming" or "programming class" or "intro programming" or "computer science" or "TA" or "teaching assistant" as "[class]".

Understand "the/-- weed/joint/marijuana/pot/lettuce/dro/hydro/chronic/grass" as "[weed]".

Understand "fisker/fisherman" as "[fisker]".

Understand "the/this/-- island" or "the/-- island of technique" as "[island]".

Understand "the/-- technique" or "ultimate technique" or "the ultimate technique" as "[technique]".

Understand "the/-- mystery" or "the/-- ineffable mystery" as "[mystery]". Understand "eff" or "make love" or "make love to" or "fuck" as "[eff]".

Chapter 9 - Testing - Not for Release

Understand the command "testdirs" as something new.

Testdirs is an action applying to nothing. Understand "testdirs" as testdirs.

Check testdirs:
	do nothing.

Carry out testdirs:
	do nothing.

Report testdirs:
	repeat with roomie running through rooms:
		say "Testing directions in [roomie]";
		now the player is in roomie;
		try directions.

Test p1 with "test apt / test fisherman / test wretched / test comm-then-pile / test train / test friendly / test aaren / test cem-to-campus".

Test p2 with "test ana / test change-ana / test ana / test campus-to-christ / test christ / test pusher / test path / test monk / test mystery-unloseable / test endgame".

Test win with "test p1 / test button / test p2 / look at mystery / use ultimate technique".

Test lose with "test p1 / test p2 / look at mystery / use ultimate technique".

Test apt with "take backpack / open fridge / take steak / cook steak / drink dankdrinke / take panties / go south".

Test fisherman with "ask fisherman about herring / ask fisherman about bird / buy mound of herring / go east".

Test wretched with "x bird / feed mound to bird / w / w".

Test comm-then-pile with "d / ask clerk about money / ask clerk about copenhagen / take one-krone note / ask clerk for two-kroner note / ask clerk for three-kroner note / up / e / buy pile / w".

Test train with "enter c-train / sit on sofa / pull lever".

Test friendly with "w / feed pile to the friendly bird".

Test aaren with "relax / take red flower / take white flower / take blue flower / take yellow flower".

Test cem-to-campus with "e / s".

Test campus with "listen / ".

Test button with "press button / g / g / g / g / g / g / g / g".

Test ana with "ask ana about love / ask ana about sex / ask ana about panties / ask ana about class / ask ana about last night / ask ana about campus / kiss ana / give steak to ana / take steak / give panties to ana".

Test change-ana with "give red flower to ana".

Test campus-to-christ with "north / nw".

Test christ with "listen / x the hippies / x hippie".

Test pusher with "ask pusher about the weed / ask pusher about the hippies / listen / ask pusher for joint / x pusher / buy joint".

Test path with "se / go through small door / x eagle / mount eagle".

Test monk with "ask monk about box / ask monk about weed / ask monk about the ultimate technique / ask monk about the island of technique / ask monk about the fisherman / ask monk for box".

Test mystery-unloseable with "open wooden box / drop wooden box / drop ineffable mystery / take mystery from box / give wooden box to monk / give ineffable mystery to monk".

Test endgame with "ride eagle / go through small door / smoke joint / in".

When play begins (this is the run property checks at the start of play rule):
	repeat with item running through things:
		if description of the item is "":
			say "[item] has no description."