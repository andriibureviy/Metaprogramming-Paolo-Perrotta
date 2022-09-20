class Person
  attr_accessor :name, :age, :gender, :height, :weight

  def initialize(name, age, gender, height, weight)
    @name = name
    @age = age
    @gender = gender
    @height = height
    @weight = weight

    # automatically creating singleton methods
    create_method(name)

    def method_missing(method_name, *args, &block)
      if method_name.to_s.include?('summary')
        # dynamically creating methods
        puts "Person named: #{name}"
      else
        puts "#{method_name} is missing bla bla . .."
      end
    end
  end

  # creating singleton method so we can use during object initialization
  def create_method(name)
    define_singleton_method("#{name}s_bio") do |args|
      "Args #{args}"
    end
  end

  # defining methods manually
  # def self.create_method(name)
  #   define_method("#{name}s_bio") do |args|
  #     "Args #{args}"
  #   end
  # end
end
