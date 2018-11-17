"RYAN QUEST 2" by Maxwell Joslyn

Use scoring. Use American dialect.

Book 1 - Procedure

Part 1 - Printing Directions

To say desc dirs:
	repeat with that way running through directions:
		if the room that way from the location is a room:
			 now that way is marked for listing;
	say "[line break][line break]Exits are to [a list of directions which are marked for listing].";
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

Instead of taking the paper kroner:
	increase the price of the money by 1 kroner;
	now the paper kroner is nowhere;
	say "You gain 1 kroner."
	
The player carries a wallet. The wallet contains money. The price of the money is 5 kroner. The printed name of the money is "[price of the money]". Understand "cash" as the money.

The wallet contains 1 Uncle Sam.

Instead of taking the money:
	say "No need to do anything with that until you want to buy something."

Definition: a person is other if it is not the player.

Instead of buying something free:
	say "That doesn't cost any money.";
	try silently taking the noun.

Instead of buying the money:
	say "The money belongs to you, and you buy things with it."
	
Part 4 - Getting Help

Table of Commands
Command	Short form	Description
"look"	"l" 	"Describes the room you're in, and the things you can perceive."
"examine" 	"x" 	"Looks at a person or thing more closely to gain information."
"take" 	"take" 	"Pick something up to take with you."
"inventory"	"i"	"Check the items you're carrying with you."
"wait"	"r (for rest)"	"Wait/rest for one turn."

Asking for help is an action out of world. Understand "advice" or "help" or "hint" or "hints" or "please help" or "I need help" or "help me please" as asking for help.

Carry out asking for help:
	say "Good fortune awaits you if you use these keys:";
	say line break;
	repeat through the Table of Commands:
		say "[bold type][command entry][roman type] - [short form entry] - [description entry]";
		say line break.

Part 5 - Bald Eagle

Include Rideable Vehicles by Graham Nelson.

A bird is a kind of rideable animal. A bird has a text called last food.

In Limbo is a bird called the bald eagle. The bald eagle has last food "Nothing". In Limbo is a bird called the friendly bird. The friendly bird has last food "Nothing".

Understand the command "feed" as something new.

Feeding it to is an action applying to one carried thing and one thing.

Understand "feed [something] to [something]" as feeding it to.

Table of Foods
name
pile of herring
mound of herring
steak
 

Check feeding something (called the food) to something (called the eater):
	if the eater is not a person, say "You can't feed an inanimate object!" instead;
	if the eater is not a bird, say "[The eater] [are] not willing to be fed by [us]." instead;
	if the eater is the bald eagle, say "[The eater] [are] perfectly sated." instead;
	if the printed name of the food matches the text "panties", say "Unlike [us], [the eater] [are] entirely unmotivated by sexy underwear." instead;
	if the food is not in L:
			say "[The eater] turns its head away from [the food]." instead.

Carry out feeding something (called the food) to something (called the eater):
	now the food is nowhere;
	now the last food of the eater is the printed name of the food;
	if the eater is the wretched bird:
		now the wretched bird is nowhere;
		now the friendly bird is in the cemetery;
		increase score by 2;
	else if the eater is the friendly bird and the location is the cemetery:
		now the friendly bird is in the path on the gnarled bush;
		increase score by 2;
	else if the eater is the friendly bird and the location is the path:
		now the friendly bird is nowhere;
		now the bald eagle is in the path on the bush;
		increase score by 3.

Report feeding something (called the food) to something (called the eater):
	say "The bird regards you warily, then opens its beak and snaps up [the food]. It swallows in one gulp.
	
	You see a flash of brilliance in its black, beady eyes. Then it caws, and flies off in the direction of Copenhagen.
	
	You feel strangely proud.".
	
Part 6 - Other Stuff

Understand "r" as waiting. [Mnemonic for "rest".]

