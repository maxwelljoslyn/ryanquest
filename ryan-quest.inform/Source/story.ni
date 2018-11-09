"RYAN QUEST 2" by Maxwell Joslyn

Use scoring. Use American dialect.

Book 1 - Procedure

Section 1 - Money

Price is a kind of value. 10 kroner specifies a price. A thing has a price. The price of a thing is usually 0 kroner. After examining something for sale, say "It costs [the price of the noun]."

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

After taking money:
	
The player carries a wallet. The wallet contains money. The price of the money is 5 kroner. The printed name of the money is "[price of the money]". Understand "cash" as the money.

The wallet contains 1 Uncle Sam.

Instead of taking the money:
	say "No need to do anything with that until you want to buy something."

Instead of buying something free:	
	say "[The noun] doesn't cost any money.";
	[issue: if you try buying something belonging to someone else, you get the "belongs to other" response. I want to override that with an if statement but am not sure of hte syntax.]
	try silently taking the noun.

Instead of buying the money:
	say "The money belongs to you, and you buy things with it."
	
Section 2 - Getting Help

Asking for help is an action out of world. Understand "advice" or "help" or "hint" or "hints" as asking for help.

Carry out asking for help:
	say "Useful keys: [italic type]i[roman type] to show inventory; [italic type]x[roman type] to examine. The author guarantees that some things are worth examining."

Section 3 - Command Prompt

[When play begins: now the command prompt is "What do you do? ".

This is fine, EXCEPT when a sub-prompt shows up. For example, "taking" without an object prompts the "What do you want to take?" sub-prompt. If "What do you do?" is active, then it shows up even after the subprompt "what do you want to take?" and looks super weird since the player has already been asked a question.]

Section 4 - The Bird

