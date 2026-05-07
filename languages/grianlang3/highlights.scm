; Comments
(comment) @comment

; Keywords
[
  "def"
  "return"
  "fnc"
  "import"
  "if"
  "else"
  "while"
  "struct"
  "as"
  "sizeof"
] @keyword

; Literals
(string_literal) @string
(char_literal) @string
(integer_literal) @number
(float_literal) @number
(boolean_literal) @boolean

; Types
(type
  (primitive_type) @type.builtin)

(type
  (identifier) @type)

(struct_statement
  name: (identifier) @type)

; Declarations and references
(function_statement
  name: (identifier) @function)

(function_parameter
  name: (identifier) @parameter)

(call_expression
  function: (identifier) @function.call)

(def_statement
  name: (identifier) @variable)

(member_expression
  member: (identifier) @property)

(struct_field
  name: (identifier) @property)

(struct_initialization_expression
  name: (identifier) @constructor)

; Operators and punctuation
[
  "="
  "=="
  "!="
  "<"
  "<="
  ">"
  ">="
  "+"
  "-"
  "*"
  "/"
  "&&"
  "||"
  "!"
  "&"
  "->"
  ":"
] @operator

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  ","
  ";"
  "."
] @punctuation.delimiter
