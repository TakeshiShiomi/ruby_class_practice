# 継承とは、既にあるクラスの内容をもとにして、
# 別のクラスを作ることで、文字通り既存クラスを継承した、
# 新しいクラスを定義する
class Student # 親クラスまたはスーパークラス
  attr_accessor :name

  def initialize(name, attendance_number)
    @name = name # 引数のnameを@nameというインスタンス変数に格納する
    @attendance_number = attendance_number
  end

  def introduce
    puts "#{@name}と申します。出席番号は#{@attendance_number}です"
  end
end

class LiteratureStudent < Student
  def initialize(name, attendance_number, favorite_book, favorite_author)
    # @name = name # これは親クラスにも存在している
    super(name, attendance_number) # 親クラスのinitializeメソッドを呼び出す
    @favorite_book = favorite_book
    @favorite_author = favorite_author
  end

  def introduce # オーバーライド
    super
    puts "愛読書は#{@favorite_book}で、好きな作家は#{@favorite_author}です"
  end
end

literature_student = LiteratureStudent.new('太宰', 5, '「心」', '夏目漱石')
puts literature_student.name # 親クラスでattr_accessorでnameが定義されているので、子クラスで定義しなくても呼び出せる
literature_student.introduce # 太宰と申します。出席番号は5です 愛読書は「心」で、好きな作家は夏目漱石です

# tudentクラスが親クラスとして定義され、LiteratureStudentクラスがその子クラスとして定義されています。
# LiteratureStudentクラスはStudentクラスからname属性とintroduceメソッドを引き継いでいます。
# 子クラスのinitializeメソッドでは、superキーワードを使用して親クラスの同名メソッドを呼び出しています。
# これにより、親クラスの初期化処理を再利用しつつ、子クラス独自の初期化処理（ここではfavorite_bookとfavorite_authorの設定）を追加しています。
# また、子クラスのintroduceメソッドでは、親クラスの同名メソッドをsuperで呼び出した上で、追加の情報を出力しています。
# これはメソッドのオーバーライドの一例で、親クラスの振る舞いを子クラスでカスタマイズするための一般的なテクニックです。
