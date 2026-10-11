# Katie's Tap

## How do I install these formulae and casks?

`brew install seckatie/tap/<formula>` or `brew install --cask seckatie/tap/<cask>`

Or `brew tap seckatie/tap` and then `brew install <formula>` / `brew install --cask <cask>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "seckatie/tap"
brew "<formula>"
cask "<cask>"
```

## ArtCraft apps

All twelve [ArtCraft](https://getartcraft.com/apps) apps are in the official Homebrew cask repo, so this tap no longer ships them. Install them with `brew install --cask <name>`:

`photocraft`, `vectorcraft`, `filmcraft`, `lightcraft`, `pdfcraft`, `effectcraft`, `designcraft`, `wordcraft`, `soundcraft`, `deckcraft`, `cadcraft`, `gridcraft`

Casks previously installed from this tap migrate to the official ones on `brew update`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
