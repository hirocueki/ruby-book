class User
    attr_reader :first_name, :last_name, :age

    def initialize(first_name)
        @first_name = first_name
    end
    
    # def initialize(first_name, last_name, age)
    #     @first_name = first_name
    #     @last_name = last_name
    #     @age = age
    # end

    def full_name
        "#{first_name} #{last_name}"
    end

    def hello
        puts "Hello, I am #{first_name}."
        # full_name.chars.shuffle.join
    end

    def self.create_user(names)
        names.map do | name |
            User.new(name)
        end
    end

end


users = User.create_user(%w(Alice Bob Carol))
users.each do |user|
    user.hello
end

# users = []
# users << User.new('Alice', 'Ruby', 20)
# users << User.new('Bob', 'Python', 30)
# users.each do |user|
#     puts "氏名: #{user.full_name}、年齢 #{user.age}"
#     puts user.hello
# end