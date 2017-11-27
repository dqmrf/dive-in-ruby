class Report

  def initialize
    @title = 'Monthly Report'
    @text = ['Things are going', 'really, really well.']
  end

  def output_report(format)
    if format == :plain
      puts("*** #{@title} ***")
    elsif format == :html
      puts('<html>')
      puts('  <head>')
      puts("    <title>#{@title}</title>")
      puts('  </head>')
      puts('  <body>')
    else
      raise "Unknown format: #{format}"
    end

    @text.each do |line|
      if format == :plain
        puts(line)
      else
        puts("    <p>#{line}</p>" )
      end
    end

    if format == :html
      puts(' </body>')
      puts('</html>')
    end
  end

end

report = Report.new
report.output_report(:html)
# <html>
#   <head>
#     <title>Monthly Report</title>
#   </head>
#   <body>
#     <p>Things are going</p>
#     <p>really, really well.</p>
#  </body>
# </html>
report.output_report(:plain)
# *** Monthly Report ***
# Things are going
# really, really well.
