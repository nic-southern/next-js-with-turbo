#NextJS Turborepo for my development CI system.
Some things to note, if you need auth for the github repo you need to use the OAuth token. My deployment system injects it directly into the ENV variables, then removes it after for security.
Example is:
`https://gho_coolOauthToken123@github.com/nic-southern/cooldog.git`

Outside of that, I've only tested it with the t3-stack (`create-t3-app`). I'll add more implementations of this if we need for next.js