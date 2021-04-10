# Raku Lingua::NumericWordForms

This repository provides a Raku package with functions for the 
generation, parsing, and interpretation of numeric word forms in different languages.

The initial versions of the code in this repository can be found in the GitHub repository \[AAr1\].

## Installation

**1.** Install Raku (Perl 6) : https://raku.org/downloads . 

**2.** Make sure you have Zef Module Installer. 
 
   - Type in `zef --version` in the command line.
   - Zef Module Installer can be installed from : https://github.com/ugexe/zef .

**3.** Open a command line program. (E.g. Terminal on Mac OS X.)

**4.** Run the commands:

```
zef install https://github.com/antononcube/Raku-Lingua-NumericWordForms.git
```

## Examples

Generation of numeric word forms:

```perl6
say to-numeric-word-from(8093);

say to-nuimeric-word-from(8093, 'Bulgarian');
```

Interpretation of numeric word forms:

```perl6
say from-numeric-word-from('one thousand and twenty three');

say from-numeric-word-from('хиляда двадесет и три', 'Bulgarian');
```

## References

\[AAr1\] Anton Antonov, [Raku::DSL::Shared](https://github.com/antononcube/Raku-DSL-Shared). 
