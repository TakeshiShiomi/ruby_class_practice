# インスタンス変数は、そのオブジェクト内のすべてのメソッドからアクセスできます。
# インスタンス変数は、クラス外部からは参照できません。(インスタンス変数の値を取得した場合はゲッターセッターを使用する)
class Student
  def initialize(name, attendance_number)
    @name = name # 引数のnameを@nameというインスタンス変数に格納する
    @attendance_number = attendance_number
  end

  def introduce
    puts "#{@name}と申します。出席番号#{@attendance_number}番です"
  end
end

student1 = Student.new('斎藤太郎', 12)
student2 = Student.new('佐藤桃子', 24)
student1.introduce # 斎藤太郎と申します。出席番号12番です
student2.introduce # 佐藤桃子と申します。出席番号24番です
