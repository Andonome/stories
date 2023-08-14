# Underlying Logic

This magic system builds spells from words, and eventually forms a sentence.

Mages become skilled in low-level spheres, such as Fire, Fate, or Air, then combine them to work with high-level spheres, such as Light, Death, and Force.

### Summary

1. The caster can spend a number of MP equal to the highest sphere they want to use.
1. MP spent on enhancements increase the potency of every enhancement.
1. MP spent on metamagics decrease the spell's potency, but add effects to the spell itself.
    - Spells with less than a Potence of 0 fail.
1. Casters roll Charisma + some Skill against a TN of 6 + MP spent.
    - The Skill depends on what the caster is attempting.
    - When others resist the spell, it has two TNs.

## Spheres

Mages can only target their spheres directly, but can use these spheres to target others.

### Low Spheres

- Fire
- Air
- Earth
- Water
- Fate

### High Spheres

By combining two low spheres, you can create a high sphere:

- Mind (Fate + Water)
- Life (Earth + Water)
- Force (Earth + Fire)
- Light (Fire + Air)
- Death (Air + Fate)

## Enhancements

Enhancements change the target in different ways.
Each spell needs at least one enhancement.

Enhancements also increase a spell's *Potency*.
When you add another enhancement, each enhancement grows.

- Beautiful: making aesthetic changes. Texture does not change.
    0. Limited detail, like a cloud which 'sort of looks like something'.
    1. Very recognizable, like a child's painting.
    2. Full detail - illusions could definitely fool someone not looking hard.
    3. Quality details - illusions will fool anyone not looking for details.
    4. Near-perfect quality.
- Big: make the target grow.
    0. Basic: weight 4.
    1. Person-sized: weight 6
    2. Bulky: weight 8
    3. Massive: weight 10
    4. Massive: weight 14
- Bizarre:
    0. Change in natural form - water to ice, work changes to sleep.
    1. The item's basic nature contorts. Fire becomes sticky, minds think about unnatural acts, and plants grow in a single scene.
    2. The item's basic nature takes a hit. Fire pours into a bowl, minds obsessively count objects, and fruit grows down into the soil.
    3. A single facet of the item's basic nature vanishes or reverses. Fire freezes items, minds cease to create new memories, and fruit bleeds and begins to grow one step per round.
    4. Turn the target into another element (which must be chained). A unicorn turns into sea-foam, a farmer becomes a song.
- Brisk: Target speeds up its natural motions.
    0. Plants grow faster.

## Metamagic

Each metamagic added decreases the spell's Potency by 1.

- Distant: the spell targets something far away.  Standard range = 5 Steps + MP spent.  Distance is both a maximum and a minimum.
    0. 10 steps x MP spent.
    1. Throwing distance.
    2. Shouting distance.
    3. Line of sight.
- Durable: the spell lasts for a long time (but the material can still disappear).  The standard duration is 1 Scene.
    0. Remainder of Season
    1. Cycle (3 years)
    2. Full Chronicle.
    3. Permanent.
- Duplicated: the spell replicates many times.
    * If the caster is making new targets, the spell creates a number of targets equal to the MP spent.
    * If the spell targets existing targets, the spell affects a number of targets equal to total 'MP!'.
- Discreet
    * Others won't easily see the caster is casting a spell.
    * They can roll Wits + Vigilance at TN 7 + caster's Dexterity + Larceny - spell's Potence.

| MP Spent | Targets |
|:--------:|:-------:|
|   2      |	2    |
|   3      |	6    |
|   4      |	24   |
|   5      |	120  |
|   6      |	720  |

## Principles

- Penalties to common things, like running or attacking, inflict a -1 penalty per potence.
- Penalties to highly specific things, such as 'waking up', give a -2 penalty per potence.
- Enhanced Traits are set to the potence (*not* increased by potence).
- Damage equals 4 plus potence.
- DR equals 1 + 1 per potence.
- When performing or resisting actions, spells have a total score equal to the potence x 2.
- Spells which use their large size sometimes gain a bonus equal to total MP spent. For example, wind-blast spells become more powerful when the wind howls across a distance, or covers a wide area (with the Duplicated Metamagic), or becomes enduring.

