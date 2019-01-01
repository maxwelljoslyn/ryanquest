"RYAN QUEST 2" by Maxwell Joslyn

Use scoring. Use American dialect.

The maximum score is 10.

The story genre is "Surreal".

The story description is "You, as Ryan Wright, must navigate the curious city of Copenhagen while avoiding its perils and becoming its Casanova."

The story creation year is 2018.

Release along with the introductory postcard.

Release along with a file of "Playtester Instructions" called "playtester-instructions.txt".

Release along with cover art ("A photo of Ryan.").

Book 1 - Procedure

Part 1 - Printing Directions

Understand the command "directions" as something new.

Directions is an action applying to nothing. Understand "directions" or "dirs" or "ways" as directions.

Check directions:
	do nothing.

Carry out directions:
	do nothing.

Report directions:
	repeat with that way running through directions:
		if the room that way from the location is a room:
			now that way is marked for listing;
		if the room that way from the location is the Belly and the fake tree is locked:
			now that way is not marked for listing;
	say "From here you can go [list of directions which are marked for listing].";
	now every direction is not marked for listing.
	
Part 2 - Money

Price is a kind of value. 10 kroner specifies a price. A thing has a price. The price of a thing is usually 0 kroner. After examining something for sale which is not the money, say "It costs [the price of the noun]."

Definition: a thing is free if the price of it is 0 kroner.
Definition: a thing is for sale if it is not free.

Instead of taking something for sale:
	say "That costs money."
	
Before buying something for sale when the money is not in the wallet:
	say "You don't have any money." instead.
	
Before buying something for sale when the money is free:
	say "You don't have any money." instead.
	
Before buying something for sale when the price of the money is less than the price of the noun:
	say "You don't have enough money for [the noun]." instead.
	
Instead of buying something:
	decrease the price of the money by the price of the noun;
	say "You pay [the price of the noun] for [the noun], leaving yourself with [the price of the money].";
	if the money is free:
		now the money is nowhere;
	now the price of the noun is 0 kroner;
	now the player is carrying the noun.

[The plural of paper krone is paper krone.]
Instead of taking the paper krone:
	increase the price of the money by 1 kroner;
	now the paper krone is nowhere;
	say "You gain 1 krone."
	
The player carries a wallet. The description of the wallet is "You picked this bad boy up in Italy. It's a genuine Silvatorio Mossaganezza." The wallet contains money. The price of the money is 2 kroner. The printed name of the money is "[price of the money]". Understand "cash" or "kroner" as the money. The description of the money is "[The price of the money] will go further than you expect.".

The wallet contains 1 Uncle Sam. The description of the Uncle Sam is "The hardest currency on Earth."

After examining the Uncle Sam for the first time:
	say "A single tear leaks out as you contemplate the majesty of the USD.".

Instead of taking the money:
	say "No need to do anything with that until you want to buy something."

Definition: a person is other if it is not the player.

Instead of buying something free:
	say "That doesn't cost any money.";
	try silently taking the noun.

Instead of buying the money:
	say "The money belongs to you, and you buy things with it."
	
Part 4 - Getting Help

Understand "r" as waiting. [Mnemonic for "rest".]

Table of Commands
Command	Short form	Description
"look"	"l" 	"Describes your immediate surroundings. For detailed descriptions, specify a direct object (e.g. [']l/look toy['])."
"take" 	"N/A" 	"Picks something up."
"inventory"	"i"	"Shows what you're carrying."
"dirs"	"N/A"	"Lists the directions you can go from here."
"wait"	"r"	"Waits for one turn."



Asking for help is an action out of world. Understand "advice" or "h" or "help" or "hint" or "hints" or "please help" or  "help please" or "I need help" or "help me please" or "I need help please" or "please help me" as asking for help.

Carry out asking for help:
	say "Study well this table:";
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


Part 5 - Ana

The block giving rule is not listed in the check giving it to rules.

The block kissing rule is not listed in the check kissing rulebook.

Instead of taking a person:
	say "You can't take a living thing!".

Instead of showing something (called the thingy) to Ana when Ana is mad:
	now the thingy is in the location;
	say "She slaps [the thingy] out of [our] hand.".

After showing something (called the thingy) to Ana:
	say "She smiles at you and brushes [the thingy] with her hand."

Instead of taking Ana when Ana is touchable:
	[this statement stems from a bug. originally I used the word 'named' to initialize Ana, but the actual keyword for that is 'called'. 'named' gave me a thing instead of a person, and I had to debug for a while to figure it out. ('named' seemed so natural for a person that I overlooked it.)
	
	while debugging I used this code to help me diagnose. I decided to leave it in as a side-gag.]
	say "Ana is incensed. 'Trying to take me in in public?! What would your [one of]glorious[or]precious[or]exalted[at random] [one of]Washington[or]Jefferson[or]Lincoln[or]Hamilton[at random] think of that?'".

