# Connect

### Running
To run the container, issue the following example command:
```
docker run -d \
-p 80:80/tcp \
ghcr.io/netwarlan/connect
```

From a browser where STEAM is installed, we can go to the following URL:
```
http://<server>/?<IP of game server>:<Port of game server>
```

When hit, the page will auto-rewrite the meta header in the html file so the browser prompts to launch the Steam application with the game server and ip provided.


### Why is this needed?
I'm experimenting with ways for players to quickly get into a server without jumping through in-game console commands, server browsers, etc...
Discord being our social platform of choice, it used to support non http/https hyperlink protocols. So I could simply provide a link in Discord like:
```
steam://connect/1.2.3.4:1234
```
And a user could click that link and launch into their game.

In order to protect users, Discord no longer allows these non-standard protocols from being hyperlinked, so this service above works around that problem so we can keep using it.

There are some bonus points here in that there are way more options available to us, like potentially passing non-steam games, but more to be tested there. 