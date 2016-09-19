# args

**args** provide easy interface for parsing options in bash scripts.

The difference between **args** and getopt or getopts is that **args**
require no boilerplate code to process parsed command line arguments.

# Example

```bash
#!/bin/bash

declare -A opts

eval $(args opts -a -v -b: -n:,--name -- "$@")

printf -- '-a: %s\n' "${opts['-a']:-<empty>}"
printf -- '-v: %s\n' "${opts['-v']:-<empty>}"
printf -- '-b: %s\n' "${opts['-b']:-<empty>}"
printf -- '-n: %s\n' "${opts['-n']:-<empty>}"
printf -- '--name: %s\n' "${opts['--name']:-<empty>}"
printf -- '%s\n' "${@:-<no positionals>}"
```

# Installation

## Arch Linux

```
yaourt -S args-git
```
