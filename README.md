# Raku Lingua::NumericWordForms

[![Build Status](https://travis-ci.com/antononcube/Raku-Lingua-NumericWordForms.svg?branch=main)](https://travis-ci.com/antononcube/Raku-Lingua-NumericWordForms)
[![License: Artistic-2.0](https://img.shields.io/badge/License-Artistic%202.0-0298c3.svg)](https://opensource.org/licenses/Artistic-2.0)

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

------

## Installation

Package installations from both sources use [zef installer](https://github.com/ugexe/zef)
(which should be bundled with the "standard" [Rakudo](https://rakudo.org) installation file.)

To install the package from [Raku Modules / PAUSE](https://modules.raku.org)
use the shell command:

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

Generation of numeric word forms:

```perl6
use Lingua::NumericWordForms;
say to-numeric-word-form(8093);
say to-numeric-word-form(8093, 'Bulgarian'); # not implemented yet
say to-numeric-word-form(8093, 'Russian');   # not implemented yet
```
Here is a screenshot of the results:

![to-demo](./documents/diagrams/to-numeric-form-demo-Raku-REPL.png)

The first argument of `to-numeric-word-form` can be:

- An integer
- A string that can be parsed into an integer
- A string of numbers separated by ";"
- A list of numbers or strings

Here are examples of the latter two:

```perl6
say to-numeric-word-form('123; 232; 898_934').join('; ');
# one hundred twenty three; two hundred thirty two; eight hundred ninety eight thousand, nine hundred thirty four

say to-numeric-word-form([321, '992', 100_904]).join('; ');
# three hundred twenty one; nine hundred ninety two; one hundred thousand, nine hundred four
```

### Interpretation

Interpretation of numeric word forms:

```perl6
use Lingua::NumericWordForms;
say from-numeric-word-form('one thousand and twenty three');
say from-numeric-word-form('хиляда двадесет и три', 'Bulgarian');
say from-numeric-word-form('tysiąc dwadzieścia trzy', 'Polish');
say from-numeric-word-form('одна тысяча двадцать три', 'Russian');
say from-numeric-word-form('mil veintitrés', 'Spanish');
```
Here is a screenshot of the results:

![from-demo](./documents/diagrams/from-numeric-form-demo-Raku-REPL.png)

The function `from-numeric-word-form` can take as a first argument:

- A string that is a numeric word form
  
- A string comprised of numeric word forms separated by ";"
  
- A list or an array of strings 

Here are corresponding examples:

```perl6
‌‌say from-numeric-word-form('twenty six');
# 26

say from-numeric-word-form(['mil veintitrés', 'dos mil setenta y dos']);
# (1023 2072)

say from-numeric-word-form('two hundred and five; триста четиридесет и две; 二十万六十五'):p;
# (english => 205 bulgarian => 342 japanese => 200065)
```

For more examples see the file 
[NumericWordForms-examples.raku](./examples/NumericWordForms-examples.raku).

#### Type of the result

The returned result can be an `Int` object or a `Str` object -- that is controlled with
the adverb `number` (which by default is `True`.) Here is an example:

```perl6
my $res = from-numeric-word-form('one thousand and twenty three'); 
say $res, ' ', $res.WHAT;
# 1023 (Int)

$res = from-numeric-word-form('one thousand and twenty three', :!number); 
say $res, ' ', $res.WHAT;
# 1023 (Str)
```

#### Automatic language detection

Automatic language detection is invoked if the second argument is 'Automatic' or not specified:

```perl6
say from-numeric-word-form('tysiąc dwadzieścia trzy', 'Automatic'):p;
# polish => 1023

say from-numeric-word-form(['tysiąc dwadzieścia trzy', 'twenty three']):p;
# (polish => 1023 english => 23)
```

The adverb `:p` specifies whether the result should be a `Pair` object or a `List` of `Pair` objects
with the detected languages as keys.

### Translation

Translation from one language to another:

```raku
‌‌say translate-numeric-word-form('хиляда двадесет и три', 'Bulgarian' => 'English');
```

(Currently that function translates to English only.)

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

## TODO

The following TODO items are ordered by priority, the most important are on top. 
 
1. [ ] Expand parsing beyond trillions

2. [X] Automatic determination of the language

3. [ ] Word form generation:
   - [X] English
   - [ ] Bulgarian
   - [ ] Russian
   - [ ] General algorithm
    
4. [ ] Documentation of the general programming approach.

   - [ ] What are the main challenges?
   - [ ] How the chosen software architecture decisions address them?
   - [ ] Concrete implementations walk-through.
   - [ ] How to implement / include a new language?
   - [ ] How the random numbers test files were made?
   - [ ] Profiling, limitations, alternatives.

5. [ ] Full, consistent Persian numbers parsing. 
   - Currently, Persian number parsing works only for numbers less than 101.  
   
6. [X] General strategy for parsing and interpretation of 
   numeric word forms of East Asia languages  
   - Those languages use groupings based on 10^4 instead of 10^3. 
   - [X] Implementation for Japanese.
   
7. [ ] Implement parsing of ordinal numeric word forms 

8. [ ] Implement parsing of year "shortcut" word forms, like "twenty o three" 

9. [ ] Implement parsing of numeric word forms for rationals, like "five twelfths" 

10. [X] Translation function (from one language to another)

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