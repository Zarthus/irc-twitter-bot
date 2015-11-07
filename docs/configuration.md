```
irc.server: String, the irc server.
irc.server_password: Optional String, the password of the irc server
irc.port: Integer, the port to connect to
irc.ssl: Boolean, connect with SSL or not
irc.ssl_verify: Boolean, verify ssl certificate
irc.bind: String, host to bind to
irc.umodes: String, modes to set on connecting

irc.realname: String, realname
irc.username: String, username / ident, negated if an identd is installed
irc.nick: String, nickname to use

irc.auth.cert.client_cert: String, path to irc client certificate to authenticate with

irc.auth.sasl.account: String, accountname with Services
irc.auth.sasl.password: String, password to identify with

irc.announce_separator: Char, separator for irc.announce
irc.announce: Array, list of irc.announce_separator separated strings by #channelToAnnounceTo|TwitterAccount

plugin.twitter.timer: Integer, how often the timer should run (in seconds).
plugin.twitter.consumer_key: String, Your Twitter API consumer key
plugin.twitter.consumer_secret: String, Your Twitter API consumer secret
plugin.twitter.access_token: String, Your Twitter API access token
plugin.twitter.access_token_secret: String, Your Twitter API access token secret
plugin.twitter.ignore_old_tweets: Boolean, implements a workaround for the bug where old tweets removed from the history due to history limits get shown again.

logging: Boolean, log to file or not?
prefix: String char, what is the prefix to our commands?
source_url: Optional String, if the project is open source, you can put an URL to its location here.
```
