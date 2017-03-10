"Cowherd" [Boring name?] by "Jeremy John Reeder, along with Jesse and Hunter Evans".
[Based on "Lo Lleó", by Francesc Maspons i Labrós. It's an old Catalonian fairy tale.]

The release number is 1.


Volume 1 - Infrastructure


Part 1 - Story Configuration

The story headline is "A metapoetic fairy-tale adventure". The story genre is "Epic Poem".

The story description is "There was once a girl . . ."

Use the serial comma. Use no scoring. Use brief room descriptions.

Release along with the source text, a library card, an introductory booklet, and a website.


Part 2 - Definitions


Section 1 - General Definitions

A thing can be examined or unexamined. A thing is usually unexamined.

After examining an unexamined thing, now the noun is examined.

Instead of examining an examined thing, do nothing.

Understand the command "look" or "l" as something new.

The standard report waiting rule does nothing.

An object can be literal or figurative. An object is usually literal. An abstract noun is a kind of figurative backdrop.

The find what to enter rule is not listed in the for supplying a missing noun rulebook.


Section 2 - Definitions for the Poetic World

Include version 1/100607 of Real-Time Delays by Erik Temple.

Speed is a kind of value. The speeds are normal and fast. A speed is usually normal. typewriting speed is a speed that varies.

To typewrite (message - some text):
	play the sound of typewriting;
	if glulx timekeeping is supported and the typewriting speed is normal:
		repeat with N running from 1 to the number of lines in the message:
			let the surrounding delay be 5 * (number of characters in line number N in message);
			wait (surrounding delay) milliseconds before continuing, strictly;
			say line number N in the message;
			wait (surrounding delay) milliseconds before continuing, strictly;
		play the sound of silence;
	otherwise:
		say the message.

Setting typewriting speed to is an action applying to one speed. Understand "speed [a speed]" as setting typewriting speed to.
Carry out setting typewriting speed to a speed (called the new speed):
	now the typewriting speed is the new speed.

Sound of silence is the file "silence.ogg".
Sound of typewriting is the file "typewriting.ogg".
Sound of the typewriter bell is the file "typewriter_bell.ogg".
Sound of the carriage return is the file "carriage_return.ogg".

Left is a direction. The opposite of left is right. Understand "left" or "l" as left.

Right is a direction. The opposite of right is left. Understand "right" or "r" as right.

A poetic room is a kind of room. A poetic room has a list of texts called the poem.

After entering a poetic room, now the story viewpoint is the second person singular.

A pause is a kind of open door [for passage between poetic rooms].

Rule for choosing notable locale objects for a room:
	repeat with item running through things in the noun:
		if the noun is a poetic room or the item is a pause:
			set the locale priority of the item to 0. [It's not notable.]

Before going right through a pause:
	say "[bold type]//[roman type]".

Before going left through a pause:
	say "[bold type]\\[roman type]".

Carry out examining an unexamined thing in a poetic room:
	if the description of the noun is "":
		now the description of the noun is "<insert stanza>";
	add the description of the noun at entry one in the poem of the location instead.

Every turn when the location is a poetic room:
	if the poem of the location is empty:
		play the sound of the typewriter bell;
		add "END OF POEM" to the poem of the location;
		say "→";
	otherwise:
		let the stanza be entry one in the poem of the location;
		if the stanza is not "END OF POEM":
			typewrite the stanza;
			remove the stanza from the poem of the location.

Check taking a figurative object when the location is a poetic room:
	remove the noun from play;
	now the actor carries the noun.


Section 3 - Definitions for the Prosaic World

Definition: a room is prosaic if it is not a poetic room.

After entering a poetic room, now the story viewpoint is the first person singular.

Mood is a kind of value. The moods are angry and calm. A person has a mood. A person is usually calm.

Employment is a kind of value. The employments are employed and unemployed. A person has an employment. A person is usually unemployed.

A herd is a kind of animal.


Part 3 - Testing (not for release)

At 9:00 AM:
	now the typewriting speed is fast.


Section 1 - Compliance Rules
[For automated testing]

The compliance rules are a rulebook. When play begins, follow the compliance rules.

The name of the compliance rule is a text that varies. The violations are a list of objects that varies. The violation descriptions are a list of texts that varies.

To name the/-- rule (name - text):
	now the name of the compliance rule is (name).

To initialize the/-- state of the/-- compliance rule:
	name the rule "unnamed rule";
	truncate the violations to zero entries;
	truncate the violation descriptions to zero entries.

To report violations:
	if the violations is not empty or the violation descriptions is not empty:
		say "Compliance rule: [bold type][Name of the compliance rule][roman type][line break]";
		if the violations is not empty:
			say "Violations: [the violations]";
		if the violation descriptions is not empty:
			say "Violation descriptions: [the violation descriptions]";
		say "[paragraph break]";
	initialize the state of the compliance rule.

First compliance rule:
	initialize the state of the compliance rule.

Compliance rule:
	name the rule "Things should have non-blank descriptions.";
	add the list of blankly described things to the violations;
	report violations.

Definition: a thing (called the item) is blankly described if the description of the item is "".

Compliance rule:
	name the rule "Poetic rooms should have poems.";
	add the list of poemless poetic rooms to the violations;
	report violations.

Definition: a poetic room (called the place) is poemless if the poem of the place is {}.

Compliance rule:
	name the rule "Prosaic room descriptions should be in the first person.";
	add the list of second-person prosaic rooms to the violations;
	report violations.

Definition: a room (called the place) is second-person if the description of the place matches the regular expression "You|you".

Compliance rule:
	name the rule "Cardinal directions should not be allowed from poetic rooms.";
	let the acceptable directions be {left, right, up, down};
	repeat with the place in question running through the poetic rooms:
		repeat with the neighbouring place running through the rooms adjacent to the place in question:
			if the best route from the place in question to the neighbouring place is not listed in the acceptable directions:
				add the place in question to the violations;
	report violations.

Compliance rule:
	name the rule "Lateral directions should not be allowed from prosaic rooms.";
	let the acceptable directions be {north, south, east, west, up, down};
	repeat with the place in question running through the prosaic rooms:
		repeat with the neighbouring place running through the rooms adjacent to the place in question:
			if the best route from the place in question to the neighbouring place is not listed in the acceptable directions:
				add the place in question to the violations;
	report violations.

Compliance rule:
	name the rule "All rooms should be reachable.";
	repeat with the destination running through the rooms that are not A1:
		if the best route from A1 to the destination is nothing:
			add the destination to the violations;
	report violations.

Section 2 - Test Cases
[For semi-automated testing: automated steps followed by manual review of responses]

Expecting is an action out of world applying to one value. Understand "expect [text]" as expecting.
Carry out expecting text:
	say "Please verify manually that the responses above and the resulting game state meet your the expectations."

Test 1:2 [Chapter 1 prose] with "orb to B2 / r / e / e / n / x chair / x farmer / x shotgun / talk to farmer / s / n / talk to farmer / expect a job".
Test 2:2 [Chapter 2 prose] with "orb to D2 / r".
Test 3:2 [Chapter 3 prose] with "orb to B4 / r".

Section 3 - Debugging
[For manual, exploratory testing]

Teleporting to is an action applying to one thing. Understand "teleport to/into [any room]" as teleporting to. Understand "orb to/into [any room]" as teleporting to.

Carry out teleporting to a room:
	move the actor to the noun.


Volume 2 - Story


Chapter 1 - Finding Work

[There was once a girl so poor that she had nothing to live on, and wandered about the world asking for charity. One day she arrived at a thatched cottage, and inquired if they could give her any work. The farmer said he wanted a cowherd, as his own had left him, and if the girl liked the place she might take it. So she became a cowherd.]


Section 1 - Poetry about Finding Work
[Poetic map: A1 B1 // A2 B2]

A1 is a poetic room [about poverty]. The poem is {
	"With nothing to live on,[line break]
		I bow my head[line break]
		And wander about the world.[line break]
		For charity I beg.",
	"Had I the heavens[apostrophe] embroidered cloths,[line break]
		Enwrought with golden and silver gleam,[line break]
		The blue and the dim and the dark[line break]
		Of night and half-light and light,",
	"I would sell them for a meal and a place to sleep:[line break]
		But I, being poor, have only my dreams;[line break]
		Such cloths are not cheap,[line break]
		Nor is shelter."
}.

A head is a kind of thing. It is a part of each person. Understand "dream" or "dreams" as the head of the player when the location is A1. The description of the head of the player is "My head is filled with wonder oft-times.[line break]
		Of all the fine things that exist in the world,[line break]
		Why must it all be so hard to acquire?[line break]
		What can I do to make it mine?"

The heavens are a backdrop which is everywhere. Understand "sky", and "heaven" as the heavens. Understand "cloth" and "cloths" as the heavens when the location is A1. The description is
	"I pray to anyone up there[line break]
		That I may end this life of misery,[line break]
		Earn a living,[line break]
		And eat a healthy meal."

The poverty is a backdrop which is everywhere. Understand "world", "road", "dust", and "dusty road" as poverty.

The riches are a backdrop which is everywhere. Understand "riches", "money", and "job" as riches. Understand "cottage" and "shelter" as riches when the location is a poetic room. The description is "My, oh my!" 

B1 is a poetic room [about dreams]. It is right of A1. The poem is {
	"Oh, If it be thy will I shall endure,[line break] 
		And sell ambition at the common mart,[line break]
		And let dull failure be my vestiture,[line break]
		And sorrow dig its grave within my heart.", 
	"Perchance it may be better so—at least[line break]
		I have not made my heart a heart of stone,[line break]
		Nor starved my girlhood of its goodly feast,[line break] 
		Nor walked where Beauty is a thing unknown.",
	"Many a man hath done so; sought to fence[line break]
		In straitened bonds the soul that should be free,[line break] 
		Trodden the dusty road of common sense,[line break]
		While all the forest sang of liberty,",
	"Not marking how the spotted hawk in flight[line break] 
		Passed on wide pinion through the lofty air,[line break]
		To where the steep untrodden mountain height[line break] 
		Caught the last tresses of the Sun God’s hair."
}.

The dreams are a backdrop which is everywhere. Understand "ambition", "heart" as dreams. Understand "failure", "stone", and "bonds" as poverty. Understand "feast", "lofty air", and "air" as riches.

The beauty is a backdrop that is everywhere. Understand "forest", "tresses", and "sun" as beauty. The description is "Astonishing!" 

The freedom is a backdrop that is everywhere. Understand "liberty", "air", "lofty air", "bird", "hawk", and "spotted hawk" as freedom. The description is "Oh, to be free!"

God is a backdrop that is everywhere. Understand "god", "prayer", "sun god", "sun god's hair", and "god's hair" as God.

A pause called the line-1 pause is right of B1 and left of A2.
 
A2 is a poetic room [about a road]. The poem is {
}.

B2 is a poetic room [about a town]. It is right of A2. The poem is {
	"I dream of a thatched cottage.[line break]
		Warmer it would be[line break]
		Than this dusty road[line break]
		[apostrophe]Cross whence I have come."
}.


Section 2 - Prose about Finding Work
[Prosaic map: Wandering the World → Dusty Road → Cottage] 

Wandering the World is right of B2. "I've been wandering about the world for as long as I can remember. I now seek a life of providing for myself. A road leads east." Left of Wandering the World is nowhere. [The way from the poetic world is one-way.]

The Dusty Road is east of Wandering the World. "I've traveled far on this dusty road to escape a life of dependence. No more charity. I see a cottage to the east."

The Cottage Porch is east of the Dusty Road. "Stepping onto a squeaky porch, I see before me an old cottage. It lies to north, its roof thatched with reeds."

A door called the cottage front door is north of the Cottage Porch.

The Cottage Interior is north of the cottage front door. "Simple pine-log furniture and a cast-iron stove fill the small space of this one-room cottage. A shotgun leans against the wall beside a rocking chair." A supporter called a table and a supporter called a stove are here.

A backdrop called a bunk bed is here. The bottom bunk and the top bunk are supporter parts of the bunk bed. An enterable supporter called a rocking chair is here. The description of the rocking chair is "It looks like it's made of pine."

A man called a farmer is on the rocking chair. The description of the farmer is "Ugly as sin." Understand "master" or "boss" as the farmer. A shotgun is here. Understand "gun" as the shotgun. On the table is a pair of spectacles. The pair of spectacles can be worn. Understand "glasses" as the pair of spectacles.

Instead of examining or taking the shotgun:
	say "It's pointing at me now. The man behind the gun doesn't seem to appreciate the liberties that I am taking with his belongings.";
	now the farmer has the shotgun;
	now the farmer is angry.

Instead of entering the chair when the farmer is on the chair:
	say "'Get off me, dag nabbit!', says the farmer on whom I have sat. He expels me from the chair in disgust.";
	now the farmer is angry.

A person can be dirty or clean. A person is usually clean. The player is a dirty female. She is wearing some dirty clothes. Instead of examining the player when the player is dirty, say "I am covered in the excrement of the long, dusty road from whence I came."

Talking to is an action applying to one thing. Understand "talk to [someone]" as talking to.

Instead of talking to an angry person when the actor is unemployed:
	say "I open my mouth to speak, but [the noun][']s furrowed brow and grimacing jaw give me pause."

Instead of talking to a calm farmer when the actor is unemployed:
	say "I ask the old grump if he knows where I might find employment. He says he wants a cowherd, as his own had left him, and that if I like this place I might take it. I suppose I will.";
	now the actor is employed.

Instead of talking to an angry farmer when the actor is employed:
	say "I tell him what I've done. He beats me thoroughly and directs me to get back to work."

After going from a room when the farmer has the shotgun:
	now the farmer is calm;
	try the farmer dropping the shotgun.

[The Bathroom is north of the Thatched Cottage. A bathtub and some clean clothes are here. Understand "tub" as the bathtub. A faucet is in the bathtub.]


Chapter 2 - Herding Cows

[One morning she was driving her cows through the meadows when she heard near by a loud groan that almost sounded human. She hastened to the spot from which the noise came, and found it proceeded from a lion who lay stretched upon the ground.
	You can guess how frightened she was! But the lion seemed in such pain that she was sorry for him, and drew nearer and nearer till she saw he had a large thorn in one foot. She pulled out the thorn and bound up the place, and the lion was grateful, and licked her hand by way of thanks with his big rough tongue.
	When the girl had finished she went back to find the cows, but they had gone, and though she hunted everywhere she never found them; and she had to return home and confess to her master, who scolded her bitterly, and afterwards beat her. Then he said, 'Now you will have to look after the asses.']

A hand is a kind of thing. a hand is worn by every person.

A hand is edible

After eating a hand:
	say "I now crave human fleash, my goal is to eat everyone"

a doda is a thing.

understand "everyone" as doda.

After eating doda:
	say "I everyone and now I die alone with my own sad thoughts";
	end the story

Section 1 - Poetry about Herding Cows
[Poetic map: C1 D1 // C2 D2]

C1 is a poetic room [About cattle]. The poem is {
"Cattle"
}.
 Right of C1 is a poetic room called D1.

C2 is a poetic room. Right of C2 is a poetic room called D2.  The poem of C2 is {
"Cattle are loyal."
}.

Right of D1 and left of C2 is a pause called the line-2 pause.


Section 2 - Prose about Herding Cows

after entering the corral when the farmer is not angry,
	now the actor is employed.

Instead of entering the corral when the farmer is angry,
	do nothing

The cows are a herd. Understand "cow" as the cows.

The lion is a kind of animal.

Before examining the cows,
	say "Cows without a herd leader are useless [line break]
	The farmer asked me to farm these cows."

Instead of examining the cows,
	say "I hear a loud groan that almost sounds human. [line break]
	I must see what this is. [line break]
	I heard the sound from the south. [line break]
	He pays well and is kind, [line break]
	but this groan I must find"  [might be too cheesy].
	
the nown Animals is in the corral.

Instead of examining the animals,
	say "The animals all cows and look hungery."
	
Instead of examining the gate:
	say "The gate is white with paint that is flacking out. A fence sorrownds the animals."

After dropping the clothes:
	say "I pull off my clothes and I am now naked."

A fence is in the corral.

Instead of examining the fence:
	Say "The fence is white just like the gate.  It is conected to the gate to keep the amimals"

The Corral is south of the Cottage Porch and right of D2. "There is a field that is worn from animals living on the land.  A gate is in front of me." Left of the Corral is nowhere. [The way from the poetic world is one-way.]

The gate is an openable container in the corral. There are cows in the gate. The gate is closed.

After going from a room when the gate is open:
	say "the cows follow me with loyalty.";
	now the cows are in the noun.

After opening the gate:
	say "The cows are starving, I have to get them to the meadows. the forest surrounds the meadows, I have to go through the forest. the forest is to the west";
	

The West Meadow is east of the Corral. "A corral is to the west.  A lion lies in front of me."

The Forest is west of the Corral. "The forest is dark and the trees are thick, yet light still comes through easily."

The Middle Meadow is east of the West Meadow.  "I come back and see that my herd is gone, [line break]
why was I so foolish to leave them."

The deep ditch is down of the ditch.  "The cave is dark and damp, [line break]
there are bats swarming all around me."

The East Meadow is east of Middle Meadow. "I have been walking for 5 minutes, I realize that I have past my destination. [line break]
It is coming from the northwest"

The Far East Meadow is east of the East Meadow. "Far down is a ditch I see a shape of an animal, [line break]
the animal that is groaning."

[instead of eating the lion:
	say "you healed the lion!";
	now the lion is nowhere.]

The ditch is south of the Far East Meadow. "I scale the thing and deside to not take my chances, I walk around around and down."

After entering the ditch:
	if the lion is in the deep ditch:
		say "I see the animal a bit farther down."
		
An animal called the lion is in the deep ditch.

[if lion is in deep ditch:
	say " I hear the groan."]
	
The bats are animals.  

The bats are in the Deep Ditch.

Understand "bat" as bats.

Instead of taking the bats:
	Say "I snatch for one in the air, I get bit on the finger and the bats are scared out of the cave";
	now the bats are nowhere

Instead of examining the bats:
	say "The bats are black are hurt my ears with their squealls.  They swirl away from the cave";
	now the bats are nowhere.
	
[learn to do if lion is here and how to make cows go away]

After entering the Middle Meadow:
	Say "I brought the cows to where they can graze, I will watch over them."

[if lion is in deep ditch:
	say "A lion is on the ground , it is injured, you must find something to heal it."]

Instead of examining the lion:
	say "The lion has sharp claws and a long mane. It is hurt, I stare at it intensly."

The lion is either hurt or healthy. The lion is usually hurt [until healed].


Chapter 3 - Herding Asses

[So every day she had to take the asses to the woods to feed, until one morning, exactly a year after she had found the lion, she heard a groan which sounded quite human. She went straight to the place from which the noise came, and, to her great surprise, beheld the same lion stretched on the ground with a deep wound across his face.
	This time she was not afraid at all, and ran towards him, washing the wound and laying soothing herbs upon it; and when she had bound it up the lion thanked her in the same manner as before.
	After that she returned to her flock, but they were nowhere to be seen. She searched here and she searched there, but they had vanished completely!
	Then she had to go home and confess to her master, who first scolded her and afterwards beat her. 'Now go,' he ended, 'and look after the pigs!']


Section 1 - Poetry about Herding Asses
[ A3 B3 // A4 B4 ]

A3 is a poetic room. Right of A3 is a poetic room called B3.

A4 is a poetic room. Right of A4 is a poetic room called B4.

Right of B3 and left of A4 is a pause called the line-3 pause.

The poem of A3 is {
	""
}.


Section 2 - Prose about Herding Asses

The Stable is right of B4. "After a brief intake of breath, I gagged. The smell of this place is wretched. All of [the asses] here have a sad glint in their eyes. It's not hard to see why. If I had to stay here most of the day and all night, I knew I would be sad too. A ladder leads up to the loft. A rock is on the ground. The asses are standing, looking at me tiredly." Left of the Stable is nowhere. [The way from the poetic world is one-way.]

The Loft is above the Stable. "Even less pleasant than the stable it self. It is very warm, humid, and putrid here. A ladder leads down to the stable. Some carrots are on the the floor."

Some carrots are in the Loft. They are edible. Understand "carrot" as the carrots.

Instead of eating the carrots,
	say "I just ate breakfast. Maybe they will come in handy later."
	
Instead of examining the carrots,
	say "They are long, orange, edible vegetables. Animals generally like to eat [carrots]."

[↓↓↓↓↓ is the beginning of "Steve" ↓↓↓↓↓]

Steve is in the Stable.

Understand "rock" as the Steve.

Understand "my precious" as the Steve.

Instead of examining the Steve,
	say "The rock looks friendly. Maybe it wants to be friends with me."

Before taking the Steve,
	say "I am compelled to pick up the rock and name it Steve"
	
Instead of eating the Steve,
	say "Why would I wanna eat Steve? He's meh pal, bruh."
	
Instead of dropping the Steve,
	say "NO!!! Steve is my Precious"
	
[Instead of asking Steve a question,
	say "Steve just sits there. He looks happy but not in the mood for conversation."]

[↑↑↑↑↑ is the end of "Steve" ↑↑↑↑↑]

A herd called the asses is in the Stable.

Understand "ass", "donkey", "mule", or "burro" as the asses.

Instead of examining the asses,
	say "A poor smelly old animal. But they are what I'm here for."
	
Instead of taking the asses,
	say "[The asses] are very stubborn and refuse to go with you. I hear stomachs growling. Maybe they're hungry."

The asses can be fed carrots.

Instead of giving carrots to the asses:
	say "[The asses] make a sound of indignation and out of sheer hunger decide to follow me.";
	now the asses have the carrots.
	
After going from a room when the asses have the carrots:
	say "The asses follow me, somewhat reluctantly.";
	now the asses are in the noun.

Chapter 4 - Herding Pigs

[So the next day she took out the pigs, and found them such good feeding grounds that they grew fatter every day.
	Another year passed by, and one morning when the maiden was out with her pigs she heard a groan which sounded quite human. She ran to see what it was, and found her old friend the lion, wounded through and through, fast dying under a tree.
	She fell on her knees before him and washed his wounds one by one, and laid healing herbs upon them. And the lion licked her hands and thanked her, and asked if she would not stay and sit by him. But the girl said she had her pigs to watch, and she must go and see after them.
	So she ran to the place where she had left them, but they had vanished as if the earth had swallowed them up. She whistled and called, but only the birds answered her.
	Then she sank down on the ground and wept bitterly, not daring to return home until some hours had passed away.]

Section 1 - Poetry about Herding Pigs


Section 2 - Prose about Herding Pigs


Chapter 5 - Solving the Mystery

[And when she had had her cry out she got up and searched all up and down the wood. But it was no use; there was not a sign of the pigs.
	At last she thought that perhaps if she climbed a tree she might see further. But no sooner was she seated on the highest branch than something happened which put the pigs quite out of her head. This was a handsome young man who was coming down the path; and when he had almost reached the tree he pulled aside a rock and disappeared behind it.
	The maiden rubbed her eyes and wondered if she had been dreaming. Next she thought, 'I will not stir from here till I see him come out, and discover who he is.' Accordingly she waited, and at dawn the next morning the rock moved to one side and a lion came out.
	When he had gone quite out of sight the girl climbed down from the tree and went to the rock, which she pushed aside, and entered the opening before her. The path led to a beautiful house. She went in, swept and dusted the furniture, and put everything tidy. Then she ate a very good dinner, which was on a shelf in the corner, and once more clambered up to the top of her tree.
	As the sun set she saw the same young man walking gaily down the path, and, as before, he pushed aside the rock and disappeared behind it.
	Next morning out came the lion. He looked sharply about him on all sides, but saw no one, and then vanished into the forest.
	The maiden then came down from the tree and did exactly as she had done the day before. Thus three days went by, and every day she went and tidied up the palace. At length, when the girl found she was no nearer to discovering the secret, she resolved to ask him, and in the evening when she caught sight of him coming through the wood she came down from the tree and begged him to tell her his name.
	The young man looked very pleased to see her, and said he thought it must be she who had secretly kept his house for so many days. And he added that he was a prince enchanted by a powerful giant, but was only allowed to take his own shape at night, for all day he was forced to appear as the lion whom she had so often helped; and, more than this, it was the giant who had stolen the oxen and the asses and the pigs in revenge for her kindness.
	And the girl asked him, 'What can I do to disenchant you?'
	But he said he was afraid it was very difficult, because the only way was to get a lock of hair from the head of a king's daughter, to spin it, and to make from it a cloak for the giant, who lived up on the top of a high mountain.
	'Very well,' answered the girl, 'I will go to the city, and knock at the door of the king's palace, and ask the princess to take me as a servant.']


Section 1 - Poetry about Solving the Mystery


Section 2 - Prose about Solving the Mystery


Chapter 6 - Making a Coat for the Giant

[So they parted, and when she arrived at the city she walked about the streets crying, 'Who will hire me for a servant? Who will hire me for a servant?' But, though many people liked her looks, for she was clean and neat, the maiden would listen to none, and still continued crying, 'Who will hire me for a servant? Who will hire me for a servant?'
	At last there came the waiting-maid of the princess.
	'What can you do?' she said; and the girl was forced to confess that she could do very little.
	'Then you will have to do scullion's work, and wash up dishes,' said she; and they went straight back to the palace.
	Then the maiden dressed her hair afresh, and made herself look very neat and smart, and everyone admired and praised her, till by-and-bye it came to the ears of the princess. And she sent for the girl, and when she saw her, and how beautifully she had dressed her hair, the princess told her she was to come and comb out hers.
	Now the hair of the princess was very thick and long, and shone like the sun. And the girl combed it and combed it till it was brighter than ever. And the princess was pleased, and bade her come every day and comb her hair, till at length the girl took courage, and begged leave to cut off one of the long, thick locks.
	The princess, who was very proud of her hair, did not like the idea of parting with any of it, so she said no. But the girl could not give up hope, and each day she entreated to be allowed to cut off just one tress. At length the princess lost patience, and exclaimed, 'You may have it, then, on condition that you shall find the handsomest prince in the world to be my bridegroom!'
	And the girl answered that she would, and cut off the lock, and wove it into a coat that glittered like silk, and brought it to the young man, who told her to carry it straight to the giant. But that she must be careful to cry out a long way off what she had with her, or else he would spring upon her and run her through with his sword.
	So the maiden departed and climbed up the mountain, but before she reached the top the giant heard her footsteps, and rushed out breathing fire and flame, having a sword in one hand and a club in the other. But she cried loudly that she had brought him the coat, and then he grew quiet, and invited her to come into his house.
	He tried on the coat, but it was too short, and he threw it off, and declared it was no use. And the girl picked it up sadly, and returned quite in despair to the king's palace.]


Section 1 - Poetry about Making a Coat for the Giant


Section 2 - Prose about Making a Coat for the Giant


Chapter 7 - Making the Coat Longer

[The next morning, when she was combing the princess's hair, she begged leave to cut off another lock. At first the princess said no, but the girl begged so hard that at length she gave in on condition that she should find her a prince as bridegroom.
	The maiden told her that she had already found him, and spun the lock into shining stuff, and fastened it on to the end of the coat. And when it was finished she carried it to the giant.
	This time it fitted him, and he was quite pleased, and asked her what he could give her in return. And she said that the only reward he could give her was to take the spell off the lion and bring him back to his own shape.
	For a long time the giant would not hear of it, but in the end he gave in, and told her exactly how it must all be done. She was to kill the lion herself and cut him up very small; then she must burn him, and cast his ashes into the water, and out of the water the prince would come free from enchantment for ever.
	But the maiden went away weeping, lest the giant should have deceived her, and that after she had killed the lion she would find she had also slain the prince.]


Section 1 - Poetry about Making the Coat Longer


Section 2 - Prose about Making the Coat Longer


Chapter 8 - Killing the Lion

[Weeping she came down the mountain, and weeping she joined the prince, who was awaiting her at the bottom; and when he had heard her story he comforted her, and bade her be of good courage, and to do the bidding of the giant.
	And the maiden believed what the prince told her; and in the morning when he put on his lion's form she took a knife and slew him, and cut him up very small, and burnt him, and cast his ashes into the water, and out of the water came the prince, beautiful as the day, and as glad to look upon as the sun himself.
	Then the young man thanked the maiden for all she had done for him, and said she should be his wife and none other. But the maiden only wept sore, and answered that that she could never be, for she had given her promise to the princess when she cut off her hair that the prince should wed her and her only.
	But the prince replied, 'If it is the princess, we must go quickly. Come with me.']


Section 1 - Poetry about Killing the Lion


Section 2 - Prose about Killing the Lion


Chapter 9 - Getting the Prince Hitched

[So they went together to the king's palace. And when the king and queen and princess saw the young man a great joy filled their hearts, for they knew him for the eldest son, who had long ago been enchanted by a giant and lost to them.
	And he asked his parents' consent that he might marry the girl who had saved him, and a great feast was made, and the maiden became a princess, and in due time a queen, and she richly deserved all the honours showered upon her.]


Section 1 - Poetry about Getting the Prince Hitched


Section 2 - Prose about Getting the Prince Hitched