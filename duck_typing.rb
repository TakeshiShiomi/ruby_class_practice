# ダックタイピングとは、オブジェクト指向プログラミングにおける概念で、
# 「もしオブジェクトが鴨のように歩き、鴨のように鳴くなら、そのオブジェクトは鴨である」という考え方を表しています。
# つまり、オブジェクトのクラスや型を気にせず、そのオブジェクトがどのように振る舞うか（どのメソッドを持っているか）に注目します。

class Duck
  def quack
    'Quack!'
  end

  def swim
    'Swim swim swim'
  end
end

class Person
  def quack
    'I\'m quacking like a duck!'
  end

  def swim
    'I\'m swimming like a duck!'
  end
end

def in_the_lake(duck)
  puts duck.quack
  puts duck.swim
end

duck = Duck.new
person = Person.new

in_the_lake(duck)
# Output:
# Quack!
# Swim swim swim

in_the_lake(person)
# Output:
# I'm quacking like a duck!
# I'm swimming like a duck!

# この例では、DuckクラスとPersonクラスの両方がquackメソッドとswimメソッドを持っています。
# in_the_lakeメソッドは、その引数がquackメソッドとswimメソッドを持っている限り、どのようなオブジェクトでも受け取ることができます。
# これがダックタイピングの例です。
