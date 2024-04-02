# カプセル化（Encapsulation）は、オブジェクト指向プログラミングにおける重要な概念です。
# カプセル化は、データとそのデータを操作するメソッドをオブジェクト内にまとめることで、データの隠蔽と安全性を確保する手法です。
# カプセル化によって、オブジェクトの内部のデータは直接アクセスできなくなります。
# 代わりに、オブジェクトが提供する公開されたメソッドを通じてデータにアクセスする必要があります。
# これにより、データの不正な変更や無効な操作を防ぐことができます。
# オブジェクト同士の紐付き（関係性）を薄くし、独立性を高め、再利用や交換といった保守性を高める効率の考え方。

class Person
  def initialize(name)
    @name = name
  end

  def get_name
    @name
  end

  def set_name(new_name)
    @name = new_name
  end
end

# このクラスでは、Person オブジェクトが名前と年齢を持っています。しかし、直接名前や年齢にアクセスすることはできません
# 代わりに、get_name メソッドや set_name メソッドを使用して名前を取得したり、名前を変更したりします。

person = Person.new("Alice")
puts person.get_name  # "Alice"
person.set_name("Bob")
puts person.get_name  # "Bob"

# このように、カプセル化によってデータの隠蔽が実現され、オブジェクトの内部のデータが外部から直接変更されることを防ぐことができます。
# また、メソッドを通じてデータにアクセスすることで、データの整合性を保つこともできます。
# カプセル化は、オブジェクト指向プログラミングの原則の一つであり、コードの保守性や再利用性を高めるために重要な役割を果たします。
