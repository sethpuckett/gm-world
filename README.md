# GM Tools: World API

The World API is used to generate resources related to world building for role playing games. The roll tables contained in this service represent the information in Chapter 1 of the Dungeons Masters Guide for the 5th edition of Dungeons & Dragons.

It is part of the [GM Tools](https://github.com/sethpuckett/gm-tools-docker) suite of services. See that repository for setup instructions.

## Endpoints

- [Forms of Government](#forms-of-government)
- [Individual Government](#individual-government)

---

## Forms of Government

- `GET /worlds/government`: Retrieve a random form of government for a town, city, or kingdom. See The Dungeon Master's Guide, 5th Edition, pages 18-19.

###  Notes

- Probabilities correspond with the Forms of Government roll table on page 18 of the Dungeon Master's Guide, 5th Edition.

### Response Attributes

- `name`: The type of government
- `description`: A description of the government

### Examples

- `GET /worlds/government`

```json
{
  "name": "Republic",
  "description": "Government is entrusted to representatives of an established electorate who rule on behalf of the electors. Any democracy in which only landowners or certain classes can vote could be considered a republic."
}
```

## Individual Government

- `GET /worlds/government/:name`: Retrieve information about a specific form of government based on its name. See The Dungeon Master's Guide, 5th Edition, pages 18-19.

### Path Parameters

- `:name`: the name of form of government
  - possible values: `autocracy`, `bureaucracy`, `confederacy`, `democracy`, `dictatorship`, `feudalism`, `gerontocracy`, `hierarchy`, `magocracy`, `matriarchy`, `militocracy`, `monarchy`, `oligarchy`, `patriarchy`, `meritocracy`, `plutocracy`, `republic`, `satrapy`, `kleptocracy`, `theocracy`

### Response Attributes

- `name`: The type of government
- `description`: A description of the government

### Examples

- `GET /worlds/government/theocracy`

```json
{
  "name": "Theocracy",
  "description": "Rulership falls to a direct representative or a collection of agents of a deity. The centers of power in a theocracy are usually located on sacred sites. In the Eberron campaign setting, the nation of Thrane is a theocracy devoted to the Silver Flame, a divine spirit that resides in Thrane's capital of Flamekeep."
}
```
