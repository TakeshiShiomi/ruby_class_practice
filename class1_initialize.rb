# Rubyのクラスでは、initializeメソッドは、新しいオブジェクトが作成される際に自動的に呼び出されます。
# つまり、initializeメソッドは、オブジェクトの初期化を行うために使用されます。
class Student
  def initialize
    puts '今日から入学しました'
  end
end

Student.new # 実行すると、今日から入学しました

# initializeメソッドに引数をつけると、
# newする際に、その引数を渡す必要があります。
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    puts "#{@name}と申します。#{@age}歳です"
  end
end

person = Person.new("Alice", 25)
person.introduce # Aliceと申します。出席番号25歳です
puts person.inspect #personオブジェクトの内容を表示するために使用されます。この例では、@nameと@ageの値が表示されます。