Test bungo with "purloin steak / purloin panties / purloin red flower / gonear ana / give steak to ana / touch ana / kiss ana / give flower to ana / touch ana / kiss ana / give panties to Ana".

Instead of touching Ana when Ana is mad:
	say "She slaps your hand away."

Instead of pressing or pushing Ana, try touching Ana.

After touching Ana:
	say "You caress her, and she rubs her head against your hand."
	[Writing this "after" rule also stops the default "Ana might not like that" thing from printing]

Instead of kissing Ana when Ana is mad:
	say "She slaps the kiss right off your lips."

After kissing Ana:
	say "You plant your [lippy] lips on her [one of]cheek[or]forehead[or]nose[then at random], and she [one of]squeals[or]wiggles[purely at random] in delight."

Before giving something (called the gift) to someone (called the taker):
	if the taker is a bird, try feeding the gift to the taker instead;
	if the taker is not Ana, say "[The second noun] [do not] desire [a gift]." instead;
	if the taker is Ana and the gift is not the panties:
		if the gift is not a flower:
			now the gift is in the location;
			say "She slaps [the gift] out of [our] hand." instead.

Instead of giving the panties to Ana when Ana is mad:
	say "She blushes, snatches [the panties], and flounces off.";
	now Ana carries the panties;
	now Ana is in Limbo;
	say line break;
	say "Looks like you didn't handle that one too well.".
	
After giving the panties to Ana:
	say "She blushes deeply, then stuffs them into her pocket. 'Thank you,' she says softly.";
	increase score by 1.
	
After giving a flower to Ana for the first time:
	now Ana is happy;
	say "Ana sighs and kisses your cheek. She strolls over to the bench, and sits down to gaze at the flower.";
	now Ana has the noun;
	now Ana is on the stone bench;
	increase score by 1.

After giving a flower to Ana:
	say "Ana [one of]giggles[or]grins[or]blushes[or]tickles [regarding the player][our] hand[then at random].";
	now Ana is carrying the noun.


Part 6 - Bald Eagle

Include Rideable Vehicles by Graham Nelson.

A bird is a kind of rideable animal.

Instead of kissing a bird:
        say "[The noun] shies away from your [lippy] lips."

Instead of kissing the pusher:
	say "[The noun] scowls at you."
	
Instead of kissing the street vendor:
	say "The vendor swallows nervously and leans away from you."

To say lippy:
	let Z be {"quivering", "parted", "soft", "searching"};
	sort Z in random order;
	say "[entry 1 of Z]".

Limbo is a room. In Limbo is a bird called the bald eagle.

In Limbo is a bird called the friendly bird.

Instead of mounting the friendly bird:
	say "[The noun] is too small to ride."

Instead of mounting the wretched bird:
	say "[The noun] is too weak and sickly to ride."

The description of the bald eagle is "Its plumage feathers are a rich brown, edged with a color that can only be called the Gold Standard. Its head is the same shade as the White House itself."

The description of the friendly bird is "The bird seems to have regained some energy after eating. [one of]Its plumage has a healthy sheen[or]It clucks happily to itself[or]It preens and struts about[then at random]."

Understand the command "feed" as something new.

Feeding it to is an action applying to one carried thing and one thing.

Understand "feed [something] to [something]" as feeding it to.

Check feeding something (called the food) to something (called the eater):
	if the eater is not a person, say "You can't feed an inanimate object!" instead;
	if the eater is not a bird, say "[The eater] [are] not willing to be fed by [us]." instead;
	if the eater is the bald eagle, say "[The eater] [are] is free from all desire." instead;
	if the printed name of the food matches the text "panties", say "Unlike [us], [the eater] [are] entirely unmotivated by sexy underwear." instead;
	let Q be {steak, Uncle Sam};
	if the eater is the wretched bird and the food is listed in Q:
		say "[A food] is much too good for [the eater]." instead;
	if the eater is the friendly bird and the food is listed in Q:
		say "[The food] would be wasted on [the eater]." instead;
	let L be {pile of herring, mound of herring, steak, Uncle Sam};
	if the food is not listed in L:
		say "[The eater] turns its nose up at [the food]." instead.

Carry out feeding something (called the food) to something (called the eater):
	now the food is nowhere;
	if the eater is the wretched bird:
		now the wretched bird is nowhere;
		now the friendly bird is in the cemetery;
		increase score by 1;
	else if the eater is the friendly bird and the location is the cemetery:
		now the friendly bird is on the gnarled bush;
		increase score by 1;
	else if the eater is the friendly bird and the location is the path:
		now the friendly bird is nowhere;
		now the bald eagle is on the gnarled bush;
		increase score by 2.

