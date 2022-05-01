local Color, colors, Group, groups, styles = require('colorbuddy').setup()

-- colors
Color.new('white',     '#d8d8d8')
Color.new('red',       '#cc6666')
Color.new('pink',      '#fef601')
Color.new('green',     '#99cc99')
Color.new('yellow',    '#E1E494')
Color.new('blue',      '#8abeb7')
Color.new('aqua',      '#8ec07c')
Color.new('cyan',      '#8abeb7')
Color.new('purple',    '#8e6fbd')
Color.new('violet',    '#b294bb')
Color.new('orange',    '#de935f')
Color.new('brown',     '#a3685a')
Color.new('seagreen',  '#698b69')
Color.new('turquoise', '#698b69')


-- zord tweaks
Group.new('Number', colors.green)
Group.new('Function', colors.blue)
Group.new('Statement', colors.violet)
Group.new('Conditional', colors.violet)
Group.new('Macro', colors.orange)
Group.new('Include', colors.blue)
Group.new('Structure', colors.orange)
Group.new('Type', colors.orange)
Group.new('Character', colors.orange)
Group.new('Repeat', colors.violet)
Group.new('Identifier', colors.white)
Group.new('Special', colors.white)
Group.new('Tag', colors.white)

