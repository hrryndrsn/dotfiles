local Color, colors, Group, groups, styles = require('colorbuddy').setup()

-- colors
Color.new('white',     '#C5C8C6')
Color.new('red',       '#cc6666')
Color.new('pink',      '#fef601')
Color.new('green',     '#99cc99')
Color.new('yellow',    '#E1E494')
Color.new('blue',      '#8ABEB7')
Color.new('aqua',      '#8ec07c')
Color.new('cyan',      '#8abeb7')
Color.new('purple',    '#B294BB')
Color.new('violet',    '#B294BB')
Color.new('orange',    '#DE935F')
Color.new('brown',     '#a3685a')
Color.new('seagreen',  '#698b69')
Color.new('turquoise', '#698b69')


Color.new('background2',  '#161923')
Color.new('background3',  '#0D0D0D')


-- zord tweaks
--

Group.new('Normal', colors.white, colors.background2)
Group.new('Number', colors.orange)
Group.new('Boolean', colors.orange)
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
Group.new('Operator', colors.violet)
Group.new('StatusLine', colors.gray3, colors.gray1)

