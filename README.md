# hubot-virustotal

A hubot script that chek urls against virustotal api

See [`src/virustotal.coffee`](src/virustotal.coffee) for full documentation.

## Installation

Get a api key from https://www.virustotal.com and set the env variable:

HUBOT_VT_APIKEY="yourkey"

In hubot project repo, run:

`npm install hubot-virustotal --save`

Then add **hubot-virustotal** to your `external-scripts.json`:

```json
["hubot-virustotal"]
```

## Sample Interaction

```
user1>> vt url https://placeholder.it
hubot>> Positives: 2
```

[![dependencies Status](https://david-dm.org/hashashin/hubot-virustotal/status.svg)](https://david-dm.org/hashashin/hubot-virustotal) [![devDependencies Status](https://david-dm.org/hashashin/hubot-virustotal/dev-status.svg)](https://david-dm.org/hashashin/hubot-virustotal?type=dev)