[Things to perk up the bird:

- the Uncle Sam (though this can be used later to bribe, too!)
- some herring?
- NOT the panties. "It shows no interest in the sexy panties."

if you feed it anything, you get a point it flies off. if you give it something it doesn't want, it flies off - maybe you'll get a chance later.

Section 5 - Other Stuff

Instead of drinking something (called the drink):
	silently try eating the drink.

The carrying capacity of the player is 4. [One for the backpack, one for the wallet, and one for each hand.]

The sanity-check rules are a rulebook.

This is the sanity-check stage rule:
    abide by the sanity-check rules.

The sanity-check stage rule is listed after the before stage rule in the action-processing rules.

Sanity-check eating an inedible thing:
    say "That's definitely not edible." instead.

A merchant is a kind of person.



[A placement is a kind of value. The placements are boxed, perched, free. The player has a placement. The player is free.]

[#This can be used to try and rectify the below, for later usage.]

[Status is a kind of object. A status is either prepared or unprepared.

The spirit is a status. The spirit is unprepared.

Instead of doing anything when the spirit is unprepared:
    say "Didn't you read the introductory note saying to prepare your spirit?"]

Book 2 - Scenario

When play begins:
	say "It is the Year of Our Lord MMXVIII. You have arrived in the Danish city of Copenhagen to pursue a master's degree. You found an apartment for let in the suburb of Hellerup, and promptly moved in. The place isn't much, but for the next two years it's home.
	
	
	
	[bold type]PREPARE YOUR SPIRIT FOR . . .[roman type]
	
	
	
	"

Section 1 - Hellerup Apartment

Hellerup is a region.

The Apartment is a room in Hellerup. "Your apartment is a cheery little box. On the east wall is a round window. A woven rug adorns the floor in the middle of the room. Along the west wall are a fridge and some shelves. A bed lies in the northwest corner, and a stove lies in the northeast." The Apartment is lighted.

The player is in the apartment.

The apartment door is south of the Apartment and north of Hellerup Strandvejen. The apartment door is a door and scenery. The description is "Just looking at this door makes you eager to start each day."

The apartment contains a backpack. The backpack is a player's holdall. The description of the backpack is "Adorned with the seal of Reed College, your undergraduate alma mater." Understand "pack" as backpack.

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

The description of the stove is "A two-burner electric stove." On top of the stove is a frying pan. The pan is portable.

The shelves are a supporter. On the shelves are a loaf of bread. The loaf of bread is edible and portable. The description of the bread is "Made with 100% Danish wheat."

The Apartment contains a fridge. The fridge is a closed container. The fridge is fixed in place and openable. In the fridge is a piece of cheese, a steak, and a glass bottle. The description of the fridge is "Silver, yet subtle. The handle is [description of handle in lower case]."

The handle is a thing which is part of the fridge. The description of the handle is "Quite affordant."

Instead of pulling the handle:
	try opening the fridge.

The cheese is edible. The description of the cheese is "Purchased in the market." The steak is edible. The description of the steak is "A gift from your landlady: she's rented to Americans before."

The glass bottle is a transparent openable container. The bottle is closed.

In the glass bottle is the Dankdrinke. The indefinite article of Dankdrinke is "some". The Dankdrinke is singular-named. The description of the Dankdrinke is "No drinke is more ergonomik than Dankdrinke!" The Dankdrinke is edible.

After drinking or eating the Dankdrinke:
	say "Your throat is filled with ergonomitivity.";
	increase score by 1.


The Apartment contains an enterable thing called the bed. The description of the bed is "Shaped to perfectly fit the human body." On the bed are bedsheets and a pair of Central European panties.

The description of the bedsheets is "Extremely rumpled from excessive romping." Understand "sheets" as bedsheets. The description of the panties is "Pink and frilly. You should probably return those."

After taking the panties for the first time:
	say "Nice.";
	increase score by 1.

Test apt with "x fridge / open fridge / x bottle / open bottle / x Dankdrinke / drink Dankdrinke / x sheets / x panties / x rug / take panties"

Test leave with "get pack / go south / go east / look "

Section 2 - Outdoors in Hellerup

Hellerup Strandvejen is a room in Hellerup. "The main street of Hellerup is bordered on its north side by brightly-painted row houses, such as the one containing your apartment. At the east end is a dock, and if you go west you can catch a train."

Some row houses are scenery in Hellerup Strandvejen.

The street vendor is a man in Hellerup Strandvejen. The vendor is wearing a long coat, a fingerless glove, a pair of trousers, and a pair of sneakers. A pocket is part of the long coat. The pocket is a container. The pocket has carrying capacity 1. In the pocket is a fistful of herring.

The description of the long coat is "The vendor's coat has clearly seen better days. From the sole remaining pocket protrudes [a list of things in the pocket]."

The description of the glove is "Dirty." The description of the trousers is "Threadbare." The description of the sneakers is "Stained." Understand "shoes" as sneakers.

A wheelbarrow is a thing in Strandvejen. The wheelbarrow is a container which is pushable between rooms. The wheelbarrow has carrying capacity 3. In the wheelbarrow is a pile of herring and a mound of herring. The description of the wheelbarrow is "Rusty but serviceable. It contains [a list of things in the wheelbarrow]." The price of the pile of herring is 1 kroner. The price of the mound of herring is 2 kroner.

The description of the street vendor is "A friendly purveyor of herring, and perhaps more. He wears [a list of things worn by the street vendor]."

Part 1 - Dock and Eagle

The Dock is a room in Hellerup. "This is a shabby little dock used for the fishing trade. At the end of the dock, a little rowboat, moored with a rope, bobs up and down." The dock is east of Strandvejen.

A rowboat and a rope are scenery in the dock. The rowboat is an open enterable container. The description of the rowboat is "This rowboat is sad but serviceable.[if the rowboat contains something] Aft of the oarbench is [a list of things in the rowboat][otherwise][end if]"

In the rowboat is a locked lockable closed openable fixed in place container called the herring crate.

On top of the herring crate is an animal called a wretched bird. The description of the bird is "The species is impossible to identify, but its plumage is wilted, its beak is crooked, and its eyes are dull."

Part 2 - Hellerup Train Platform

The Train Platform is a room in Hellerup. "The open-air train platform has a line that runs to Copenhagen every 20 minutes." The train platform is west of Strandvejen.




Section 3 - Copehagen Train Platform

[do I have the direction right here - hellerup is on an island east of copenhagen proper?]