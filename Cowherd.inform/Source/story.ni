"Cowherd" by "Jeremy Reeder, Jesse Evans, and Hunter Evans".
[Based on an old Spanish fairy tale known as "The Wounded Lion".]
The story headline is "An interactive epic poem".
The story genre is "Epic Poem".
The release number is 1. Release along with the source text, a library card, and an introductory booklet.


Book 1 - Infrastructure


Part 1 - Configuration

Use the American dialect and the serial comma. Use no scoring. Use brief room descriptions.


Part 2 - Definitions

A thing can be poetically examined or poetically unexamined. A thing is usually poetically unexamined.

A poetic room is a kind of room.

To decide whether a room is prosaic:
	if the room is a poetic room:
		decide no;
	otherwise:
		decide yes.

A poetic room has a list of texts called the poem. A thing has a text called the stanza.

A pause is a kind of open door.

Rule for choosing notable locale objects for a room (called the place):
	repeat with item running through things in the place:
		if the place is a poetic room or the item is a pause:
			set the locale priority of the item to 0. [It's not notable.]

Before going right through a pause:
	say "[bold type]//[roman type]".

Before going left through a pause:
	say "[bold type]\\[roman type]".

Carry out examining a poetically unexamined thing (called the object) in a poetic room:
	if the stanza of the object is "":
		now the stanza of the object is "<insert stanza>";
	add the stanza of the object at entry one in the poem of the location;
	now the object is poetically examined instead.

Carry out examining a poetically examined thing in a poetic room:
	do nothing instead.

Every turn when the location is a poetic room:
	if the poem of the location is empty:
		say "→";
	otherwise:
		let the stanza be entry one in the poem of the location;
		say the stanza;
		remove the stanza from the poem of the location.

Left is a direction. The opposite of left is right. Understand "left" or "l" as left. [TODO: resolve bug where "l" is interpreted as "look".]

Right is a direction. The opposite of right is left. Understand "right" or "r" as right.

Carry out teleporting to a room (called the place):
	now the location is the place. [TODO: fix the bug where this doesn't work unless you can see the location.]

An object can be literal or figurative. An object is usually literal. An abstract noun is a figurative backdrop.

Check taking a figurative object (called the whatnot) when the location is a poetic room:
	now the whatnot is nowhere [removing it even as a backdrop];
	now the actor carries the whatnot. [even though this may seem impossible].

[Instead of going from a poetic room to a prosaic room when the player has a figurative object (called the whatnot):
	now the whatnot is nowhere;
	choose the row with Signifier (whatnot) from the Table of Analogies;
	if (entry Signified) is a backdrop:
		now (entry Signified) is everywhere;
	otherwise:
		now the player has (entry Signified).]
	[TODO: switch to another approach because tables can only handle constants, not variables.]


Part 3 - Testing


Section 1 - Specifications
[For testing]

When play begins:
	repeat with the item running through all things:
		if [the item is in a prosaic room and] the description of the item is "":
			say "/!\ No description is given for [the item].";
		[otherwise:]
		if [the item is in a poetic room and] the stanza of the item is "":
			say "/!\ No stanza is given for [the item].";
		[TODO: fix the invalid conditions that are commented out.]
	repeat with the poetic place running through all the poetic rooms:
		if the poem of the poetic place is {}:
			say "/!\ No poem is given for [the poetic place]." 

[When play begins:
	repeat through the Table of Analogies:
		if entry Signifier is literal:
			say "/!\ Literal object '[entry Signifier]' found as a Signifier in [the Table of Analogies]."
		if entry Signified is figurative:
			say "/!\ Figurative object '[entry Signified]' found as a Signified in [the Table of Analogies]."]


Section 2 - Debugging
[For testing]

Section 3 - Test Cases

Teleporting to is an action applying to one thing. Understand "teleport to [somewhere]"as teleporting to.

Carry out teleporting to a room (called the place):
	now the location is the place.

[TODO: put all rooms in scope, or do whatever it takes to make teleporting will work.]


Book 2 - Story

Chapter 1 - Finding Work

[There was once a girl so poor that she had nothing to live on, and wandered about the world asking for charity. One day she arrived at a thatched cottage, and inquired if they could give her any work. The farmer said he wanted a cowherd, as his own had left him, and if the girl liked the place she might take it. So she became a cowherd.]

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

A head is a kind of thing. It is a part of each person. Understand "dream" or "dreams" as the head of the player when the location is A1. The stanza of the head of the player is
	"My head is filled with wonder oft-times.[line break]
		Of all the fine things that exist in the world,[line break]
		Why must it all be so hard to acquire?[line break]
		What can I do to make it mine?"

The heavens are a backdrop which is everywhere. Understand "sky", and "heaven" as the heavens. Understand "cloth" and "cloths" as the heavens when the location is A1. The stanza of the heavens is
	"I pray to anyone up there[line break]
		That I may end this life of misery,[line break]
		Earn a living,[line break]
		And eat a healthy meal."

The poverty is a backdrop which is everywhere. Understand "world", "road", "dust", and "dusty road" as poverty.

The riches are a backdrop which is everywhere. Understand "riches", "money", and "job" as riches. Understand "cottage" and "shelter" as riches when the location is a poetic room. The stanza is "My, oh my!" 

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

The beauty is a backdrop that is everywhere. Understand "forest", "tresses", and "sun" as beauty. The stanza is "Astonishing!" 

The freedom is a backdrop that is everywhere. Understand "liberty", "air", "lofty air", "bird", "hawk", and "spotted hawk" as freedom. The stanza is "Oh, to be free!"

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

[Prosaic map: Wandering the World → Dusty Road ↑→ Cottage] 

Wandering the World is right of B2. "Having nothing to live on, you have wandered about the world asking for charity. Now you seek something better."


The Dusty Road is east of Wandering the World.

The Cottage is east of the Dusty Road. The description is "[one of]Arriving at a familiar-looking cottage, you wonder if this might be the answer to your prayers.[or][stopping]".

["and inquired if they could give her any work. The farmer said he wanted a cowherd, as his own had left him, and if the girl liked the place she might take it. So she became a cowherd."]

The Cottage Interior is north of the Cottage.

A person can be employed or jobless. A person is usually jobless.

A person can be dirty or clean. A person is usually clean. The player is a dirty, jobless female. She is wearing some filthy clothes. Instead of examining the player when the player is dirty, say "I'm sure there's a lovely girl under all that dirt."

[The Dusty Road is a room. The End of the Road is east of it.

A door called the wooden door is north of the End of the Road and south of a Thatched Cottage.

In the Thatched Cottage is a rocking chair. Understand "chair" as the rocking chair. The description of the rocking chair is "It looks like it's made of pine."

A man called the farmer is on the rocking chair. The description of the farmer is "Ugly as sin." Understand "master" as the farmer. A shotgun and a table are here. On the table is a pair of spectacles. The pair of spectacles can be worn. Understand "glasses" as the pair of spectacles.

Instead of asking the farmer about "job" when the player is jobless:
	say "I want a cowherd, as my own has left me. If you like this place, then you can have the job.";
	now the player is employed.

The Bathroom is north of the Thatched Cottage. A bathtub and some clean clothes are here. Understand "tub" as the bathtub. A faucet is in the bathtub.]


Chapter 2 - Herding Cows

[One morning she was driving her cows through the meadows when she heard near by a loud groan that almost sounded human. She hastened to the spot from which the noise came, and found it proceeded from a lion who lay stretched upon the ground.
	You can guess how frightened she was! But the lion seemed in such pain that she was sorry for him, and drew nearer and nearer till she saw he had a large thorn in one foot. She pulled out the thorn and bound up the place, and the lion was grateful, and licked her hand by way of thanks with his big rough tongue.
	When the girl had finished she went back to find the cows, but they had gone, and though she hunted everywhere she never found them; and she had to return home and confess to her master, who scolded her bitterly, and afterwards beat her. Then he said, 'Now you will have to look after the asses.']

[Poetic map: C1 D1 // C2 D2]

A herd is a kind of animal.

The lion is a kind of animal.

before of examining the cows,
	say "Cows without a herd leader are useless [line break]
	The farmer asked me to farm these cows."

instead of examining the cows,
	say "I hear a loud groan that almost sounds human. [line break]
	I must see what this is. [line break]
	I heard the sound from the south. [line break]
	He pays well and is kind, [line break]
	but this groan I must find"  [might be too cheesy]
	
The Corral is northwest of the Thatched Cottage. The cows are a herd. They are here. Understand "cow" as the cows.

[to see cows instead of to see a cows]

The meadow1 is north of the corral.  [add description]

The meadow2 is south of the corral.  "Continue to go south to follow the groan. [line break]
[Line break]
'I must find who is hurt!'"

meadows3 is south of meadows2. "Far down is a ditch you can see a shape of an animal, [line break]
the animal that is groaning."

The ditch is down of the meadows3. the description is "I scale the thing and desid to not take my chances, I walk around around and down to see a lion laying on the bare rock. [line break]
He is down the hill a bit farther [line break]
[line break]
The animal continues to groan." 

 The deep ditch is down of the ditch.

the Meadows is east of the Corral. "a corral is to the west.  A lion lies in front of me."

instead of examining the lion:
	say "laying in the empty medows, [line break]
	lays a grounded lion on the ground."

an animal called the lion is in the meadows3

The lion is either hurt or healthy

The lion is usually hurt [untill healed]

Chapter 3 - Herding Asses

[So every day she had to take the asses to the woods to feed, until one morning, exactly a year after she had found the lion, she heard a groan which sounded quite human. She went straight to the place from which the noise came, and, to her great surprise, beheld the same lion stretched on the ground with a deep wound across his face.
	This time she was not afraid at all, and ran towards him, washing the wound and laying soothing herbs upon it; and when she had bound it up the lion thanked her in the same manner as before.
	After that she returned to her flock, but they were nowhere to be seen. She searched here and she searched there, but they had vanished completely!
	Then she had to go home and confess to her master, who first scolded her and afterwards beat her. 'Now go,' he ended, 'and look after the pigs!']

[ A3 B3 // A4 B4 ]

[The Ass Stable is east of A1.]      [### This is a debug Statement so I can get to my room. ###]

The Ass Stable is a room. "After a brief intake of breath, I gagged. The smell of this place is wretched. All of the Asses here had a sad glint in their eyes. It was not hard to see why. If I had to stay here most of the day and all night, I knew I would be sad too. A latter leads up to the loft"

The Loft is above the Ass Stable. "Even less pleasent than the stable it self. It is very warm, humid and putrid here. A latter leads down to the Ass Stable"

Carrots is edible.

Carrots is in the Loft

Instead of eating Carrots,
	say "You just ate brakefast. Maybe they will come in handy later."
	
Instead of examining Carrots,
	say "They are long, orange, edible vegetables. Animals generaly like to eat carrots."

The rock is in The Ass Stable

Understand "Steve" as the rock.

Instead of examining the rock,
	say "You are compeled to pick up the rock and name it Steve"
	
Instead of eating the rock,
	say "Why would I wanna eat Steve? He's meh pal, bruh."

Chapter 4 - Herding Pigs

[So the next day she took out the pigs, and found them such good feeding grounds that they grew fatter every day.
	Another year passed by, and one morning when the maiden was out with her pigs she heard a groan which sounded quite human. She ran to see what it was, and found her old friend the lion, wounded through and through, fast dying under a tree.
	She fell on her knees before him and washed his wounds one by one, and laid healing herbs upon them. And the lion licked her hands and thanked her, and asked if she would not stay and sit by him. But the girl said she had her pigs to watch, and she must go and see after them.
	So she ran to the place where she had left them, but they had vanished as if the earth had swallowed them up. She whistled and called, but only the birds answered her.
	Then she sank down on the ground and wept bitterly, not daring to return home until some hours had passed away.]


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


Chapter 7 - Making the Coat Longer

[The next morning, when she was combing the princess's hair, she begged leave to cut off another lock. At first the princess said no, but the girl begged so hard that at length she gave in on condition that she should find her a prince as bridegroom.
	The maiden told her that she had already found him, and spun the lock into shining stuff, and fastened it on to the end of the coat. And when it was finished she carried it to the giant.
	This time it fitted him, and he was quite pleased, and asked her what he could give her in return. And she said that the only reward he could give her was to take the spell off the lion and bring him back to his own shape.
	For a long time the giant would not hear of it, but in the end he gave in, and told her exactly how it must all be done. She was to kill the lion herself and cut him up very small; then she must burn him, and cast his ashes into the water, and out of the water the prince would come free from enchantment for ever.
	But the maiden went away weeping, lest the giant should have deceived her, and that after she had killed the lion she would find she had also slain the prince.]


Chapter 8 - Killing the Lion

[Weeping she came down the mountain, and weeping she joined the prince, who was awaiting her at the bottom; and when he had heard her story he comforted her, and bade her be of good courage, and to do the bidding of the giant.
	And the maiden believed what the prince told her; and in the morning when he put on his lion's form she took a knife and slew him, and cut him up very small, and burnt him, and cast his ashes into the water, and out of the water came the prince, beautiful as the day, and as glad to look upon as the sun himself.
	Then the young man thanked the maiden for all she had done for him, and said she should be his wife and none other. But the maiden only wept sore, and answered that that she could never be, for she had given her promise to the princess when she cut off her hair that the prince should wed her and her only.
	But the prince replied, 'If it is the princess, we must go quickly. Come with me.']


Chapter 9 - Getting the Prince Hitched

[So they went together to the king's palace. And when the king and queen and princess saw the young man a great joy filled their hearts, for they knew him for the eldest son, who had long ago been enchanted by a giant and lost to them.
	And he asked his parents' consent that he might marry the girl who had saved him, and a great feast was made, and the maiden became a princess, and in due time a queen, and she richly deserved all the honours showered upon her.]