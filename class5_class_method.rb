# クラスメソッドは、クラス構文の内部で定義されるインスタンスメソッドが中心だったのに対し、
# クラス自体に対して呼び出されます
# クラスメソッドを定義するには、メソッド名の前に self. を付けます
class Student
  attr_accessor :name

  def initialize(name, attendance_number)
    @name = name
    @attendance_number = attendance_number
  end

  def introduce
    puts "#{@name}と申します。出席番号#{@attendance_number}番です"
  end

  def self.study
    puts "学生の本分は勉強にあります"
  end
end

Student.study # 学生の本分は勉強にあります

# 違う書き方として、以下のようにも書けます
class Student
  attr_accessor :name

  def initialize(name, attendance_number)
    @name = name # 引数のnameを@nameというインスタンス変数に格納する
    @attendance_number = attendance_number
  end

  def introduce
    puts "#{@name}と申します。出席番号#{@attendance_number}番です"
  end

  class << self
    def study
      puts "学生の本分は勉強にあります"
    end
  end
end

Student.study
