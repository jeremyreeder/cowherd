"Lleo" by "Jeremy Reeder, Jesse Evans, and Hunter Evans".
[Based on the old Spanish fairy tale known as "The Wounded Lion".]
The story headline is "An interactive epic poem".
The story genre is "Epic Poem".
The release number is 1. Release along with the source text, a library card, and an introductory booklet.
[Include Simple Unit Tests by Dannii Willis. — Needs to be updated for current Inform build.]


Chapter 0 - Preamble

Use the serial comma. Use no scoring. 
A room has a list of texts called the poem. A thing has a text called the stanza.
A thing can be examined or unexamined. A thing is usually unexamined.

Carry out examining an unexamined thing (called the object):
	if the stanza of the object is "":
		now the stanza of the object is "<insert stanza>";
	add the stanza of the object at entry one in the poem of the location;
	now the object is examined instead.

Every turn:
	if the poem of the location is not empty:
		let the stanza be entry one in the poem of the location;
		say the stanza;
		remove the stanza from the poem of the location.

[For testing]
Teleporting to is an action applying to one thing. Understand "teleport to [somewhere]"as teleporting to.
Carry out teleporting to a room (called the place):
	now the location is the place.


Chapter 1 - Finding Work

[There was once a girl so poor that she had nothing to live on, and wandered about the world asking for charity. One day she arrived at a thatched cottage, and inquired if they could give her any work. The farmer said he wanted a cowherd, as his own had left him, and if the girl liked the place she might take it. So she became a cowherd.]

A person can be employed or jobless. A person is usually jobless.

A person can be dirty or clean. A person is usually clean. The player is a dirty, jobless female. She is wearing some filthy clothes. Instead of examining the player when the player is dirty, say "I'm sure there's a lovely girl under all that dirt."

Wandering about the World is a room. The poem is {
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
		Nor is shelter.",
	"Ahead lies a cottage,[line break]
		Warmer, I think,[line break]
		Than this dusty road[line break]
		[apostrophe]Cross whence I have come."
}.

A head is here. Understand "dream" or "dreams" as the head. The stanza of the head is
	"My head is filled with wonder oft-times.[line break]
		Of all the fine things that exist in the world,[line break]
		Why must it all be so hard to acquire?[line break]
		What can I do to make it mine?"

Understand "cloth", "sky", and "heaven" as the heavens. The stanza of the heavens is
	"I pray to anyone up there[line break]
		That I may end this life of misery,[line break]
		Earn a living,[line break]
		And eat a healthy meal."

A dusty road is here. Understand "world" as the road.

Understand "shelter" and "cottage" as the Cottage Porch. The Cottage Porch is east of Wandering about the World. The poem is {
	"<insert cottage poem>"
}

The Woods are east of the Cottage Exterior. The poem is {
	"Some day, I think, there will be people enough[line break]
		In Froxfield to pick all the blackberries[line break]
		Out of the hedges of Green Lane, the straight[line break]
		Broad lane where now September hides herself[line break]
		In bracken and blackberry, harebell and dwarf gorse.",
	"To-day, where yesterday a hundred sheep[line break]
		Were nibbling, halcyon bells shake to the sway[line break]
		Of waters that no vessel ever sailed ...[line break]
		It is a kind of spring: the chaffinch tries[line break]
		His song. For heat it is like summer too.",
	"This might be winter’s quiet. While the glint[line break]
		Of hollies dark in the swollen hedges lasts—[line break]
		One mile—and those bells ring, little I know[line break]
		Or heed if time be still the same, until[line break]
		The lane ends and once more all is the same."
}

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

[A herd is a kind of animal.

The Corral is northwest of the Thatched Cottage. The cows are a herd. They are here. Understand "cow" as the cows.

Following relates one herd to one person. The verb to follow (it follows, they follow, it followed, he is followed, it is following) implies the following relation.

After going somewhere:
	repeat with the herd running through the list of herds that follow the player:
		if the herd is not in the Slaughterhouse or in the location:
			say "[The herd] follows you.";
			now the herd is in the location;
	continue the action.

Talking to is an action applying to one thing. Understand "talk to [something]" as talking to.

Carry out talking to an animal (called the beast):
	say "[one of]You try to start up a chat, but [the beast] seems uninterested in what you have to say.[or]You know [the beast] can't understand human-speak, right?[at random]"

Mooing at is an action applying to one thing. Understand "moo at [an animal]" as mooing at.

Carry out mooing at the cows:
	if the player is employed:
		say "[The cows] respond with a chorus of moos.";
		now the cows follow the player;
	otherwise:
		say "[The cows] just stare at you."

The Meadow is south of the Woods and southeast of the Thatched Cottage.

The Slaughterhouse is a room.

Before going from the Meadow when the cows are in the location:
	say "As you turn to leave, you hear a loud groan. It almost sounds human.";
	now the cows are in the Slaughterhouse;
	now the cows do not follow the player;
	continue the action.

Instead of asking the farmer about "cows" when the cows are in the Slaughterhouse:
	say "Your master scolds you bitterly, and afterwards beats you. Then he says, 'Now you will have to look after [the entry 1 from the list of herds not in the Slaughterhouse].'"]