## Complications

### Small Targets

These problems for spellcasters raise the difficulty:

- Tiny target (+2)

The TN for spells is 6 + challenges + MP spent.

Casters can spend a number of MP equal to the highest sphere they are using.
They can power high spheres with any combination of mana.

# Spheres

## Fire

### Flame Strength

The basic strength of a flame depends on its source.
If created out of nothing, the fire has all the strength of a candle.

- Candle: 1 Damage
- Torch: 2 Damage
- Cooking fire: 3 Damage
- Bonfire: 4 Damage
- Smelting fire: 5 Damage

### Durable

Most magically created or enhanced fires return to their normal state quickly afterwards.
A *Big Fire* might explode across a table, then vanish.

However, a *durable fire* will burn easily-flammable material, and continue burning.
It can burn clothing, destroys all hair, and starts on any nearby wood.

Weapons with long, wooden handles (such as glaives or spears) become unstable, and break any time they deal >7 Damage.


## Enchantment

### Big

1. Does one simple thing. (Wits -4)
    * "Kill jester"
    * "Defend against this dragon"
    * Does not understand categories (like 'bandits', or 'goblins').
2. Does two-part missions (but no 'if-then' statements, or anything equivalent, has Wits -2)
    * "Find John and whisper this message to him."
    * "Approach the king, then explode."
    * "Enter the village, then report back."
    * Can distinguish people at a glance.
3. Does any complex tasks asked of it. (Intelligence -2, Wits -2, Charisma -2 and 5 points to spend among Mental Attributes)
    * Has the same Code as the caster (if none is specified).
    * Will attempt to suicide if it gets bored.
    * Tends to become obsessed with its first mission ("Ah, the good old days, when I was protecting against goblins. I should go find more goblins...")
    * Can make subtle distinctions.
    * "Kill any elves who look like they're spying for King Alreth"
    * Debates the definitions of tasks with the caster ("When you say 'men', do you mean all humans? Or all males? Or human males? And do you mean specifically adults?").
    * Refuses to stop its mission ("everyone's not dead till I say they're dead. You for example are not dead")
    * Makes long-term plans.
    * Knows all the basic concepts the mage knows (people, places, et c.)
    * Wants to be treated as an equal.
    * Has 1 sphere of magic.
4. Does any tasks asked of it...initially (Intelligence -2, Wits -2, Charisma -2 and 6 points to spend among Mental Attributes)
    * Has 2 levels of magic spheres.
    * Knows half the mind of the mage.
    * "Bow, mortal, before the god of crafting abodes."
    * "Your architectural plans are shoddy, and weak, because they use wood."
    * "I have devised a new type of home, built entirely from the metal of the swords of my enemies."
    * "Procure the following list for me, or I shall begin selling your secrets to king Alreth to procure them myself."

### Bizarre

0. Tired people become sleepy.
1. Give someone a random idea.
2. Limit someone's ability to think about anything but one thing (penalty to all mental actions not concerned with the mission)
3. Make the target forget something, or replace a belief.
4. Target believes they are a chicken.

## Force

### Beautiful

0. The affected area flickers subtly, with visual distortions, like looking at a pond.
1. The effect distorts the area obviously, making anyone who sees it understand the magic is afoot.
2. The effect can be seen, like a flickering force-field.
3. The visual effect takes on a ghostly form, such as a hand lifting up a floating object, or a fist crushing someone down.
4. The spell takes on a solid form, and looks exactly as the target wishes, except for some vague oddities (flickers and a shine) which show it to be an apparition.

### Big

0. The target feels gravity distort around them...if they focus enough.
1. Standard forces become more solid, making water hard to the touch, or making an area of air feel solid.
2. A wall of unmoving air can become a harsh barrier, difficult for anyone or anything to move beyond.

### Bizarre

0. Arrows descend faster than normal, missing the caster.
1. Targets feel their weight increase, becoming heavier, and unable to run or fly properly.
2. Targets float, becoming weightless.
3. Gravity crawls along walls, allowing the target to wander across any surface.
4. Distance disappears, opening a rift in space - a portal to anywhere within range.

