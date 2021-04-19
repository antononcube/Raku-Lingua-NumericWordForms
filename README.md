# Raku Lingua::NumericWordForms

[![Build Status](https://travis-ci.com/antononcube/Raku-Lingua-NumericWordForms.svg?branch=main)](https://travis-ci.com/antononcube/Raku-Lingua-NumericWordForms)

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

**1.** Install Raku (Perl 6) : https://raku.org/downloads . 

**2.** Make sure you have Zef Module Installer. 
 
   - Type in `zef --version` in the command line.
   - Zef Module Installer can be installed from : https://github.com/ugexe/zef .

**3.** Open a command line program. (E.g. Terminal on Mac OS X.)

**4.** Run the command:

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

The function `from-numeric-word-form` can also take a list or array of strings as a first argument.
Here is an example:

```perl6
say from-numeric-word-form(['mil veintitrés', 'dos mil setenta y dos'], 'Spanish');
```

For more examples see the file 
[NumericWordForms-examples.raku](./examples/NumericWordForms-examples.raku).

#### Type of the result

The returned result can be an `Int` object or a `Str` object -- that is controlled with
the adverb `number` (which by default is `True`.) Here is an example:

```perl6
my $res = from-numeric-word-form('one thousand and twenty three'); 
say $res, ' ', $res.WHAT;
$res = from-numeric-word-form('one thousand and twenty three', :!number); 
say $res, ' ', $res.WHAT;
```

#### Automatic language detection

Automatic language detection is invoked if the second argument is 'Automatic' or not specified:

```perl6
say from-numeric-word-form('tysiąc dwadzieścia trzy', 'Automatic'):p;
say from-numeric-word-form(['tysiąc dwadzieścia trzy', 'twenty three']):p;
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
   
4. [ ] Full, consistent Persian numbers parsing. 
   - Currently, Persian number parsing works only for numbers less than 101.  
   
5. [X] General strategy for parsing and interpretation of 
   numeric word forms of East Asia languages  
   - Those languages use groupings based on 10^4 instead of 10^3. 
   - [X] Implementation for Japanese.
   
6. [ ] Implement parsing of ordinal numeric word forms 

7. [ ] Implement parsing of year "shortcut" word forms, like "twenty o three" 

8. [ ] Implement parsing of numeric word forms for rationals, like "five twelfths" 

8. [X] Translation function (from one language to another)

------

## References

[AAr1] Anton Antonov, 
[Raku::DSL::Shared](https://github.com/antononcube/Raku-DSL-Shared). 

[BL1] Brent "Labster" Laabs, 
[`Lingua::Number`](https://github.com/labster/p6-Lingua-Number).

[SS1] Larry Wall, Steve Schulze, 
[Lingua::EN::Numbers](https://github.com/thundergnat/Lingua-EN-Numbers).
