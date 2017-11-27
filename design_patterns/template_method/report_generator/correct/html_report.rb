require_relative 'report'


class HTMLReport < Report

  def output_start
    puts('<html>')
  end

  def output_head
    puts('  <head>')
    puts("    <title>#{@title}</title>")
    puts('  </head>')
  end

  def output_body_start
    puts('  <body>')
  end

  def output_line(line)
    puts("    <p>#{line}</p>")
  end

  def output_body_end
    puts('  </body>')
  end

  def output_end
    puts('</html>')
  end

end

report = HTMLReport.new
report.output_report
# <html>
#   <head>
#     <title>Monthly Report</title>
#   </head>
#   <body>
#     <p>Things are going</p>
#     <p>really, really well.</p>
#   </body>
# </html>
