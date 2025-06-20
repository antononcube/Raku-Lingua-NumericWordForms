# Raku Lingua::NumericWordForms

[![MacOS](https://github.com/antononcube/Raku-Lingua-NumericWordForms/actions/workflows/macos.yml/badge.svg)](https://github.com/antononcube/Raku-Lingua-NumericWordForms/actions/workflows/macos.yml)
[![Linux](https://github.com/antononcube/Raku-Lingua-NumericWordForms/actions/workflows/linux.yml/badge.svg)](https://github.com/antononcube/Raku-Lingua-NumericWordForms/actions/workflows/linux.yml)
[![Win64](https://github.com/antononcube/Raku-Lingua-NumericWordForms/actions/workflows/windows.yml/badge.svg)](https://github.com/antononcube/Raku-Lingua-NumericWordForms/actions/workflows/windows.yml)
[![https://raku.land/zef:antononcube/Lingua::NumericWordForms](https://raku.land/zef:antononcube/Lingua::NumericWordForms/badges/version)](https://raku.land/zef:antononcube/Lingua::NumericWordForms)
[![https://raku.land/zef:antononcube/Lingua::NumericWordForms](https://raku.land/zef:antononcube/Lingua::NumericWordForms/badges/downloads)](https://raku.land/zef:antononcube/Lingua::NumericWordForms)
[![License: Artistic-2.0](https://img.shields.io/badge/License-Artistic%202.0-0298c3.svg)](https://opensource.org/licenses/Artistic-2.0)

🇦🇲 🇦🇿 :bulgaria: 🇨🇿 🇬🇧 🇫🇷 🇩🇪 :greece: :iran: 🇯🇵 🇰🇿 :poland: 🇵🇹 🇷🇴 🇷🇺 🇪🇸 :ukraine:

## Introduction

This repository provides a Raku package with functions for the 
generation, parsing, and interpretation of numeric word forms in different languages.

The initial versions of the code in this repository can be found in the GitHub repository \[AAr1\].

The Raku package 
[`Lingua::Number`](https://github.com/labster/p6-Lingua-Number), [BL1],
provides word forms (cardinal, ordinal, etc.) generation in many languages. 
(But at least for one language the produced forms are incorrect.)

The Raku package 
[`Lingua::EN::Numbers`](https://github.com/labster/p6-Lingua-Number), [SS1],
also provides word forms (cardinal, ordinal, etc.) generation in English. 

The parsers and interpreters of this package can be seen as complementary
to the functions in [BL1, SS1].

**Remark:** Maybe a more complete version of this package should be merged with 
[`Lingua::Number`](https://github.com/labster/p6-Lingua-Number), [BL1].

**Remark:** I can judge the quality of the results only of the languages:
Bulgarian, English, and Russian. The numeric word form interpreters for the rest of the languages
pass testing, but they might have potentially many deficiencies. 
(That are easily detected by people who have mastered those languages.)

**Remark:** The package also "understands" (i.e. parses and translates to)
[Koremutake](https://shorl.com/koremutake.php).

------

## Installation

Package installations from both sources use [zef installer](https://github.com/ugexe/zef)
(which should be bundled with the "standard" [Rakudo](https://rakudo.org) installation file.)

To install the package via Zef's ecosystem use the shell command:

```
zef install Lingua::NumericWordForms
```

To install the package from the GitHub repository use the shell command:

```
zef install https://github.com/antononcube/Raku-Lingua-NumericWordForms.git
```

------

## Examples

### Generation 

The generation of numeric word forms is a *secondary* goal of this package.
Currently only generation of Bulgarian, English, Japanese, [Koremutake](https://shorl.com/koremutake.php), and Russian 
numeric word forms are implemented. 
Here are examples:

```perl6
use Lingua::NumericWordForms;
say to-numeric-word-form(8093);
say to-numeric-word-form(8093, 'Bulgarian');
say to-numeric-word-form(8093, 'Koremutake');
say to-numeric-word-form(8093, 'Russian');
say to-numeric-word-form(8093, 'Japanese');
```

The first argument of `to-numeric-word-form` can be:

- An integer
- A string that can be parsed into an integer
- A string of numbers separated by ";"
- A list of numbers or strings

Here are examples of the latter two:

```perl6
to-numeric-word-form('123; 232; 898_934').join('; ');
```

```perl6
to-numeric-word-form([321, '992', 100_904]).join('; ');
```

### Interpretation

Interpretation of numeric word forms is the *primary* goal of this package.
Multiple language are supported. Here are examples:

```perl6
use Lingua::NumericWordForms;
say from-numeric-word-form('one thousand and twenty three');
say from-numeric-word-form('хиляда двадесет и три', 'Bulgarian');
say from-numeric-word-form('tysiąc dwadzieścia trzy', 'Polish');
say from-numeric-word-form('одна тысяча двадцать три', lang => 'Russian');
say from-numeric-word-form('mil veintitrés', lang => 'Spanish');
```

The function `from-numeric-word-form` can take as a first argument:

- A string that is a numeric word form
  
- A string comprised of numeric word forms separated by ";"
  
- A list or an array of strings 

The language can be specified as a second positional argument or with the named argument "lang".
In addition to the names of the supported languages the value of the language argument can be also `Whatever` or "Automatic".

Here are corresponding examples:

```perl6
from-numeric-word-form('twenty six');
```

```perl6
from-numeric-word-form(['mil veintitrés', 'dos mil setenta y dos']);
```

```perl6
from-numeric-word-form('two hundred and five; триста четиридесет и две; 二十万六十五'):p;
```

For more examples see the file 
[NumericWordForms-examples.raku](examples/NumericWordForms-parsing-examples.raku).

Here we retrieve a list of all supported languages:

```perl6
from-numeric-word-form('languages').sort
```

**Remark:** In the list above some languages appear twice, with both their English and native names.

#### Type of the result

The returned result can be an `Int` object or a `Str` object -- that is controlled with
the adverb `number` (which by default is `True`.) Here is an example:

```perl6
my $res = from-numeric-word-form('one thousand and twenty three'); 
say $res, ' ', $res.WHAT;
```

```perl6
$res = from-numeric-word-form('one thousand and twenty three', :!number); 
say $res, ' ', $res.WHAT;
```

#### Automatic language detection

Automatic language detection is invoked if the second argument is `Whatever` or "Automatic":

```perl6
say from-numeric-word-form('tysiąc dwadzieścia trzy', Whatever):p;
say from-numeric-word-form('триста двадесет и три', lang => 'Automatic'):p;
```

```perl6
say from-numeric-word-form(['tysiąc dwadzieścia trzy', 'twenty three']):p;
```

The adverb `:pairs` (`:p`) specifies whether the result should be a `Pair` object or a `List` of `Pair` objects
with the detected languages as keys.

### Translation

Translation from one language to another:

```perl6
translate-numeric-word-form('хиляда двадесет и три', 'Bulgarian' => 'English');
```

```perl6
translate-numeric-word-form('two hundred thousand and five', 'English' => 'Bulgarian');
```

**Remark:** Currently that function translates to Bulgarian, English, 
[Koremutake](https://shorl.com/koremutake.php), and Russian.
only (from any of the package languages.)

Here is a Spanish to Koremutake example:

```perl6
my $numForm = "tres mil ochocientos noventa";
my $trRes = translate-numeric-word-form($numForm, 'Automatic' => 'Koremutake');
say "Given           : $numForm";
say "To Koremutake   : $trRes";
say "From Koremutake : {from-numeric-word-form($trRes)}";
```

The named arguments "from" and "to" can be also used:

```perl6
translate-numeric-word-form($numForm, from => Whatever, to => 'English');
```

------

## Roles

This package provides (exports) roles that can be used in grammars or roles in other packages, applications, etc.

For example, see the roles:

```
Lingua::NumericWordForms::Roles::Bulgarian::WordedNumberSpec
Lingua::NumericWordForms::Roles::English::WordedNumberSpec
```

A grammar or role that does the roles above should use the rule:

```
<numeric-word-form>
```

For code examples see the file 
[Parsing-examples.raku](./examples/Parsing-examples.raku).

**Remark:** The role `Lingua::NumericWordForms::Roles::WordedNumberSpec` and the corresponding
actions class `Lingua::NumericWordForms::Actions::WordedNumberSpec` are "abstract".
They were introduced in order to have simpler roles and actions code 
(and non-duplicated implementations.) Hence, that role and class *should not* be used in
grammars and roles outside of this package.

------

## CLI

The package provides two Command Line Interface (CLI) functions:
`from-numeric-word-form` and `to-numeric-word-form`.

Corresponding usage messages and examples are given below.

### `from-numeric-word-form`

#### Usage message

```shell
from-numeric-word-form --help
```

#### Example

```shell
from-numeric-word-form two hundred and five
```

### `to-numeric-word-form`

#### Usage message

```shell
to-numeric-word-form --help
```

#### Example

```shell
to-numeric-word-form 33 124 99832 --lang Bulgarian
```

------

## TODO

The following TODO items are ordered by priority, the most important are on top. 
 
1. [ ] TODO Expand parsing beyond trillions

2. [X] DONE Automatic determination of the language

3. [X] DONE Word form generation:
   - [X] DONE Bulgarian
   - [X] DONE English
   - [X] DONE Japanese
   - [X] DONE Koremutake
   - [X] DONE Russian
   - [X] CANCELED General algorithm
       - Canceled because it is a hard problem and Large Language Models (LLMs) can do it.

4. [ ] TODO Documentation of the general programming approach.

   - [ ] TODO What are the main challenges?
   - [ ] TODO How the chosen software architecture decisions address them?
   - [ ] TODO Concrete implementations walk-through.
   - [ ] TODO How to implement / include a new language?
   - [ ] TODO How the random numbers test files were made?
   - [ ] TODO Profiling, limitations, alternatives.
   - [ ] TODO Comparison with LLM-based conversions.
   
5. [ ] TODO Full, consistent Persian numbers parsing. 
   - Currently, Persian number parsing works only for numbers less than 101.  
   
6. [X] DONE General strategy for parsing and interpretation of 
   numeric word forms of East Asia languages  
   - Those languages use groupings based on 10^4 instead of 10^3. 
   - [X] DONE Implementation for Japanese.
   
7. [ ] TODO Implement parsing of ordinal numeric word forms 

   - [X] DONE English, French, Greek, and Spanish
   
   - [X] DONE Bulgarian
    
   - [X] DONE Czech, Russian, Ukrainian, Polish
   
   - [X] DONE Japanese

   - [X] DONE Koremutake
   
   - [X] DONE Portuguese
   
   - [X] DONE Azerbaijani
   
   - [X] DONE Kazakh
        - Very similar to Azerbaijani.
          - The Kazakh action class should inherit the Azerbaijani one.
          
   - [X] DONE German
        - As expected, required some refactoring to handle the agglutinative word forms. 
     
   - [X] DONE Romanian
   
   - [X] DONE Armenian
   
   - [ ] TODO Korean
   
     - Implemented to a point.
     
   - [ ] TODO Persian
    
     - Implemented to a point.
   
   - [ ] TODO Sanskrit
   
       
8. [ ] TODO Implement parsing of year "shortcut" word forms, like "twenty o three" 

9. [ ] TODO Implement parsing of numeric word forms for rationals, like "five twelfths" 

10. [X] DONE Translation function (from one language to another)

------

# Collaboration notes

- The **main rule** is that the main branch should always be installable and pass all of its tests.

- From the main rule it follows that new features are developed in separate branches or forks.
    
- The easiest way to collaborate is to create and commit new test files or corrections 
  to existing test files.
  
  - Then I would change the corresponding grammars rules and actions 
    in order the package to pass the tests.
    
- Please use [*Conventional Commits* (CC)](https://www.conventionalcommits.org/en/v1.0.0/). 
  
  - Here is the CC short form stencil (in Raku):
    `<type> ['(' <scope> ')']? ':' <description>`.
      
  - See the recent commits in this repository for examples.
    
  - Here are additional examples of CC messages (each line is a separate message):
 
```text  
feat:Implemented the parsing of Danish numeric word forms.
docs:Added documentation of right-to-left word forms parsing.
fix(Persian):Corrected tests for numbers larger that 1000.
test:Added new corner cases tests.
test(Ukrainian):Added new tests.
```   

------

## Acknowledgements

- Thanks to [spyrettas](https://github.com/spyrettas) for:
  - Riding "shotgun" during the initial implementation of the Greek role, actions, and tests
  - Proofreading and correcting Greek tests and role
- Thanks to [Denis](https://github.com/DenisVCode) for:
  - Proofreading the Czech language unit tests and suggesting corrections.
- Thanks to Aikerim Belispayeva, [aikerimbelis](https://github.com/aikerimbelis), for:
  - Proofreading the Kazah language unit tests and suggesting corrections.
- Thanks to Herbert Breunung, [lichtkind](https://github.com/lichtkind), for:
  - Proofreading the German language unit tests
  - Suggesting corrections and extensions
  - Verifying the German numeric word forms parsing with the [DSL Translations](https://antononcube.shinyapps.io/DSL-evaluations/) interface
- Thanks to Nora Popescu for:
  - Bug reporting and suggestions for the Romanian language parser
  - Verifying the Romanian numeric word forms parsing with the [DSL Translations](https://antononcube.shinyapps.io/DSL-evaluations/) interface
  
------

## References

[AAr1] Anton Antonov, 
[Raku::DSL::Shared](https://github.com/antononcube/Raku-DSL-Shared). 

[BL1] Brent "Labster" Laabs, 
[`Lingua::Number`](https://github.com/labster/p6-Lingua-Number).

[SS1] Larry Wall, Steve Schulze, 
[Lingua::EN::Numbers](https://github.com/thundergnat/Lingua-EN-Numbers).

------

Anton Antonov   
Florida, USA   
April-May, 2021   
October, 2022 (updated, separate executable doc)   
March, 2023 (updated, Azerbaijani parsing)   
June, 2024 (updated, Bulgarian generation)   
March-April, 2025 (updated; Kazakh, German, and Romanian parsing; Russian generation)   