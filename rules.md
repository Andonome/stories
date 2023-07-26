# Underlying Logic

This magic system builds spells from words, and eventually forms a sentence.

A magical sphere is a *Noun* of some kind, like 'Air', 'Fire', 'Desire', or 'Fate'.
Mages with those spheres can alter these targets, and enhance spells with a number of modifiers, like 'wide' or 'subtle'.

### Summary

1. The caster can spend a number of MP equal to the highest sphere they want to use.
1. Each MP can be spent on a different enhancement or metamagic.
1. The spell's potence equals the MP spent on enhancements minus MP spent on metamagic.
    - Spells with less than a potence of 0 fail.
1. Spells use Charisma + some Skill.
    - The Skill depends on what the caster is attempting.
1. The TN equals 6 + MP spent.

## Spheres

Mages can affect things governed by their magic spheres.

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
- Illusion (Fire + Air)
- Death (Air + Fate)

## Enhancements

Enhancements change the target in different ways.
Each spell needs at least one enhancement.

Enhancements also increase a spell's *Potency*.
When you add another enhancement, each enhancement grows.

- Colourful: making aesthetic changes. Texture does not change.
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
- Twisted:
    0. Change in natural form - water to ice, work changes to sleep.
    1. The item's basic nature contorts. Fire becomes sticky, minds think about unnatural acts, and plants grow in a single scene.
    2. The item's basic nature takes a hit. Fire pours into a bowl, minds obsessively count objects, and fruit grows down into the soil.
    3. A single facet of the item's basic nature vanishes or reverses. Fire freezes items, minds cease to create new memories, and fruit bleeds and begins to grow one step per round.
    4. Turn the target into another element (which must be chained). A unicorn turns into sea-foam, a farmer becomes a song.
- Chained: The spell includes another element, and all the same effects apply. The GM gains full control over interpretation.

## Metamagic

Each metamagic part added decreases the spell's Potency by 1.

- Distance: the spell targets something far away.  Standard range = 5 Steps + MP spent.  Distance is both a maximum and a minimum.
    0. 20 steps + MP spent.
    1. Throwing distance.
    2. Shouting distance.
    3. Line of sight.
- Duration: the spell lasts for a long time (but the material can still disappear).  The standard duration is 1 Scene.
    0. Remainder of Season
    1. Cycle (3 years)
    2. Full Chronicle.
    3. Permanent.
- Duplication: the spell replicates many times.
    * If the caster is making new targets, the spell creates a number of targets equal to the MP spent.
    * If the spell targets existing targets, the spell affects a number of targets equal to total 'MP!'.

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

## Complications

### Small Targets

These problems for spellcasters raise the difficulty:

- Tiny target (+1)

The TN for spells is 6 + challenges + MP spent.

Casters can spend a number of MP equal to the highest sphere they are using.
They can power high spheres with any combination of mana.

### Alter Life

### Flame Strength

- Candle: 1 Damage
- Torch: 2 Damage
- Cooking fire: 3 Damage
- Bonfire: 4 Damage
- Smelting fire: 5 Damage

### Create Mind

When casters 'create mind', the amount of sentience depends on the total mana spent.

- Colourful: give a particular personality, or 'Code' to the imbued mind.
- Wide: Many things (of the same type) become sentient.

2. Does one simple thing. (Wits -4)
    * "Kill jester"
    * "Defend against this dragon"
    * Does not understand categories (like 'bandits', or 'goblins').
3. Does two-part missions (but no 'if-then' statements, or anything equivalent, has Wits -2)
    * "Find John and whisper this message to him."
    * "Approach the king, then explode."
    * "Enter the village, then report back."
    * Can distinguish people at a glance.
4. Does one complex task. (Intelligence -2, Wits -2, Charisma -2 and 4 points to spend among Mental Attributes)
    * Understands if-then statements.
    * Thinks about its own future.
    * Can make real judgements about people's mood or actions.
    * Tends to become obsessed with its first mission ("Ah, the good old days, when I was protecting against goblins. I should go find more goblins...")
    * Will attempt to suicide if it gets bored.
5. Does any complex tasks asked of it. (Intelligence -2, Wits -2, Charisma -2 and 5 points to spend among Mental Attributes)
    * Has the same Code as the caster (if none is specified).
    * Can make subtle distinctions.
    * "Kill any elves who look like they're spying for King Alreth"
    * Debates the definitions of tasks with the caster ("When you say 'men', do you mean all humans? Or all males? Or human males? And do you mean specifically adults?").
    * Refuses to stop its mission ("everyone's not dead till I say they're dead. You for example are not dead")
    * Makes long-term plans.
    * Knows all the basic concepts the mage knows (people, places, et c.)
    * Wants to be treated as an equal.
    * Has 1 sphere of magic.
6. Does any tasks asked of it...initially (Intelligence -2, Wits -2, Charisma -2 and 6 points to spend among Mental Attributes)
    * Has 2 levels of magic spheres.
    * Knows half the mind of the mage.
    * "Bow, mortal, before the god of crafting abodes."
    * "Your architectural plans are shoddy, and weak, because they use wood."
    * "I have devised a new type of home, built entirely from the metal of the swords of my enemies."
    * "Procure the following list for me, or I shall begin selling your secrets to king Alreth to procure them myself."


