# GM Tools: World API

The World API is used to generate resources related to world building for role playing games. The roll tables contained in this service represent the information in Chapter 1 of the Dungeons Masters Guide for the 5th edition of Dungeons & Dragons.

It is part of the [GM Tools](https://github.com/sethpuckett/gm-tools-docker) suite of services. See that repository for setup instructions.

## Endpoints

- [Forms of Government](#forms-of-government)
- [Individual Government](#individual-government)
- [World Shaking Events](#world-shaking-events)
- [Leader Types](#leader-types)
- [Cataclysmic Disasters](#cataclysmic-disasters)

---

## Forms of Government

- `GET /worlds/government`: Retrieve a random form of government for a town, city, or kingdom. See The Dungeon Master's Guide, 5th Edition, pages 18-19.

###  Notes

- Probabilities correspond with the Forms of Government roll table on page 18 of the Dungeon Master's Guide, 5th Edition.

### Response Attributes

- `government`: The type of government
- `description`: A description of the government

### Examples

- `GET /worlds/government`

```json
{
  "government": "Republic",
  "description": "Government is entrusted to representatives of an established electorate who rule on behalf of the electors. Any democracy in which only landowners or certain classes can vote could be considered a republic."
}
```

---

## Individual Government

- `GET /worlds/government/:name`: Retrieve information about a specific form of government based on its name. See The Dungeon Master's Guide, 5th Edition, pages 18-19.

### Path Parameters

- `:name`: the name of form of government
  - possible values: `autocracy`, `bureaucracy`, `confederacy`, `democracy`, `dictatorship`, `feudalism`, `gerontocracy`, `hierarchy`, `magocracy`, `matriarchy`, `militocracy`, `monarchy`, `oligarchy`, `patriarchy`, `meritocracy`, `plutocracy`, `republic`, `satrapy`, `kleptocracy`, `theocracy`

### Response Attributes

- `government`: The type of government
- `description`: A description of the government

### Examples

- `GET /worlds/government/theocracy`

```json
{
  "government": "Theocracy",
  "description": "Rulership falls to a direct representative or a collection of agents of a deity. The centers of power in a theocracy are usually located on sacred sites. In the Eberron campaign setting, the nation of Thrane is a theocracy devoted to the Silver Flame, a divine spirit that resides in Thrane's capital of Flamekeep."
}
```

---

## World Shaking Events

- `GET /worlds/world-shaking-events`: Retrieve a random world shaking event. See The Dungeon Master's Guide, 5th Edition, page 27.

### Response Attributes

- `event`: The type of world shaking event
- `description`: A description of the event (where applicable)

### Examples

- `GET /worlds/world-shaking-event`

```json
{
  "event": "Fall of a leader or an era",
  "description": "Eras are often defined by the prominent leaders, innovators, and tyrants of the day. These people change the world and etch their signatures indelibly on the pages of history. When they rise to power, they shape the time and place where they live in monumental ways. When they fall from power or pass away, the ghost of their presence lingers. Determine the kind of leader that influences the new or passing era. You can choose the type of leader or determine one randomly using the Leader Types table."
}
```

---

## Leader Types

- `GET /worlds/leader-type`: Retrieve a random leader type. See The Dungeon Master's Guide, 5th Edition, page 27.

### Response Attributes

- `name`: The leader type
- `description`: A description of the leader type

### Examples

- `GET /worlds/leader-type`

```json
{
  "leader_type": "Religious",
  "description": "Religious leaders include deities' avatars, high priests, and messiahs, as well as those in charge of monasteries and leaders of influential religious sects."
}
```

---

## Cataclysmic Disasters

- `GET /worlds/cataclysmic-disaster`: Retrieve a random cataclysmic disaster. See The Dungeon Master's Guide, 5th Edition, page 28.

### Response Attributes

- `disaster`: The cataclysmic disaster

### Examples

- `GET /worlds/cataclysmic-disaster`

```json
{
  "disaster": "Famine/drought"
}
```

---

## Invading Forces

- `GET /worlds/invading-force`: Retrieve a random invading force. See The Dungeon Master's Guide, 5th Edition, page 29.

### Response Attributes

- `force`: The invading force

### Examples

- `GET /worlds/invading-force`

```json
{
  "force": "A savage tribe"
}
```