# hubot-virustotal

A hubot script that chek urls against virustotal api

See [`src/virustotal.coffee`](src/virustotal.coffee) for full documentation.

## Installation

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