[concealment]
[Rule for deciding if an item is invisible:
# crib that code from that one concealment example about jackets and coats and stuff, simple as that. then the fistful of herring can go unbidden.]

[When play begins: now the command prompt is "What do you do? ".]
[This is fine, EXCEPT when a sub-prompt shows up. For example, "taking" without an object prompts the "What do you want to take?" sub-prompt. If "What do you do?" is active, then it shows up even after the subprompt "what do you want to take?" and looks super weird since the player has already been asked a question.]

Instead of drinking something (called the drink):
	silently try eating the drink.

The carrying capacity of the player is 3. [One for the backpack and one for each hand.]

The sanity-check rules are a rulebook.

This is the sanity-check stage rule:
    abide by the sanity-check rules.

The sanity-check stage rule is listed after the before stage rule in the action-processing rules.

Sanity-check eating an inedible thing:
    say "That's definitely not edible." instead.

A merchant is a kind of person.

[A merchant has a list of things called the wares.]

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

Part 1 - Hellerup

Hellerup is a region.

Chapter 1 - Hellerup Apartment

The Apartment is a room in Hellerup. "Your apartment is a cheery little box. On the east wall is a round window. A woven rug adorns the floor in the middle of the room. Along the west wall are a fridge and some shelves. A bed lies in the northwest corner, and a stove lies in the northeast."

The player is in the apartment.

The apartment door is south of the Apartment and north of Hellerup Strandvejen. The apartment door is a door and scenery. The description is "Just looking at this door makes you eager to start each day."

The apartment contains a portable thing called a backpack. The backpack is wearable. The backpack is a player's holdall. The description of the backpack is "Adorned with the seal of Reed College, your undergraduate alma mater." Understand "pack" as backpack.

Instead of opening the apartment door when the player does not have the backpack:
	say "You can't go to school without your backpack.";
	stop the action.

The rug, the stove, the round window, and some shelves are scenery in the Apartment.

The description of the round window is "Out the window you can see the Bay of Gentofte."

The description of the rug is "The rug depicts a scene of universal healthcare flying over a lake."

Instead of taking the rug:
	say "You couldn't possibly take that! It belongs to your landlady.";
	stop the action.
	
In the apartment is a dwarf banana tree. The banana tree is portable. The description of the dwarf banana tree is "As friendly as a plant can get, and eminently pocketable." Understand "dwarf tree" and "banana tree" as the dwarf banana tree.

After taking the dwarf banana tree:
        increase score by 0.

The description of the stove is "A two-burner electric stove." On top of the stove is a frying pan. The pan is portable.

The shelves are a supporter. On the shelves are a loaf of bread. The loaf of bread is edible and portable. The description of the bread is "Made with 100% Danish wheat." Understand "shelf" as the shelves.

The Apartment contains a fridge. The fridge is a closed container. The fridge is fixed in place and openable. In the fridge is a piece of cheese, a steak, and a glass bottle. The description of the fridge is "Silver, yet subtle. The handle is [description of handle in lower case]."

The handle is a thing which is part of the fridge. The description of the handle is "Quite affordant."

Instead of pulling the handle:
	try opening the fridge.

The cheese is edible. The description of the cheese is "Purchased in the market." The steak is edible. The description of the steak is "A gift from your landlady: she's rented to Americans before."

The glass bottle is a transparent openable container. The bottle is closed. The description of the bottle is "It contains [a list of things in the bottle]." The bottle has carrying capacity 1.

In the glass bottle is the Dankdrinke. The indefinite article of Dankdrinke is "some". The Dankdrinke is singular-named. The description of the Dankdrinke is "No drinke is more ergonomik than Dankdrinke!" The Dankdrinke is edible.

Instead of drinking the bottle, try drinking the Dankdrinke.

Before drinking the dankdrinke when the glass bottle is closed:
       try opening the bottle.

After drinking or eating the Dankdrinke:
	say "Your throat is filled with ergonomitivity.";
	increase score by 1.


The Apartment contains an enterable thing called the bed. The description of the bed is "Shaped to perfectly fit the human body." On the bed are bedsheets and a pair of Central European panties. Understand "underwear" as the panties.

The description of the bedsheets is "Extremely rumpled from excessive romping." Understand "sheets" or "bedclothes" as bedsheets. The description of the panties is "Pink and frilly. You should probably return those."

After taking the panties for the first time:
	say "Nice.";
	increase score by 1.

Test pack with "get pack".

Test apt with "x fridge / open fridge / x bottle / open bottle / x Dankdrinke / drink Dankdrinke / x sheets / x panties / x rug / take panties".

Test leave with "go south".

Test vendor with "buy pile / buy mound".

Test bird-a with "e / feed pile to bird".

Test docktoplatform with "w / w".

Test uptodock with "test pack / test apt / test leave / test vendor / test bird-a".

Test wait-a with "take paper kroner / r / r / r".

Test etrain with "enter train".

Test xtrain with "exit train".

Test wait-b with "r / r / r / r / r".

Test ceme with "test wait-a / test etrain / test wait-b / test xtrain / w".

Part 2 - Outdoors in Hellerup

Chapter 1 - Hellerup Strandvejen

Hellerup Strandvejen is a room in Hellerup. "The main street of Hellerup is bordered on its north side by brightly-painted row houses, such as the one containing your apartment. At the east end is a dock, and if you go west you can catch a train."

Some row houses are scenery in Hellerup Strandvejen.

Every turn when the vendor is visible:	
	say "The vendor eyes [our] [random thing which is carried by the player]."

The street vendor is a man in Hellerup Strandvejen. The vendor is wearing a long coat, a fingerless glove, a pair of trousers, and a pair of sneakers. A pocket is part of the long coat. The pocket is a container. The pocket has carrying capacity 1. In the pocket is a fistful of herring. The fistful of herring is edible.

The description of the long coat is "The vendor's coat has clearly seen better days. From the sole remaining pocket protrudes [a list of things in the pocket]."

The description of the glove is "Dirty." The description of the trousers is "Threadbare." The description of the sneakers is "Stained." Understand "shoes" as sneakers.

A wheelbarrow is a thing in Strandvejen. The wheelbarrow is a container which is pushable between rooms. The wheelbarrow has carrying capacity 3. In the wheelbarrow is the pile of herring and the mound of herring.

The description of the wheelbarrow is "Rusty but serviceable. It contains [a list of things in the wheelbarrow]."

The price of the pile of herring is 1 kroner. The price of the mound of herring is 2 kroner. The pile of herring and the mound of herring are edible. The description of the pile of herring is "Plump and juicy." The description of the mound of herring is "Moist and fresh."

The description of the street vendor is "A friendly purveyor of herring, and perhaps more. He wears [a list of things worn by the street vendor]."

Chapter 2 - Dock and Bird

The Dock is a room in Hellerup. "This is a shabby little dock used for the fishing trade. At the end of the dock, a little rowboat, moored with a rope, bobs up and down. In the rowboat is a large crate, atop which sits a bird." The dock is east of Strandvejen.

A rowboat and a rope are scenery in the dock. The rowboat is an open container. The description of the rowboat is "This rowboat is sad but serviceable." Understand "boat" as the rowboat.

Instead of entering the rowboat, say "It's much too slippery for a landlubber like you to get in."

In the rowboat is a supporter called the herring crate.

On top of the herring crate is a bird called a wretched bird. The wretched bird has last food "Nothing". The description of the bird is "The species is impossible to identify, but its plumage is wilted, its beak is crooked, and its eyes are dull."

Chapter 3 - Hellerup Train Platform

The Train Platform is a room in Hellerup. "The open-air train platform has a line that runs to Copenhagen every 10 minutes. There are no tickets: just line up and wait for the next train to come." The train platform is west of Strandvejen.

Train Tunnel is a room. The C-Train is an enterable container in the Tunnel. The description of the C-Train is "This train is made of 7 round glass pods. Each pod contains a sofa." Understand "c-train" or "train" or "pod" or "C-train" or "C-Train" as the C-Train.

Instead of exiting when the player is in the C-Train:
	if the C-Train is in the train tunnel:
		say "You can't get out while the train is moving." instead;
	otherwise:
		move the player to the location of the C-Train instead.

A paper kroner is a thing in the platform.

Hellerup Stop is a recurring scene. Train Wait 2 is a recurring scene. Train Wait 1 is a recurring scene. Copenhagen Stop is a recurring scene.

Train Wait 1 begins when play begins.
Train Wait 1 ends when the time since Train Wait 1 began is 5 minutes.

Hellerup Stop begins when Train Wait 1 ends.
Hellerup Stop ends when the time since Hellerup Stop began is 5 minutes.

Train Wait 2 begins when Hellerup Stop ends.
Train Wait 2 ends when the time since Train Wait 2 began is 5 minutes.

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
		say "The C-Train departs, taking you into a tunnel.";
	if the player is in the metro station:
		say "The C-Train departs without you."


Part 3 - Copehagen

Copenhagen is a region.

Chapter 1 - Copenhagen Metro Station

In Copenhagen is a room called Copenhagen Metro Station. The description of the metro station is "This is the main metro station in Copenhagen. Its creator won the Best Dane of the Year Award.

	Stairs lead southward and upward to the IIT Campus exit. Christiana is northwest of here: this much you know.
	
	A small door stands in the southeast corner of the station near a fake tree."

South of the metro station is a room called IIT Campus. IIT Campus is up from the metro station.

A thing called the fake tree is here. Understand "fake" as the fake tree. The fake tree is scenery which is pushable between rooms.

Northwest of the Metro Station is a room called Christiana Main Street.

West of the metro station is a room called Aarenhus Cemetery. 

There is a room in Copenhagen called The Path.

A door called a small unmarked door is southeast of the metro station and northwest of The Path. The small unmarked door is scenery.

Chapter 2 - Aarenhus Cemetery

The description of Aarenhus Cemetery is "Dark paths run here and there among the marble tombs." Understand "graveyard" as the cemetery.

Some marble tombs and some trees are scenery in the cemetery. The flowers are scenery in the cemetery. The description of the flowers is "They grow all over the place." The indefinite article of the flowers is "some".

A flower is a kind of thing. 10 flowers are in Limbo. A flower is always portable.

Instead of taking the flowers:
	let chosen flower be a random flower in Limbo;
	if chosen flower is nothing:
		[there are none remaining]
		say "You realize that if you pick any more flowers, you'll be thrown out.";
	otherwise:
		move the chosen flower to the player;
		say "You pluck a flower from where it grows.".

Chapter 3 - IIT Campus

The description of IIT Campus is "The campus is pretty sleepy in the summer. A construction crew works below the bell tower, but [if Ana is in IIT Campus]the only student you see is Ana.[otherwise]no students are to be seen[end if]."

A girl named Ana is in the IIT Campus. The description of Ana is "A Czech girl. Starting next week, she's your TA for Introductory Programming.You haven't seen her since she spent the night last Friday."

Chapter 4 - Christiana

The description of Christiana Main Street is "This street is lined with drug pushers, filled with tourists, dotted with hippies, and sprinkled with musicians."

A pusher is a merchant in Christiana Main Street.

Chapter 5 - The Path

The description of the path is "This odd little path runs out of the metro station and toward an isolated hill overlooking the bay. The ground is grassy, but the only larger vegetation is a gnarled bush."

A gnarled bush is scenery in the path. The gnarled bush is a supporter.

South of the path is a room called The Hill.
