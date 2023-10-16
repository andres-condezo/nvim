;; extends 

(("for" @repeat) (#set! conceal "F"))
(("function" @keyword.function) (#set! conceal "f"))
((function_call name: (identifier) @function.builtin (#eq? @function.builtin "require")) (#set! conceal "r"))
(("in" @keyword) (#set! conceal "i"))
(("local" @keyword) (#set! conceal "l"))
(("do" @repeat) (#set! conceal "d"))
(("if" @conditional) (#set! conceal "?"))
(("and" @keyword.function) (#set! conceal "&"))
(("return" @keyword.function) (#set! conceal "R"))
(("then" @conditional) (#set! conceal "t"))
(("else" @conditional) (#set! conceal "e"))
(("elseif" @conditional) (#set! conceal "e"))
(("end" @keyword.function) (#set! conceal "E"))
