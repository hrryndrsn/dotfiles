local Color, colors, Group, groups, styles = require('colorbuddy').setup()

-- colorbody
Color.new('white',     '#d8d8d8')
Color.new('red',       '#cc6666')
Color.new('pink',      '#fef601')
Color.new('green',     '#99cc99')
Color.new('yellow',    '#f8fe7a')
Color.new('blue',      '#81a2be')
Color.new('aqua',      '#8ec07c')
Color.new('cyan',      '#8abeb7')
Color.new('purple',    '#8e6fbd')
Color.new('violet',    '#b294bb')
Color.new('orange',    '#de935f')
Color.new('brown',     '#a3685a')
Color.new('seagreen',  '#698b69')
Color.new('turquoise', '#698b69')

Group.new('Constant'        , colors.violet)

Group.new('Function'        , colors.blue, colors.background, styles.NONE)

Group.new('Statement'        , colors.violet)

Group.new('Macro'        , colors.blue)

Group.new('Type'        , colors.white)


Group.new('Repeat'        , colors.violet)



	-- *Comment	any comment
	--
	-- *Constant	any constant
	--  String		a string constant: "this is a string"
	--  Character	a character constant: 'c', '\n'
	--  Number		a number constant: 234, 0xff
	--  Boolean	a boolean constant: TRUE, false
	--  Float		a floating point constant: 2.3e10
	--
	-- *Identifier	any variable name
	--  Function	function name (also: methods for classes)
	--
	-- *Statement	any statement
	--  Conditional	if, then, else, endif, switch, etc.
	--  Repeat		for, do, while, etc.
	--  Label		case, default, etc.
	--  Operator	"sizeof", "+", "*", etc.
	--  Keyword	any other keyword
	--  Exception	try, catch, throw
	--
	-- *PreProc	generic Preprocessor
	--  Include	preprocessor #include
	--  Define		preprocessor #define
	--  Macro		same as Define
	--  PreCondit	preprocessor #if, #else, #endif, etc.
	--
	-- *Type		int, long, char, etc.
	--  StorageClass	static, register, volatile, etc.
	--  Structure	struct, union, enum, etc.
	--  Typedef	A typedef
	--
	-- *Special	any special symbol
	--  SpecialChar	special character in a constant
	--  Tag		you can use CTRL-] on this
	--  Delimiter	character that needs attention
	--  SpecialComment	special things inside a comment
	--  Debug		debugging statements
	--
	-- *Underlined	text that stands out, HTML links
	--
	-- *Ignore		left blank, hidden  |hl-Ignore|
	--
	-- *Error		any erroneous construct
	--
	-- *Todo		anything that needs extra attention; mostly the
	-- 		keywords TODO FIXME and XXX
