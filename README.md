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

## Casks

[ArtCraft](https://getartcraft.com/apps) apps:

| Cask | App |
| --- | --- |
| `designcraft` | DesignCraft: page layout |
| `effectcraft` | EffectCraft: motion graphics compositor |
| `filmcraft` | FilmCraft: video editor |
| `lightcraft` | LightCraft: photo library and raw developer |
| `pdfcraft` | PdfCraft (formerly PrintCraft): PDF editor |
| `vectorcraft` | VectorCraft: vector graphics editor |

PhotoCraft is already in the official Homebrew cask repo: `brew install --cask photocraft`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