Report feeding something (called the food) to something (called the eater):
	if the eater is the wretched bird:
		say "[The eater] regards you warily, then opens its beak and snaps up [the food]. It swallows in one gulp.";
		say line break;	
		say "You see a flash of brilliance in its black, beady eyes. Then it caws, and flies off in the direction of Copenhagen.";
		say line break;
		say "You feel strangely proud.";
	else if the eater is the friendly bird and the location is the cemetery:
		say "[The eater] nuzzles your hand, then gently spears [the food] with its beak. It jerks its head, tossing [the food] into the air, then leaps into the air to grab it.";
		say line break;
		say "It circles lazily above you for a minute or two, then soars off elsewhere.";
	else if the eater is the friendly bird and the location is the path:
		say "[The eater] shrieks in triumph. It ascends into the sky, until it is so far away that you can only perceive a black dot.";
		say line break;
		say "There is a flash of light so brilliant that you have to avert your eyes. When you look up again, [the eater] has returned, its true form revealed to your worthy personage.".
		
After mounting the bald eagle for the first time: [on the path]
	say "The eagle shrieks, and dives off the promontory with you on its back. As you cling for dear life, it swoops down to skim the water, then soars out above the bay.
	
	The view out here is breathtaking. Twisting your head around, you can look back and see all of Copenhagen laid out like a continental breakfast.
	
	";
	now the player is in the island;
	now the eagle is in the island.

After mounting the bald eagle for the second time: [on the island]
	say "The eagle screams, and jetplanes into the heavens with you on its back. After another harrowing ride over the bay, the eagle deposits you neatly on the promontory.";
	now the player is in the path;
	now the eagle is in the path.

After mounting the bald eagle when the location is the path:
	say "The eagle screams in the language of liberty, and carries you to the island.";
	now the eagle is in the island;
	now the player is in the island.

After mounting the bald eagle when the location is the island:
	say "The eagle shrieks freedomishly, and carries you to the promontory.";
	now the player is in the path;
	now the eagle is in the path.
		
Part 7 - Other Stuff


