# privateメソッドとは、クラスの外部から呼び出せず、内部でのみ使えるメソッドに該当します。
class Student
  def initialize(name, attendance_number)
    puts "今日から入学しました、出席番号#{attendance_number}番の#{name}です"
  end

  def run
    walk # ここはクラス内部だから呼び出せる
    puts '少し歩いたから走るか'
  end

  private # ここから下はprivateメソッドになる

  def walk
    puts '今日は1キロ歩いたぜ'
  end
end

student = Student.new('斎藤太郎', 12)
student.run
# ここはクラス外部だからエラーになる
student.walk # private method `walk' called for #<Student:0x0000000100e3fe80> (NoMethodError)となる
