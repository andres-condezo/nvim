;; extends 

(("yield" @keyword) (#set! conceal "Y"))
(("for" @repeat) (#set! conceal "F"))
(("if" @conditional) (#set! conceal "?"))
(("del" @keyword) (#set! conceal "D"))
(("not" @keyword.operator) (#set! conceal "!"))
(("with" @keyword) (#set! conceal "w"))
(("return" @keyword) (#set! conceal "R"))
(("while" @repeat) (#set! conceal "W"))
((call function: (identifier) @function.builtin (#eq? @function.builtin "print")) (#set! conceal "p"))
(("def" @keyword.function) (#set! conceal "f"))
((yield ("from") @keyword) (#set! conceal "F"))
(("continue" @keyword) (#set! conceal "C"))
(("else" @conditional) (#set! conceal "e"))
(("assert" @keyword) (#set! conceal "?"))
(("or" @keyword.operator) (#set! conceal "|"))
(("import" @include) (#set! conceal "i"))
(("lambda" @include) (#set! conceal "λ"))
(("global" @keyword) (#set! conceal "G"))
((import_from_statement ("from") @include) (#set! conceal "f"))
(("and" @keyword.operator) (#set! conceal "&"))
(("break" @keyword) (#set! conceal "B"))
(("elif" @conditional) (#set! conceal "e"))
(("class" @keyword) (#set! conceal "c"))
(("pass" @keyword) (#set! conceal "P"))