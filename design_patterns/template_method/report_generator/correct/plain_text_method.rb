require_relative 'report'


class PlainTextReport < Report

  def output_head
    puts("**** #{@title} ****")
    puts
  end

  def output_line(line)
    puts line
  end

end

report = PlainTextReport.new
report.output_report
# **** Monthly Report ****
#
# Things are going
# really, really well.