[Rule for deciding if an item is invisible:
# crib that code from that one concealment example about jackets and coats and stuff, simple as that. then the fistful of herring can go unbidden.]

[When play begins: now the command prompt is "What do you do? ".]
[This is fine, EXCEPT when a sub-prompt shows up. For example, "taking" without an object prompts the "What do you want to take?" sub-prompt. If "What do you do?" is active, then it shows up even after the subprompt "what do you want to take?" and looks super weird since the player has already been asked a question.]



The carrying capacity of the player is 3. [One for the backpack and one for each hand.]

A merchant is a kind of person.

[A merchant has a list of things called the wares.]

Part 8 - Food and Cooking

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
	increase score by 1;
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
		
Part 9 - Testing - Not for Release

When play begins (this is the run property checks at the start of play rule): 
	repeat with item running through things: 
		if description of the item is "": 
			say "[item] has no description."

Book 2 - Scenario

When play begins:
	say "It is the Year of Our Lord MMXVIII. You have arrived in the Danish city of Copenhagen to pursue a master's degree. You found an apartment for let in the suburb of Hellerup, and promptly moved in. The place isn't much, but for the next two years it's home.	";
	say line break;
	say line break;
	say line break;
	say line break;
	say "[bold type]PREPARE YOUR SPIRIT FOR . . .[roman type]";
	say line break;
	say line break;
	say line break;
	say line break;

When play begins:
	now the left hand status line is "Loc: [the player's surroundings]";
	now the right hand status line is "Points: [score]/[maximum score]".

Part 1 - Hellerup

Hellerup is a region.

Chapter 1 - Hellerup Apartment

The Apartment is a room in Hellerup. "Your apartment is a cheery little cube. On the east wall is a round window. A woven rug adorns the floor in the middle of the room. Along the west wall are a fridge and some shelves. A bed lies in the northwest corner, and a stove lies in the northeast."

The player is in the apartment.

[Instead of exiting the apartment:
        try going south.]

The apartment door is a door. It is south of the Apartment and north of Hellerup Strandvejen. The description is "Just looking at this door makes you eager to start each day."

The apartment contains a portable thing called a backpack. The backpack is wearable. The backpack is a player's holdall. The description of the backpack is "Adorned with the seal of Reed College, your undergraduate alma mater." Understand "pack" as backpack.

Instead of opening the apartment door when the player does not have the backpack:
	say "You can't go to school without your backpack.";
	stop the action.

The rug, the stove, the round window, and some shelves are scenery in the Apartment.

The description of the round window is "Out the window you can see the Bay of Gentofte. Some way out in the water is a small island. From here it looks quite pleasant[if the island is visited], but you know that it's actually kind of a shithole[otherwise][end if]."

The description of the rug is "The rug depicts a scene of universal healthcare flying over a lake."

Instead of taking the rug:
	say "You couldn't possibly take that! It belongs to your landlady.";
	stop the action.
	
In the apartment is a dwarf banana tree. The banana tree is portable. The description of the dwarf banana tree is "As friendly as a plant can get, and eminently pocketable. Its name is Benjamin." Understand "dwarf tree" and "banana tree" and "Benjamin" and "Ben" as the dwarf banana tree.

The description of the stove is "A two-burner electric stove." On top of the stove is a frying pan. The pan is portable. The description of the pan is "Danish engineering makes bad food an impossibility." Understand "pan" as the frying pan.

The shelves are a supporter. On the shelves is a food called a loaf of bread. The description of the bread is "Made with 100% Danish wheat." Understand "shelf" as the shelves. The description of the shelves is "Each of the shelves is thin enough to shave with."

The Apartment contains a fridge. The fridge is a closed container. The fridge is fixed in place and openable. The description of the fridge is "Silver, yet subtle. The handle is [description of handle in lower case]". The handle is a thing which is part of the fridge. The description of the handle is "Quite affordant."

Instead of pulling the handle:
	try opening the fridge.

Instead of pushing the handle:
	try closing the fridge.
	
The piece of cheese and a steak are foods in the fridge. The description of the cheese is "Purchased in the airport." The steak is not edible. The description of the steak is "A gift from your landlady: she's rented to Americans before."

The glass bottle of Dankdrinke is an edible thing in the fridge. The description of the bottle is "No drinke is more ergonomik than Dankdrinke!"

Instead of drinking something (called the drink):
	silently try eating the drink.

After drinking or eating the Dankdrinke:
	say "Your throat is filled with ergonomitivity.";
	increase score by 1.

The Apartment contains an enterable thing called the bed. The description of the bed is "Shaped to perfectly fit the human body." On the bed are bedsheets and a pair of Central European panties. Understand "underwear" as the panties.

After smelling the panties:
	say "Pervert."

Instead of wearing the panties:
        say "No way: you'd stretch them."

The description of the bedsheets is "Extremely rumpled from excessive romping." Understand "sheets" or "bedclothes" as bedsheets. The description of the panties is "Pink, frilly, and definitely not yours."

After taking the panties for the first time:
	say "Nice.".

Test pack with "get pack".

Test apt with "x fridge / open fridge / x bottle / x Dankdrinke / drink Dankdrinke / x sheets / x panties / x rug / take panties / take banana tree".

Test leave with "go south".

Test vendor with "buy pile / buy mound".

Test bird-a with "e / feed pile to bird".

Test docktoplatform with "w / w".

Test uptodock with "test pack / test apt / test leave / test vendor / test bird-a".

Test wait-a with "take kroner / r / r / r / r / r / r ".

Test trainto with "enter train / r / r / r / r / r / r / r / r / r".

Test uptocope with "test uptodock / w / w / test wait-a / test trainto / exit".

Test ana with "s / give banana tree to ana / show banana tree to ana / take banana tree / take ana / give panties to ana".

Part 2 - Outdoors in Hellerup

Chapter 1 - Hellerup Strandvejen

Hellerup Strandvejen is a room in Hellerup. "The main street of Hellerup is bordered on its north side by brightly-painted row houses, such as the one containing your apartment. At the east end is a dock, and if you go west you can catch a train."

Some row houses are scenery in Hellerup Strandvejen. The description of the row houses is "I said brightly-painted and I goddamn meant it. Cheery as heck, and at least a century old."

Every turn when the vendor is visible:
	if a random chance of 1 in 3 succeeds:
		let L be the list of things in the wheelbarrow;
		if the number of entries in L is not 0:
			say "The vendor calls out, 'Today I have [L with indefinite articles]! Fresh!'";
		otherwise:
			say "The vendor [one of]winks at [us][or]taps his foot[or]grins cheerfully[at random].".

The street vendor is a merchant in Hellerup Strandvejen. The vendor is wearing a long coat, a fingerless glove, a pair of trousers, and a pair of sneakers. A pocket is part of the long coat. The pocket is a container. The pocket has carrying capacity 1. In the pocket is a fistful of herring. The fistful of herring is edible. The description of the pocket is "Haphazardly stitched." The description of the fistful of herring is "Must be tucked away for a rainy day."

Does the player mean taking a fistful of herring: it is unlikely.

The description of the long coat is "The vendor's coat has clearly seen better days. From the sole remaining pocket protrudes [a list of things in the pocket]."

The description of the glove is "Dirty." The description of the trousers is "Threadbare." The description of the sneakers is "Stained." Understand "shoes" as sneakers.

A wheelbarrow is a thing in Strandvejen. The wheelbarrow is a container which is pushable between rooms. The wheelbarrow has carrying capacity 3. In the wheelbarrow is the pile of herring and the mound of herring.

Instead of taking the wheelbarrow:
	say "That belongs to the street vendor.".

The description of the wheelbarrow is "Rusty but serviceable. It contains [a list of things in the wheelbarrow]."

The price of the pile of herring is 1 kroner. The price of the mound of herring is 2 kroner. The pile of herring and the mound of herring are edible. The description of the pile of herring is "Plump and juicy." The description of the mound of herring is "Moist and fresh."

Instead of the player eating the mound of herring:
	now the mound of herring is inedible;
	say "Ugh, it's really not as good as it looks.";
	now the mound of herring is edible.

The description of the street vendor is "A friendly purveyor of herring, and perhaps more. He wears [a list of things worn by the street vendor]."

Chapter 2 - Dock and Bird

After listening to in the dock:
	say "You hear the gentle wind that stirs the Gentofte waters."

The Dock is a room in Hellerup. "This is a shabby little dock used for the fishing trade. At the end of the dock, a little rowboat, moored with a rope, bobs up and down. In the rowboat is a large crate, atop which sits a bird." The dock is east of Strandvejen.

A rowboat and a rope are scenery in the dock. The rowboat is an open container. The description of the rowboat is "This rowboat is sad but serviceable." Understand "boat" as the rowboat.

The description of the rope is "Soaked and salty, but somehow still strong.".

Instead of entering the rowboat, say "[The rowboat] is much too slippery for a landlubber like you to get in."

In the rowboat is an enterable supporter called the herring crate. The description of the crate is "It's got to be loaded with herring." The crate is fixed in place.

On top of the herring crate is a bird called a wretched bird. The description of the bird is "The species is impossible to identify, but its plumage is wilted, its beak is crooked, and its eyes are dull."

Chapter 3 - Hellerup Train Platform

The Train Platform is a room in Hellerup. "The open-air train platform has a line that runs to Copenhagen every 10 minutes. There are no tickets: it is free to ride.

[if the commissary is visited]There is a staircase leading upward in the northwest corner of the station[else]In the northwest corner of the station stands the staircase that leads to the Commissary[end if]."

The train platform is west of Strandvejen.

A wall sign is a thing in the train platform. The wall sign is fixed in place. The description of the sign is "It reads, 'PLEASE WAIT FOR TRAIN'."

Train Tunnel is a room. The description of the tunnel is "This underwater transit tunnel represents a feat of engineering. Its creator won the Most Illustrious Dane medal."

The C-Train is an enterable container in the Tunnel. The description of the C-Train is "This train is a large glass lozenge containing one big wrap-around sofa." Understand "c-train" or "train" or "pod" or "C-train" or "C-Train" as the C-Train. The C-train is not portable.

Instead of taking the C-train:
	say "You can hardly pick up a train!".

The wrap-around sofa is an enterable supporter in the C-Train. Understand "couch" as the wrap-around sofa. The description of the sofa is "Made of plush leather for discerning Danish derrieres." The sofa is fixed in place.

Understand the command "board" as something new.

Boarding is an action applying to one thing. Understand "board [something]" as boarding.

Check boarding something:
	if the noun is not the C-train, say "You can't board that!".

Carry out boarding something:
	try entering the noun instead.

Instead of exiting when the player is in the C-Train:
	if the C-Train is in the train tunnel:
		say "You can't get out while the train is moving." instead;
	otherwise:
		move the player to the location of the C-Train instead.


Hellerup Stop is a recurring scene. Train Wait 2 is a recurring scene. Train Wait 1 is a recurring scene. Copenhagen Stop is a recurring scene.

Train Wait 1 begins when play begins.
Train Wait 1 ends when the time since Train Wait 1 began is 1 minute.

Hellerup Stop begins when Train Wait 1 ends.
Hellerup Stop ends when the time since Hellerup Stop began is 5 minutes.

Train Wait 2 begins when Hellerup Stop ends.
Train Wait 2 ends when the time since Train Wait 2 began is 1 minute.

Copenhagen Stop begins when Train Wait 2 ends.
Copenhagen Stop ends when the time since Copenhagen Stop began is 5 minutes.

Train Wait 1 begins when Copenhagen Stop ends.

When Train Wait 1 ends:
	now the C-Train is in the train platform;
	if the player is in the C-Train:
		say "You arrive in Hellerup.";
	if the player is in the train platform:
		say "The C-Train arrives."

When Hellerup Stop ends:
	now the C-Train is in the Train Tunnel;
	if the player is in the C-Train:
		say "The C-Train departs, taking you into a tunnel.";
	if the player is in the train platform:
		say "The C-Train departs without you."

When Train Wait 2 ends:
	now the C-Train is in Copenhagen Metro Station;
	if the player is in the C-Train:
		say "You arrive in Copenhagen.";
	if the player is in the metro station:
		say "The C-Train arrives."

When Copenhagen Stop ends:
	now the C-Train is in the Train Tunnel;
	if the player is in the C-Train:
		say "The C-Train departs, taking		 you into a tunnel.";
	if the player is in the metro station:
		say "The C-Train departs without you."
		
Chapter 4 - The Socialist Money Commissary

To say arrow text:
	let the word be "This way for money" in upper case;
	say the word.

The arrow-shaped sign is a thing in the train platform. The description of the sign is "The delightfully red arrow is painted with blue text: '[arrow text]'.".


Down from the train platform is a room called Socialist Money Commissary. 
The description of the commissary is "The inside of the commissary is a bit cramped, but the lighting is gentle and there is air-conditioning. ".

The clerk is a woman in the commissary. The clerk is wearing a brown jumpsuit and a gold apron. The description of the clerk is "She gives you the smile of a true believer. She is wearing [a list of things worn by the clerk]." The description of the jumpsuit is "Fish-brown." The description of the apron is "Unfortunately, it's only gold-dyed cloth, not actual gold."

A note is a kind of thing.

The one-krone note, the two-kroner note and the three-kroner note are notes in the commissary. The price of the one-krone note is 1 kroner. The price of the two-kroner note is 2 kroner. The price of the three-kroner note is 3 kroner. The indefinite article of the one-krone note is "a".

The description of the one-krone note is "Depicts a wizard fighting a ghost for a plate of meat."
The description of the two-kroner note is "Depicts Queen Magrethe II. Long may she live!"
The description of the three-kroner note is "Depicts King Jonathon the Blowth."

Instead of buying a note:
	try taking the noun.

Instead of the player taking a note (called the cashola) in the commissary:
	let Y be "[dumb]" in title case;
	say "[Y] American! Under Socialism, everyone has a job to do - and the clerk's job is to hand you that [cashola]. For free!";
	try the clerk taking the cashola;
	try the clerk giving the cashola to the player;
	increase the price of the money by the price of the cashola;
	now the cashola is nowhere.

Instead of asking the clerk for a note (called the cashola):
	say "The clerk does as you ask.";
	try the clerk taking the cashola;
	try the clerk giving the cashola to the player;
	increase the price of the money by the price of the cashola;
	now the cashola is nowhere.

Every turn when the player is in the commissary:
	if there are no notes in the commissary:
		say "Unfortunately, the commissary out of money for the day."

Test comm with "gonear platform / down / x clerk / x one-krone / x two-kroner note / x three-kroner note / take one-krone / ask clerk for two-kroner".

Part 4 - Copehagen

Copenhagen is a region.

Chapter 1 - Copenhagen Metro Station

In Copenhagen is a room called Copenhagen Metro Station. The description of the metro station is "This is the main metro station in Copenhagen. Its creator won the Best Dane of the Year Award.

	Stairs lead southward and upward to the IIT Campus exit.
	
	Christiana is northwest of here, but don't go there at night.
	
	The Danes have built an efficient route running west, from here to the Aarenhus Cemetery.
			
	A small door stands in the southeast corner of the station near a fake tree."

South of the metro station is a room called IIT Campus. IIT Campus is up from the metro station. IIT Campus is in Copenhagen.


Northwest of the Metro Station is a room called Christiana Main Street. Christiana Main Street is in Copenhagen.

West of the metro station is a room called Aarenhus Cemetery. The Cemetery is in Copenhagen.

There is a room in Copenhagen called The Path.

A door called a small door is southeast of the metro station and northwest of The Path. The small door is scenery. The description of the small door is "It's not even a finished door - just a plank of wood on hinges. A sign hangs from a nail in the middle.".

A thing called the small sign is part of the small door. The description of the small sign is "The hand-lettered sign reads, 'My friend, you[']ve gotten [the score] point[s] so far.'".

In the station is a locked lockable closed door called the fake tree. Understand "artificial tree" as the fake tree. The description of the fake tree is "A huge plastic palm tree, fifteen feet tall and twenty feet around. It 'grows' from an inch-thick disc of marble which is set into the floor of the station, disrupting the pattern of tiles around it."

The fake tree is inside from the metro station and outside from the Belly of the Tree.

[When "l" or "x belly" is issued, this code stops the fake tree from being mentioned in the ensuingn description of items in the location. Nondescript roughly means 'has been seen before' which is guaranteed since they've been to the metro station before being able to come in here.]
Before listing nondescript items when the location is the belly:
	now the fake tree is not marked for listing.

Before going through the fake tree to the belly when the fake tree is unlocked:
	say "You walk up to the fake tree. Your instincts propel you onward, and you walk [italic type]into[roman type] the tree.

        You're inside the tree, Ryan.".

The Belly of the Tree is a room in copenhagen. The description of the belly of the tree is "It's gloomy in here."


Chapter 2 - Aarenhus Cemetery

The description of Aarenhus Cemetery is "Dark paths run here and there among the marble tombs. Some trees provide relaxing shade[if there are flowers in the cemetery], and flowers bloom here and there[otherwise][end if]." Understand "graveyard" as the cemetery.

Some marble tombs and some trees are scenery in the cemetery. The description of the tombs is "Your attention rests on a tomb of [one of]pale white[or]blue-gray[or]gray-green[or]reddish-purple[then at random] marble with [one of]pinkish[or]dark brown[or]silvery[or]gold[purely at random] streaks.". The description of the trees is "Strong and hardy. It's macabre, but bones make excellent fertilizer.". Understand "tomb" or "marble" as the tombs. Understand "tree" as the trees.

A paper krone is a thing in the platform. The description of the paper krone is "It bears the likeness of King Christian IV. He rekt Northern Germany during the Thirty Years War."

Understand the command "relax" as something new.

Relaxing is an action applying to nothing. Understand "relax" or "relax in the shade" as relaxing.

Has-relaxed is a truth state that varies. When play begins: now has-relaxed is false.

Check relaxing:
	if the location is not the cemetery:
		say "You can kill time with 'r' or 'wait', but if you want to truly relax, you're in the wrong place." instead.

Carry out relaxing for the first time:
	increase score by 1;
	now has-relaxed is true;
	do nothing.

Carry out relaxing:
	do nothing.

Report relaxing for the first time:
	say "You take a deep breath of Danish air, and let it out slowly.".

Report relaxing:
	say "You breathe in and out. Now you're calmer than ever.".

To say qualifier:
	let Z be {"superb", "excellent", "terrific", "perfect"};
	sort Z in random order;
	say "[entry 1 of Z]".

Every turn when the player is in the cemetery:
	if has-relaxed is true:
		do nothing;
	otherwise:
		if a random chance of 1 in 4 succeeds:
			say "This seems like a [qualifier] place to relax.".

A flower is a kind of thing. A flower is always portable.

A red flower, a white flower, a blue flower, and a yellow flower are flowers in the cemetery. The description of the red flower is "Sweet-smelling." The description of the white flower is "The color of fine linen." The description of the blue flower is "As blue as the sky." The description of the yellow flower is "The yellow petals crinkle at the edges."

Chapter 3 - IIT Campus

The description of IIT Campus is "The campus is pretty sleepy in the summer. A construction crew works below the bell tower, but [if Ana is in IIT Campus]the only student you see is Ana[otherwise]no students are to be seen[end if]."

A woman called Ana is in the IIT Campus. The description of Ana is "A Czech girl. Starting next week, she's your TA for Introductory Programming. Starting last night, she's your lover."

Ana is proper-named.

A person can be mad or happy. A person is usually happy. Ana is mad.

The stone bench is an enterable supporter in the campus. The stone bench is fixed in place. The description of the bench is "Effortlessly square.

On the base, nearly invisible, is an unlabelled beige button." The carrying capacity of the bench is 1.

The button is a device. The button is part of the bench. The description of the button is "Rounder than round: it's Dane-Rounde."

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
			increase score by 1. [Give a point for making it all the way through the hint.]
	
Test butt with "gonear button / press button / g / g / g / g / g / g / g / g".

[A worker is a kind of man.

The pipefitter and the carpenter are workers in IIT Campus.

Before touching a worker, say "You don't want to get in the way of their work." instead.

The description of the pipefitter is "Short and squat." The description of the carpenter is "Tall and thin."

After listening to in IIT Campus:
	let Y be {"[metaller]", "[woodler]"};
	if a random chance of 1 in 2 succeeds:
		say "The pipefitter fiddles with a [the
	otherwise:
		now X is "carpenter";
	
		
	say "The workers are [one of]sawing a [woodler][or]hammering a [woodler][or]joking with each other[then at random]."

To say woodler:
	say "[one of]board[or]plank[then at random]".

To say metaller:
	say "[one of]pipe[or]bracket[or]bolt[then at random]".]]
	

Chapter 4 - Christiana

After listening to in Christiana Main Street:
	say "You hear a dreadful din."

The description of Christiana Main Street is "This street is lined with drug pushers, filled with tourists, dotted with hippies, and sprinkled with musicians."

To say pusher-desc:
	say "His eyes are freaky, but your friends say he's honest.".

A pusher is a merchant in Christiana Main Street. The description of the pusher is "[pusher-desc]".

To eye is a verb.
Every turn when the pusher is visible:	
	say "[The pusher] [adapt verb eye] [our] [random thing which is carried by the player]."

A pushcart is a supporter in Christiana Main Street. The pushcart is pushable between rooms. The description of the pushcart is "A vital tool of the drug trade.".

A drug is a kind of thing. A drug is usually portable.

A marijuana joint is a drug on the pushcart. The marijuana joint has price 2 kroner. The description of the joint is "This is the premium shit right here." Understand "weed" or "pot" or "cigarette" or "jazz cabbage" or "devil's lettuce" or "Devil's lettuce" as the joint.

Understand the command "smoke" as something new.

Smoking is an action applying to one carried thing. Understand "smoke [something]" as smoking.

Yourself can be sober or baked.

When play begins:
	now the player is sober.

Check smoking something (called the junk):
	if the junk is not a drug, say "You don't want to smoke [the junk]." instead;
	if the player is baked, say "You [italic type]really[roman type] don't want to get any higher." instead.

Carry out smoking something (called the junk):
	now the player is baked;
	now the junk is in Limbo.

Report smoking something (called the junk):
	say "You hit it and don't quit it. Your War-on-Drugs work ethic erases that joint from existence.
	
	Now you're baked.".

Not-Baked is a recurring scene. Way-Baked is a recurring scene.

Not-Baked begins when play begins. Not-Baked ends when the player is baked.

Way-Baked begins when Not-Baked ends. Way-Baked ends when the time since Way-Baked began is 20 minutes.

When Way-Baked ends:
	say "Your high has worn off.";
	now the fake tree is locked;
	now the fake tree is closed.

When Way-Baked begins:
	now the description of the pusher is "Busily rolling another mondo joint.";
	now the fake tree is unlocked;
	now the fake tree is open.

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

When Way-Baked ends:
	now the description of the pusher is "[pusher-desc]";
	now the joint is on the pushcart;
	now the fake tree is closed;
	if the player is in the fake tree:
		now the player is in the metro station;
		say "Suddenly, the strange space within the tree squeezes shut. As the walls contract, you are forced out into the metro station. As you face this arboreal mystery, the door on its side shrinks to nothing and disappears."
               

Chapter 5 - The Path

The description of the path is "This odd little path runs out of the metro station and terminates at a promontory overlooking the bay. The ground is grassy, but the only larger vegetation is a gnarled bush.

Out in the bay is a small island."

A gnarled bush is scenery in the path. The gnarled bush is a supporter. The description of the bush is "The leaves and branches are so tangled that it could probably support some weight." The carrying capacity of the bush is 1.

Chapter 7 - The Island

The Island of Technique is a room in Copenhagen. The description of the island is "This little island is no tropical paradise. It's more like someone carved a chunk off of Scotland and dropped it at the edge of the bay. Foggy, muddy, and riddled with trees."

A monk is a man in the island. The monk is wearing a gray robe. The description of the robe is "A simple garment made of rough material, with big sleeves."

The description of the monk is "He stands solemnly, with his arms [if the monk is not wearing the gray robe]at his sides[otherwise]nearly enveloped by the sleeves of his robe[end if].[if the monk carries the box] In one hand he carries a small wooden box.[otherwise][end if]"

The monk is carrying a closed openable container called the wooden box. The description of the box is "Plainer than a raw herring.". Understand "wooden" or "box" or "the box" as the box.

Inside the box is the ineffable mystery. The description of the mystery is "Did you really think your brain would figure this one out just by looking?"

Gotta-have is a number that varies.

When play begins:
	now gotta-have is 8.

Instead of taking the box:
	say "The monk holds [the box] out of your reach. Do you ask him for it?[command clarification break]";
	if the player consents, try asking the monk for the box.

Check the player asking the monk for something (called the doozy):
	if the score is less than gotta-have:
		say "The monk gestures at the top right corner of the screen. 'Your score is too low for you to receive my blessing, traveler!'" instead;
	if the doozy is not the box:
		say "The monk shakes his head. 'I cannot give you such a thing, traveler.'" instead.

Persuasion rule for the monk giving the box to the player: persuasion succeeds.

Carry out the monk giving the box to the player:
	now the player has the wooden box.

After the monk giving the box to the player:
	say "With much gravitas, the monk hands you [the box].
	
	As you take it in your hands, you feel a great weightiness upon your soul.".
		

Test monk with "gonear monk / ask monk for box".



Chapter 7 - Not for release

Test inside-tree with "purloin joint / gonear fake tree / smoke joint / enter tree".

[
DEF to-do todo  TO-DO TODO:
finish descriptions of bald eagle flight

add baked interactions to earlier areas such as the vendor, the train

[Need to deal with case when player has no flower but tries to give one to ana - it silently tries to take one she has, which is unintuitive to the player in this scenario even though it's an OK default message in general.

This code DOESN'T work for that:

Instead of giving something (called the thingy) to someone when the player does not enclose the thingy:
	say "You wish you could give away [a thingy], but you don't have one.".]

seduce command, and effects on ana; on birds? ; on pusher; and others

describ dirs/list directions: make the "from here you can go" thing into a command.

add response for "start day" command

respond to 'open window'

[talkable people - even if it's just a bit of patter, it goes a long way. everyone keeps trying to talk to the people. perhaps they can hint at the UT.]

feeding anything to a person: they refuse it. (i already did this, why didn't it work in the adam playtest?)

reprogram friendly bird so you can get bald eagle via steak OR uncle sam.

NOT going to implement:
go to command
a computer
"tap foot"
dance the ryan dance]