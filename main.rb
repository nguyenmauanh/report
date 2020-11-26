class Person
    attr_accessor :name
    attr_accessor :age

    def initialize()
    end
end

class Student < Person 
    attr_accessor :student_number
    
    def initialize
        super()
    end

    def show_info
        puts "#{self.name}\t\t#{self.age}\t\t#{self.student_number}" 
    end

    def process
        printf "名前 > "
        @name = String(gets.chomp) rescue nil
        printf "年齢 > "
        @age = Integer(gets.chomp) rescue nil
        printf "番号 > "
        @student_number = (gets.to_i) rescue nil 
    end

end

printf "学生の人数を入力してください > "
number = gets.chomp.to_i
count = 1
students = []
number.times do
    puts "#{count}番目の学生の名前は何ですか?"
    s = Student.new
    s.process
    count += 1
    students.append(s)
end

p "-------------名簿---------------"
students.each do |s|
  s.show_info
end




