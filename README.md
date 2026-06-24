# clubpay/homebrew-tap

Homebrew tap for [ClubPay](https://github.com/clubpay) / [RonyKIT](https://github.com/clubpay/ronykit) tools.

## Install

```bash
brew tap clubpay/tap
brew install ronyup
```

Or in a single command:

```bash
brew install clubpay/tap/ronyup
```

## Formulae

| Formula  | Description                                                        |
|----------|--------------------------------------------------------------------|
| `ronyup` | CLI for scaffolding RonyKIT workspaces, features, and MCP tooling. |

## Upgrade

```bash
brew update
brew upgrade ronyup
```

## Notes

- `ronyup` is built from source, so a Go toolchain is fetched at install time
  (`depends_on "go" => :build`). `git` is required at runtime for
  `ronyup setup workspace`.
- The formula tracks the per-module `ronyup/vX.Y.Z` tags from the
  `clubpay/ronykit` monorepo and is bumped automatically when a new tag is
  pushed.
