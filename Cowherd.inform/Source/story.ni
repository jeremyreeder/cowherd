"Cowherd" [Boring name?] by "Jeremy John Reeder, along with Jesse and Hunter Evans".
[Based on "Lo Lleó", by Francesc Maspons i Labrós. It's an old Catalonian fairy tale.]

The story creation year is 2017. The release number is 1.


Book 1 - Infrastructure


Part 1 - Story Configuration

The story headline is "A metapoetic fairy-tale adventure". The story genre is "Epic Poem".

The story description is "There was once a girl . . ."

Use the serial comma. Use no scoring. Use brief room descriptions.

Release along with the source text, a library card, an introductory booklet, and a website.


Part 2 - World Definitions


Section 2.1 - General Definitions

A thing can be examined or unexamined. A thing is usually unexamined.

After examining an unexamined figurative thing (this is the delete figurative descriptions upon examination rule):
	now the description of the noun is "↑";
	now the noun is examined.

Last after examining an unexamined thing, now the noun is examined.

Understand the command "look" or "l" as something new.

The standard report waiting rule does nothing.

The find what to enter rule is not listed in the for supplying a missing noun rulebook.


Section 2.2 - Definitions for the Poetic World

[Poetic map:
Chapter 1:	Poverty	B1
Chapter 2:	C1	D1
Chapter 3:	A2	B2
Chapter 4:	C2	D2
Intermission:	//	
Chapter 5:	A3	B3
Chapter 6:	C3	D3
Chapter 7:	A4	B4
Chapter 8:	C4	D4
Chapter 9:	?
]	

Include version 1/100607 of Real-Time Delays by Erik Temple.

Speed is a kind of value. The speeds are normal and fast. A speed is usually normal. typewriting speed is a speed that varies.

Definition: a thing (called the syntagma) is figurative if the syntagma is a backdrop in a poetic room.

To typewrite (message - some text):
	play the sound of typewriting;
	if glulx timekeeping is supported and the typewriting speed is normal:
		repeat with N running from 1 to the number of lines in the message:
			let the surrounding delay be 5 * (number of characters in line number N in message);
			wait (surrounding delay) milliseconds before continuing, strictly;
			say "[fixed letter spacing][line number N in message][variable letter spacing]";
			wait (surrounding delay) milliseconds before continuing, strictly;
		play the sound of silence;
	otherwise:
		say "[fixed letter spacing][message][variable letter spacing]".

Setting typewriting speed to is an action applying to one speed. Understand "speed [a speed]" as setting typewriting speed to.
Carry out setting typewriting speed to a speed (called the new speed):
	now the typewriting speed is the new speed.

Sound of silence is the file "silence.ogg".
Sound of typewriting is the file "typewriting.ogg".
Sound of the typewriter bell is the file "typewriter_bell.ogg".
Sound of a carriage return is the file "carriage_return.ogg".

Left is a direction. The opposite of left is right. Understand "left" or "l" as left.

Right is a direction. The opposite of right is left. Understand "right" or "r" as right.

Scrolling back is an action applying to nothing. Understand "up" or "u" as scrolling back when the location is a poetic room.

Instead of scrolling back, say "[one of]This typewriter can't go that way.[or]To see the text already typed, simply direct your eyes upward.[or]You're doing it wrong.[or]That's what the scrollback buffer is for.[or]I suggest you scroll back through the log of previously displayed text.[or]You're a tenacious one.[or]Your persistent refusal to accept the limits of this metatext are beyond my capacity to correct.[cycling]".

A poetic room is a kind of room. A poetic room has a list of texts called the poem.

The poet is a man. The description is "As [one of]good-looking[or]handsome[or]beautiful[or]gorgeous[or]magnificent[in random order] as ever."

The player is the poet.

Before going to a poetic room when the player is not the poet (this is the entry into the poetic world rule):
	move the poet to the location;
	now the player is the poet;
	now the story viewpoint is the second person singular.

A pause is a kind of open door [for passage between poetic rooms].

Rule for choosing notable locale objects for a room:
	repeat with item running through things in the noun:
		if the item is figurative or the item is a pause:
			set the locale priority of the item to zero. [It's not notable.]

Before going down through a pause:
	say "[bold type]//[italic type]".

Instead of examining an unexamined backdrop in a poetic room during Poem Exploration:
	if the description of the noun is "":
		now the description of the noun is "<insert stanza>";
	add the description of the noun at entry one in the poem of the location;
	follow the delete figurative descriptions upon examination rule.

Definition: A poetic room (called the place) is mostly unexplored if the poem of the place is not empty or the number of examined backdrops in the place is less than the number of unexamined backdrops in the place.

Poem Exploration is a scene. Poem Exploration begins when the location is a mostly unexplored poetic room. Poem Exploration ends when the location is not a mostly unexplored poetic room.

[The following rule is not taking effect, and I don't know why. I'm getting the default "You can't go that way" message instead.]
Unsuccessful attempt by the poet going left when the reason the action failed is the can't go that way rule:
		say "[one of]Oof! That's not natural.[or]This thing writes from left to right.[or]It's no use fighting the natural direction of the language.[or]When in Catalonia, do as the Catalonians do. Their language flows from left to right, as does this typewriter.[or]Still trying that, I see. The text of the poem flows to the right and down.[or]Whatevs.[stopping]".

When Poem Exploration ends when the location is a poetic room:
	play the sound of the typewriter bell;
	say "→";
	repeat with the item running through the backdrops in the location:
		remove the item from play.

Every turn when the poem of the location is not empty during Poem Exploration:
	let the stanza be entry one in the poem of the location;
	typewrite the stanza;
	remove the stanza from the poem of the location.

Significance relates various things to various things. The verb to signify means the significance relation. 

[This rule isn't taking effect. TODO: fix it.]
After the poet examining something, now the girl carries everything signified by the noun.

After the girl dropping something:
	repeat with the signifier running through the things that signify the noun:
		remove the signifier from play.


Section 2.3 - Definitions for the Prosaic World

Definition: A thing (called the syntagma) is literal if the syntagma is not figurative. 

Definition: A room is prosaic if it is not a poetic room and it is not the Left Margin.

The girl is a woman.

Before going to a prosaic room when the player is not the girl (this is the entry into the prosaic world rule):
	move the girl to the location;
	now the player is the girl;
	now the story viewpoint is the second person singular.

Mood is a kind of value. The moods are angry and calm. A person has a mood. A person is usually calm.

Employment is a kind of value. The employments are employed and unemployed. A person has an employment. A person is usually unemployed.

A herd is a kind of animal.


Book 2 - Story


Chapter 1 - Finding Work

[There was once a girl so poor that she had nothing to live on, and wandered about the world asking for charity. One day she arrived at a thatched cottage, and inquired if they could give her any work. The farmer said he wanted a cowherd, as his own had left him, and if the girl liked the place she might take it. So she became a cowherd.]

The world, [nothing,] charity, the cottage, work, the cowherd, the job, and the place are things that are nowhere [because they have not yet been implemented].


Section 1.1 - Poetry about Finding Work

The Left Margin is a room. "You're in a blank space."

Poverty is a poetic room. It is right of the Left Margin. Left of Poverty is nowhere. The poem is {
	"Knapsack void of aliment,[line break]Roving 'neath sinister skies,[line break]For want of all, implores.",
	"Seeking means to live,[line break]Repulsive being to kill.[line break]Oh, to overcome!",
	"The lone child shivers.[line break]Cascading shadow flows,[line break]A leap toward the light."
}.

The Poverty sky is a backdrop in Poverty. The description is "Had I the heavens['] embroidered cloths,[line break]Enwrought with golden and silver gleam,[line break]The blue and the dim and the dark[line break]Of night and half-light and light,[line break]I would sell those cloths for a good stew and a roof." Understand "sky", "skies", "sinister", "sinister sky", and "sinister skies" as the Poverty sky when the location is Poverty.

Dream is a poetic room. It is right of Poverty. Left of Dream is nowhere [because the door is one-way]. The poem is {
	"Weakly, wind whispers[line break]For potent ears to hear,[line break]Whence to nourish self.",
	"With pinions spread wide,[line break]A hawk into the sunrise[line break]Soars, drowning in flame.",
	"A thatched cottage looms[line break]O'er the ruts of a dusty road.[line break]A roost cock crows."
}.


Section 1.2 - Prose about Finding Work

[Prosaic map: Wandering the World → Dusty Road → Cottage] 

Wandering the World is right of Dream. Left of it is nowhere [because the door is one-way]. "I've been wandering about the world for as long as I can remember. I now seek a life of providing for myself. A road leads east." The girl is here.

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

A person can be dirty or clean. A person is usually clean. The girl is dirty. She is wearing some dirty clothes. Instead of examining a dirty girl, say "I am covered in the excrement of the long, dusty road from whence I came."

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

An Overgrown Field is south of the Cottage Porch. "The grass is three feet tall. In it lies a small iron carriage, quite rusted and missing a wheel. The carriage door is ajar." An open, enterable container called the carriage is here. Understand "iron carriage" or "carriage door" as the carriage. Below the Overgrown Field is Poverty. Above Poverty is nowhere [because the door is one-way].

Instead of entering the carriage, try going down.

Before going down to a poetic room:
	play the sound of a carriage return;
	if glulx timekeeping is supported:
		wait 500 milliseconds before continuing, strictly.

After going down to a poetic room that is not mostly unexplored, try going down [to get to the next unexplored one].

Chapter 2 - Herding Cows

[One morning she was driving her cows through the meadows when she heard near by a loud groan that almost sounded human. She hastened to the spot from which the noise came, and found it proceeded from a lion who lay stretched upon the ground.
	You can guess how frightened she was! But the lion seemed in such pain that she was sorry for him, and drew nearer and nearer till she saw he had a large thorn in one foot. She pulled out the thorn and bound up the place, and the lion was grateful, and licked her hand by way of thanks with his big rough tongue.
	When the girl had finished she went back to find the cows, but they had gone, and though she hunted everywhere she never found them; and she had to return home and confess to her master, who scolded her bitterly, and afterwards beat her. Then he said, 'Now you will have to look after the asses.']

The morning, the cow, the meadow, the groan, the human, the noise, the ground, the pain, the thorn, the foot, the place, thanks, the tongue, the home, the master, and the ass are things that are nowhere [because they have not yet been implemented].


Section 2.1 - Poetry about Herding Cows

C1 is a poetic room [about cattle]. It is below Poverty. Above C1 is nowhere [because the door is one-way]. The poem is {
	"Cattle are loyal."
}.

Right of C1 is a poetic room called D1. Left of D1 is nowhere [because the door is one-way].


Section 2.2 - Prose about Herding Cows

A hand is a kind of edible thing. A hand is a part of every person.

After eating a hand:
	say "I now crave human flesh. My goal is to eat everyone!"

A mob is a person. Understand "everyone" as the mob.

After eating the mob:
	say "I eat everyone and now I die alone with my own sad thoughts";
	end the story.

After the girl entering the corral when the farmer is not angry,
	now the actor is employed.

Instead of the girl entering the Corral when the farmer is angry,
	say "Oh, no, I bet the farmer will be mad at me."

The cows are a herd. Understand "cow" as the cows.

A lion is a kind of animal.

The description of the cows is "Cows without a herd leader are useless [line break]
	The farmer asked me to farm these cows."

After examining the cows for the first time, say "I hear a loud groan that almost sounds human. [line break]
	I must see what this is. [line break]
	I heard the sound from the south. [line break]
	He pays well and is kind, [line break]
	but this groan I must find" [might be too cheesy].
	
After examining the cows for the second time, say "These cows look hungry."
	
Instead of examining the gate:
	say "A fence surrounds the cows. The gate is white with paint that is flaking off."

After dropping the clothes, say "Scandalous!"

A fence is in the corral.

Instead of examining the fence, say "The fence is white just like the gate. It keeps the cows in."

The Corral is south of the Overgrown Field and right of D1. "There is a field that is worn from animals living on the land. A gate is in front of me." Left of the Corral is nowhere. [The way from the poetic world is one-way.]

The gate is an openable container in the corral. There are cows in the gate. The gate is closed.

After going from a room when the gate is open:
	say "the cows follow me with loyalty.";
	now the cows are in the noun.

After opening the gate:
	say "The cows are starving, I have to get them to the meadows. the forest surrounds the meadows, I have to go through the forest. the forest is to the west";	

The West Meadow is east of the Corral. "A corral is to the west. A lion lies in front of me."

The Forest is west of the Corral. "The forest is dark and the trees are thick, yet light still comes through easily."

The Middle Meadow is east of the West Meadow. "I come back and see that my herd is gone. Why was I so foolish to leave them?"

The Deep Ditch is below the Ditch. "The cave is dark and damp. There are bats swarming all around me."

The East Meadow is east of Middle Meadow. "I have been walking for 5 minutes, I realize that I have passed my destination."

The Far East Meadow is east of the East Meadow. "Deep in a ditch I see a shape of an animal. It's too shaded to see well from here."

The ditch is south of the Far East Meadow. "I scale the thing and decide to not take my chances, I walk around around and down."

A lion called the majestic lion is in the Deep Ditch.

After the girl going to the Ditch when the majestic lion is in the Deep Ditch:
		say "I see the animal a bit farther down."
		
The bats are animals. The bats are in the Deep Ditch. Understand "bat" as bats.

Instead of taking the bats:
	say "I snatch for one in the air, I get bit on the finger and the bats are scared out of the cave";
	remove the bats from play.

Instead of examining the bats:
	say "The bats are black. They hurt my ears with their squeals. They swirl away from the cave.";
	remove the bats from play.
	
[learn to do if lion is here and how to make cows go away]

After entering the Middle Meadow:
	Say "I brought the cows to where they can graze, I will watch over them."

[if lion is in deep ditch:
	say "A lion is on the ground , it is injured, you must find something to heal it."]

Instead of examining the lion, say "The lion has sharp claws and a long mane. It is hurt, I stare at it intensely."

The lion is either hurt or healthy. The lion is usually hurt [until healed].


Chapter 3 - Herding Asses

[So every day she had to take the asses to the woods to feed, until one morning, exactly a year after she had found the lion, she heard a groan which sounded quite human. She went straight to the place from which the noise came, and, to her great surprise, beheld the same lion stretched on the ground with a deep wound across his face.
	This time she was not afraid at all, and ran towards him, washing the wound and laying soothing herbs upon it; and when she had bound it up the lion thanked her in the same manner as before.
	After that she returned to her flock, but they were nowhere to be seen. She searched here and she searched there, but they had vanished completely!
	Then she had to go home and confess to her master, who first scolded her and afterwards beat her. 'Now go,' he ended, 'and look after the pigs!']

The day, the wood, the year, surprise, the ground, the wound, the face, [the time,] the fear, the herb, the manner, the flock, and the pig are things that are nowhere [because they have not yet been implemented].


Section 3.1 - Poetry about Herding Asses

A2 is a poetic room. It is below C1. Above A2 is nowhere [because the door is one-way]. Right of A2 is a poetic room called B2. Left of B2 is nowhere [because the door is one-way].

The poem of A2 is {
	""
}.


Section 3.2 - Prose about Herding Asses

The Stable is right of B2. "After a brief intake of breath, I gagged. The smell of this place is wretched. All of [the asses] here have a sad glint in their eyes. It's not hard to see why. If I had to stay here most of the day and all night, I knew I would be sad too. A ladder leads up to the loft. A rock is on the ground. The asses are standing, looking at me tiredly." Left of the Stable is nowhere. [The way from the poetic world is one-way.]

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

The day, the maiden, the friend, the death, the tree, the knee, and the hour are things that are nowhere [because they have not yet been implemented].


Section 4.1 - Poetry about Herding Pigs


Section 4.2 - Prose about Herding Pigs


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

The tear, the sign, the seat, the branch, the eye, the rock, the furniture, the broom, the duster, the dinner, the shelf, the corner, the sun, the path, the palace, the secret, the prince, the giant, the shape, the ox, revenge, kindness, the lock of hair, the king, the cloak, the giant, the mountain, the city, the princess, and the servant are things that are nowhere [because they have not yet been implemented].


Section 5.1 - Poetry about Solving the Mystery


Section 5.2 - Prose about Solving the Mystery


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

The streets, the servant, [the people,] looks, waiting-maid, the scullion, the dishes, the comb, courage, pride, tress, patience, the bridegroom, the coat, the silk, the giant, the young man, the sword, the mountain, the mountaintop, the footsteps, the fire, the club, and the giant's house are things that are nowhere [because they have not yet been implemented].

Section 6.1 - Poetry about Making a Coat for the Giant


Section 6.2 - Prose about Making a Coat for the Giant


Chapter 7 - Making the Coat Longer

[The next morning, when she was combing the princess's hair, she begged leave to cut off another lock. At first the princess said no, but the girl begged so hard that at length she gave in on condition that she should find her a prince as bridegroom.
	The maiden told her that she had already found him, and spun the lock into shining stuff, and fastened it on to the end of the coat. And when it was finished she carried it to the giant.
	This time it fitted him, and he was quite pleased, and asked her what he could give her in return. And she said that the only reward he could give her was to take the spell off the lion and bring him back to his own shape.
	For a long time the giant would not hear of it, but in the end he gave in, and told her exactly how it must all be done. She was to kill the lion herself and cut him up very small; then she must burn him, and cast his ashes into the water, and out of the water the prince would come free from enchantment for ever.
	But the maiden went away weeping, lest the giant should have deceived her, and that after she had killed the lion she would find she had also slain the prince.]

[TODO: define nouns]


Section 7.1 - Poetry about Making the Coat Longer


Section 7.2 - Prose about Making the Coat Longer


Chapter 8 - Killing the Lion

[Weeping she came down the mountain, and weeping she joined the prince, who was awaiting her at the bottom; and when he had heard her story he comforted her, and bade her be of good courage, and to do the bidding of the giant.
	And the maiden believed what the prince told her; and in the morning when he put on his lion's form she took a knife and slew him, and cut him up very small, and burnt him, and cast his ashes into the water, and out of the water came the prince, beautiful as the day, and as glad to look upon as the sun himself.
	Then the young man thanked the maiden for all she had done for him, and said she should be his wife and none other. But the maiden only wept sore, and answered that that she could never be, for she had given her promise to the princess when she cut off her hair that the prince should wed her and her only.
	But the prince replied, 'If it is the princess, we must go quickly. Come with me.']

[TODO: define nouns]


Section 8.1 - Poetry about Killing the Lion


Section 8.2 - Prose about Killing the Lion


Chapter 9 - Getting the Prince Hitched

[So they went together to the king's palace. And when the king and queen and princess saw the young man a great joy filled their hearts, for they knew him for the eldest son, who had long ago been enchanted by a giant and lost to them.
	And he asked his parents' consent that he might marry the girl who had saved him, and a great feast was made, and the maiden became a princess, and in due time a queen, and she richly deserved all the honours showered upon her.]


Section 9.1 - Poetry about Getting the Prince Hitched


Section 9.2 - Prose about Getting the Prince Hitched


Book 3 - Testing (not for release)

At 9:00 AM [after the first turn]: now the typewriting speed is fast.


Part 1 - Compliance Rules [For automated testing of initial state]

The compliance rules are a rulebook. Testing compliance is an action out of world applying to nothing. Understand "compliance" as testing compliance. Carry out testing compliance: follow the compliance rules.

The name of the compliance rule is a text that varies. The violations are a list of objects that varies. The violation descriptions are a list of texts that varies. The violation tally is a number that varies. The violation tally is initially zero. The compliance rule tally is initially zero. The violated rule tally is initially zero.

To name the/-- rule (name - text): now the name of the compliance rule is (name).

To initialize the/-- state of the/-- compliance rule:
	name the rule "unnamed rule";
	truncate the violations to zero entries;
	truncate the violation descriptions to zero entries.

To report the/-- violations:
	increment the compliance rule tally;
	if the violations is not empty or the violation descriptions is not empty:
		increment the violated rule tally;
		say "Compliance rule: [bold type][Name of the compliance rule][roman type][line break]";
		if the violations is not empty:
			say "Violations: [the violations]";
			now the violation tally is (violation tally) + (the number of entries in violations);
		if the violation descriptions is not empty:
			say "Violation descriptions: [the violation descriptions]";
			now the violation tally is (violation tally) + (number of entries in violation descriptions);
		say "[paragraph break]"; 
	initialize the state of the compliance rule.

First compliance rule: initialize the state of the compliance rule.

Last compliance rule:
	if the violation tally is zero:
		say "Fully compliant.";
	otherwise:
		let was-were be "was";
		if the violation tally is not one:
			let was-were be "were";
		say "In total, [violation tally] compliance violation[s] [was-were] found, for [violated rule tally] of [compliance rule tally] compliance rules.";
	say "[paragraph break]";
	now the violation tally is zero;
	now the compliance rule tally is zero;
	now the violated rule tally is zero.

Compliance rule:
	name the rule "Everything should be somewhere.";
	add (the list of things that are nowhere) to the violations;
	remove (the last after examining an unexamined thing) from the violations;
	report violations.

Compliance rule:
	name the rule "Every room in the poetic world should be described in the form of three haikus.";
	add (the list of poetic rooms that are not trihaikuic) to the violations;
	report violations.

Definition: a poetic room (called the place) is trihaikuic if the number of entries in the poem of the place is three and the number of lines in "[poem of the place]" is seven and the number of characters in "[poem of the place]" is no greater than 336.

Compliance rule:
	name the rule "Everything in the poetic world should be described in the form of a haiku.";
	let the prior location be the location;
	move the player to a random poetic room, without printing a room description;
	repeat with the item running through the things in poetic rooms:
		if not (the item is haikuically described):
			add the item to the violations;
	report violations;
	move the player to the prior location, without printing a room description.

To decide whether (item - a thing) is haikuically described:
	if the number of characters in the description of the item is greater than 109, decide no;
	if the number of lines in the description of the item is not three, decide no;
	decide yes.

Compliance rule:
	name the rule "Every room in the prosaic world should be described in prosaic form.";
	add (the list of prosaic rooms that are not prosaically described) to the violations;
	report violations.

Definition: A thing (called the item) is prosaically described if the number of lines in the description of the item is one.  

Compliance rule:
	name the rule "The description of every prosaic room should be in the first person.";
	add the list of second-person prosaic rooms to the violations;
	report violations.

Definition: A room (called the place) is second-person if the description of the place matches the regular expression "You|you" and not (the description of the place matches the regular expression "'" [because a quoted point of view does not represent the narrative point of view]).

Compliance rule:
	name the rule "Prosaic rooms should have only literal things.";
	add (the list of prosaic rooms that contain something figurative) to the violations;
	report violations.

Compliance rule:
	name the rule "Typewriter directions should be the only directions allowed from poetic rooms.";
	let the acceptable directions be {right, down};
	repeat with the place in question running through the poetic rooms:
		repeat with the neighbouring place running through the rooms adjacent to the place in question:
			if the best route from the place in question to the neighbouring place is not listed in the acceptable directions:
				add the place in question to the violations;
	report violations.

Compliance rule:
	name the rule "Cardinal and vertical directions should be the only directions allowed from prosaic rooms.";
	let the acceptable directions be {north, south, east, west, up, down};
	repeat with the place in question running through the prosaic rooms:
		repeat with the neighbouring place running through the rooms adjacent to the place in question:
			if the best route from the place in question to the neighbouring place is not listed in the acceptable directions:
				add the place in question to the violations;
	report violations.

Compliance rule:
	name the rule "Every room should be reachable.";
	repeat with the destination running through the rooms that are not the location:
		if (best route from location to destination, using doors) is nothing:
			add the destination to the violations;
	report violations.

Compliance rule:
	let the expected ratio be two;
	name the rule "There should be exactly [expected ratio] poetic rooms per chapter.";
	let the chapter count be three;
	let ratio be (number of poetic rooms) / (chapter count);
	if the ratio is not the expected ratio:
		add "[number of poetic rooms] poetic room[s]" to the violation descriptions;
		add "[chapter count] chapter[s]" to the violation descriptions;
		add "[ratio] poetic room[s] per chapter" to the violation descriptions;
	report violations.

Compliance rule:
	let the limit be four;
	name the rule "There should be no more than [limit in words] prosaic rooms per chapter on average.";
	let the chapter count be three;
	let the ratio be (number of prosaic rooms) / (chapter count);
	if the ratio is greater than the limit:
		add "[number of prosaic rooms] prosaic room[s]" to the violation descriptions;
		add "[chapter count] chapter[s]" to the violation descriptions;
		add "[ratio] prosaic room[s] per chapter" to the violation descriptions;
	report violations.

Compliance rule:
	name the rule "Each figurative thing should signify something.";
	add (the list of figurative things that signify nothing) to the violations;
	report violations.

Compliance rule:
	name the rule "All signifiers should be figurative.";
	add (the list of literal things that signify something) to the violations;
	report violations.

Compliance rule:
	name the rule "All signifieds should be literal.";
	add (the list of figurative things that are signified by something) to the violations;
	report violations.


Part 2 - Test Cases

[For automated testing of dynamic state, combined with manual review of textual output]

When play begins, say "Tests are available. Type '[bold type]test[roman type]' to list them."

Expecting is an action out of world applying to one scene. Understand "expect [scene]" as expecting.
Carry out expecting a scene (called the expectation): say "[if expectation is happening]Success.[otherwise]Failure."

Test compliance with "compliance".

Test 1:2 [Chapter 1 prose] with "orb to B2 / r / e / e / n / x chair / x farmer / x shotgun / talk to farmer / s / n / talk to farmer / expect got a job".
Got a Job is a scene. Got a Job begins when the player is employed.

Test 2:2 [Chapter 2 prose] with "orb to D2 / r / expect got in trouble for losing a cow".
Got in Trouble for Losing a Cow is a scene.

Test 3:2 [Chapter 3 prose] with "orb to B4 / r / expect got in trouble for losing an ass".
Got in Trouble for Losing an Ass is a scene.

Test all with "test compliance / test 1:2 / test 2:2 / test 3:2".


Part 3 - Debugging [For manual, exploratory testing]

Becoming is an action applying to one thing. Understand "become [any person]" as becoming.
Carry out becoming a person: now the player is the noun.
A rule for reaching inside a room: allow access.

Teleporting to is an action applying to one thing. Understand "teleport to/into [any room]" as teleporting to. Understand "orb to/into [any room]" as teleporting to.
Carry out teleporting to a room: move the actor to the noun.