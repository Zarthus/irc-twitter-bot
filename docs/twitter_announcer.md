TwitterAnnouncer
================

TwitterAnnouncer is the main plugin of TwitterBot

## Commands

All commands start with `tw`, and also allow the longer version to `tweet`.  `twcheck` == `tweetcheck`

- `tw <account> [number of tweets = 1]` - Fetches recent tweets from `<account>`, up to 3 tweets will be pasted.
- `twcheck <option>` - Toggle the polling of tweets. Options can be `on`, `off`, or `status`. Turning the option off or on requires channel op.
- `twlist <option> <account>` - `add` or `delete` a twitter account temporarily.
