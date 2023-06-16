# levenshtein

Vladimir Levenshtein’s [edit distance algorithm][wiki] for Roblox.
Ported from https://github.com/wooorm/levenshtein-rs - credits go to them.

## Installation

```toml
[dependencies]
levenshtein = "quamatic/levenshtein@0.1.0"
```

## Usage

```lua
local levenshtein = require(path.to.levenshtein)
print(levenshtein("kitten", "sitting"))
```

Yields:

```
3
```
