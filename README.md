#loadme.sh

A simple script for loading the CPU from the command line.

Takes a single, a non-zero number argument indicating the desired level of loading. As a rough
reference, an argument of 1 leads to 100% CPU load, an argument of 2 leads to 200% (2 CPUs pegged)
etc etc.

If no argument is given, defaults to 1.

## Example

    $> loadme.sh 4
    Loading CPU 4 time(s)...
    Press any key to stop... 
    bash: line 1: 21284 Terminated: 15          yes > /dev/null
    bash: line 1: 21285 Terminated: 15          yes > /dev/null
    bash: line 1: 21283 Terminated: 15          yes > /dev/null
    bash: line 1: 21282 Terminated: 15          yes > /dev/null
    Stopped

## Requirements

This script uses the bash 'yes' command. Any *nix shell with this command should work fine.
