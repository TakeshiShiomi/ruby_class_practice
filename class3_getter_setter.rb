# ゲッターセッター（Getter and Setter）は、オブジェクト指向プログラミングにおいて、クラスのインスタンス変数にアクセスするためのメソッドです。
# ゲッターメソッドは、インスタンス変数の値を取得するために使用され、セッターメソッドは、インスタンス変数の値を設定するために使用されます。
# ゲッターメソッドは通常、インスタンス変数の値を返すだけの単純なメソッドです。
# 例えば、nameというインスタンス変数がある場合、それに対応するゲッターメソッドはdef nameという形式で定義され、@nameを返します。
# セッターメソッドは、引数を受け取り、インスタンス変数に値を設定します。
# 例えば、nameというインスタンス変数に対応するセッターメソッドはdef name=(value)という形式で定義され、@name = valueのように値を設定します。

class Person
  def initialize(name)
    @name = name
  end

  def name # ゲッターメソッド
    @name
  end

  def name=(value) # セッターメソッド、インスタンス変数の値を変更したい場合は、=で終わるメソッドを定義して実現
    @name = value
  end
end

person = Person.new('John')
puts person.name # 'John'を出力

person.name = 'Bob' # 'Bob'の部分は、代入ではなく、name=メソッドの呼び出しになっています。
puts person.name # 'Bob'を出力

# この例では、Personクラスにはnameというインスタンス変数があります。nameに対応するゲッターメソッドとセッターメソッドが定義されています。
# インスタンスを作成し、ゲッターメソッドを使用してnameの値を取得したり、セッターメソッドを使用してnameの値を変更したりすることができます。

# ゲッターセッターを使用することで、クラスの外部からインスタンス変数に安全にアクセスできるようになります。
# また、セッターメソッドを使用して値を設定する際に、バリデーションや制約を追加することもできます。