Chapter 3 - Herding Asses

[So every day she had to take the asses to the woods to feed, until one morning, exactly a year after she had found the lion, she heard a groan which sounded quite human. She went straight to the place from which the noise came, and, to her great surprise, beheld the same lion stretched on the ground with a deep wound across his face.
	This time she was not afraid at all, and ran towards him, washing the wound and laying soothing herbs upon it; and when she had bound it up the lion thanked her in the same manner as before.
	After that she returned to her flock, but they were nowhere to be seen. She searched here and she searched there, but they had vanished completely!
	Then she had to go home and confess to her master, who first scolded her and afterwards beat her. 'Now go,' he ended, 'and look after the pigs!']

[The Ass Stable is a room. The asses are a herd that is pushable between rooms. They are here. Understand "ass" as the asses.

Heehawing at is an action applying to one thing. Understand "heehaw at [something]" as heehawing at.

Carry out heehawing at the asses:
	say "[The asses] respond with a chorus of heehaws."

Instead of pushing the asses:
	if the pair of spectacles is in the Thatched Cottage:
		now the farmer is wearing the pair of spectacles;
	say "[The asses] plant their feet firmly and refuse to be pushed. They make a big ruckus, and then the farmer runs out with [a shotgun].[if the farmer is wearing the pair of spectacles] As ugly as he is, he looks kind of cute with his glasses perches on his nose.";
	now the farmer has the shotgun;
	now the farmer is in the location.

Instead of doing something when the farmer is in the location and the farmer has the shotgun:
	if the farmer is wearing the pair of spectacles:
		end the story saying "You try, but the farmer shoots you dead.";
	otherwise:
		end the story saying "The farmer shoots wildly, blasting up the whole countryside. He doesn't aim well, but he makes up for it by packing a lot of ammo. On the third shot he hits you, in the kneecap. He reloads three times before managing to hit you again, this time in your left lung. Next he gets your right shoulder. Finally, he's out of ammo. He walks up and kicks you in the head. Then he walks off. Eventually you die. If only the old man had worn his glasses, perhaps this could have ended less miserably."

The Woods are east of the Thatched Cottage.

Before going from Woods when the asses are in the location:
	say "You hear a loud groan. It sounds quite human.";
	now the asses are in the Slaughterhouse;
	continue the action.

Instead of asking the farmer about "asses" when the asses are in the Slaughterhouse:
	say "Your master scolds you and afterwards beats you. 'Now go,' he ends, 'and look after [the entry 1 from the list of herds not in the Slaughterhouse]!"]


Chapter 4 - Herding Pigs

[So the next day she took out the pigs, and found them such good feeding grounds that they grew fatter every day.
	Another year passed by, and one morning when the maiden was out with her pigs she heard a groan which sounded quite human. She ran to see what it was, and found her old friend the lion, wounded through and through, fast dying under a tree.
	She fell on her knees before him and washed his wounds one by one, and laid healing herbs upon them. And the lion licked her hands and thanked her, and asked if she would not stay and sit by him. But the girl said she had her pigs to watch, and she must go and see after them.
	So she ran to the place where she had left them, but they had vanished as if the earth had swallowed them up. She whistled and called, but only the birds answered her.
	Then she sank down on the ground and wept bitterly, not daring to return home until some hours had passed away.]

[The Pig Sty is a room. A herd called the pigs is here. Understand "pig" as the pigs.

Oinking at is an action applying to one thing. Understand "oink at [something]" as oinking at.

Carry out oinking at the pigs:
	say "[The pigs] respond with a chorus of oinks. [if the player has the filthy clothes]They gather around you.[otherwise].";
	if the player has the filthy clothes:
		now the pigs follow the player.

The Feeding Grounds are northeast of the Winding Pathway. Some pigs are here.

The Cliff is east of the Clearing.

The Winding Pathway is south of the Cliff.

Before going from the Feeding Grounds when the pigs are in the location:
	say "You hear a loud groan. It sounds quite human.";
	now the pigs are in the Slaughterhouse;
	now the pigs do not follow the player;
	continue the action.

Instead of asking the farmer about "pigs" when the pigs are in the Slaughterhouse:
	say "Your master scolds you, first for feeding the wrong animals and then for losing them. Then he beats you, fires you, and beats you some more. Finally, he opens the front door and throws you out. He slams the door.";
	now the player is jobless.

Instead of going to the Thatched Cottage when every herd is in the Slaughterhouse:
	say "You've lost all of the farmer's animals. He'll beat you for sure if you return without them.";
	end the story saying "That's as much of the game as is functional so far. How was it? Stay tuned for the next release, in which you'll see what all the groaning is about."]


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

[A tree is in the Woods.

A Clearing is north of the Woods.

A door called a rock is north of the Clearing.

A House is north of the rock.]


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

[The Palace is in a region called the City. It is southwest of the Clearing. A man called the king is here. A woman called the queen is here. A woman called the princess is here. Understand "girl" or "maiden" as the princess.

The Mountain is north of the Feeding Grounds.]


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
	
