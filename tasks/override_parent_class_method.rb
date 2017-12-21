require 'pry'

class Foo
  def roles
    [{ id: 1, name: :admin },
     { id: 2, name: :staff },
     { id: 3, name: :manager }
    ]
  end
end

class Bar < Foo
  def roles
    class << roles = super
      def method_missing(name)
        name.to_s.match(/[a-z]+(?=\?$)/) do |match|
          return self.any? do |role|
            role[:name].to_s == match[0]
          end
        end
        super
      end
    end

    roles
  end
end

bar = Bar.new
p bar.roles
p bar.roles.admin? #=> true
p bar.roles.odmen? #=> false
