colors = %w{ red orange yellow green blue indigo violet }
grouped_colors = colors.group_by { |color| color.size }
print grouped_colors; puts "\n" #=> {3=>["red"], 6=>["orange", "yellow", "indigo", "violet"], 5=>["green"], 4=>["blue"]}
