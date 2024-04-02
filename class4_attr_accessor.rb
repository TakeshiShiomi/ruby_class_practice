# Rubyのattr_accessor, attr_reader, attr_writerは、クラスのインスタンス変数に対するゲッターとセッターを簡単に定義するためのメソッド
# attr_accessorは、ゲッターとセッターの両方を定義
# attr_readerは、ゲッターのみを定義、インスタンス変数の値を設定することはできません
# attr_writerは、セッターのみを定義、インスタンス変数の値を取得することはできません
class Person
  attr_accessor :name
  attr_reader :age
  attr_writer :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def introduce
    puts "#{@name}と申します。#{@age}歳です。性別は#{@gender}です"
  end
end

person1 = Person.new('Alice', 25, 'female')
person2 = Person.new('Bob', 30, 'female')

puts person1.age # 25
# puts person1.gender # エラー
person2.gender = 'male'
# person2.age = 35 # エラー

puts person1.introduce # Aliceと申します。25歳です。性別はfemaleです
puts person2.introduce # Bobと申します。30歳です。性別はmaleです
