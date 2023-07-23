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

Each magic sphere is really a Noun.

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
    1. The item's basic nature contorts. Fire becomes sticky, minds think about unnatural acts, and fruit grow into the soil.
    2. The item's basic nature takes a hit. Fire pours into a bowl, minds obsessively count objects, and fruit bleeds.
    3. A single facet of the item's basic nature vanishes or reverses. Fire freezes items, minds cease to create new memories, and 
    4. Turn the target into another element (which must be chained). A unicorn turns into sea-foam, a farmer becomes a song.
- Chained: The spell includes another element, and all the same effects apply. The GM gains full control over interpretation.

## Metamagic

Metamagic decreases a spell's Potency, but benefits the spell itself.

- Distance: the spell targets something far away.
    * But if you cast too far away, the spell misses.
- Duration: the spell lasts for a long time (but the material can still disappear).
    * Unsure what to do with 'enduring fire'.
    * If you make a spell too enduring then the consequences depend on the spell, but *some spells* probably won't be good.
- Duplication: the spell replicates many times.
    * It hits as many targets as the total mana spent on the spell.
    * The spell targets existing instances.
    * It creates a total number equal to MP^T, where 'T' is 'targets'.
    * If there are no valid targets, it creates one.

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

- Creation (make the target, instead of altering it) (+1)
- Tiny target (+1)
- Altering heavy targets (+HP)

The TN for spells is 6 + challenges + MP spent.

Casters can spend a number of MP equal to the highest sphere they are using.
They can power high spheres with any combination of mana.

### Range

Standard spells have a range of 4 Steps plus double the spell's MP.
*Distant* spells increase this significantly.

The caster can only limit the range *inside* the bounds of their current range.
A *ranged fire* spell, cast with 3 MP, can target anywhere inside 'throwing distance', but cannot target anyone 10 Steps away.
A ranged spell with 6 MP cannot target anywhere around the mage, or anywhere they can see - it only targets distant areas visible only with spells.

0. 5 Steps + MP spent.
1. Throwing distance.
2. Shouting distance.
3. Line of sight.

Spells which travel 'too far' usually fail, but sometimes find their own location to explode.

### Alter Life

### Area of Effect

This works with 'wide' spells to alter things with limited or no weight.

Regular spells target any person-sized item.

2. Big table, or four people standing together.
3. Entire room, or copse of trees.
4. Copse of trees, hamlet, stream.
5. A village, stretch of river, inlet, or hill.
6. A city, entire river, mineshaft, or catacomb.
7. Entire mountain, a valley, or loch.

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
    * "Defend against the dragon"
    * Cannot identify anyone except 'creator', 'moving things', 'not moving things'
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


