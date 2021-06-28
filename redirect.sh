#! /bin/bash
sh -c 'echo stdout; echo stderr >&2' >&2 2>some.file
stdout
cat some.file
stderr