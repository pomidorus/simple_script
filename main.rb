input_str = '1+10+2'

def calculator str
  i, op, j = str.scan(/(\d+)([+\-*\/])(\d+)/)[0]
  i.to_i.send op, j.to_i
end



class Mama
  def work
    raise NotImplementedError, 'Нужно обьявить метод'
  end
end


class Papa < Mama
  def work
    puts 'papa work message'
  end
end

class Dog < Mama
  def work
    puts 'dog work message'
  end
end


people = Dog.new
people.work


people = Papa.new
people.work

puts '------------------2-------------------'

class Papa
  def work
    puts 'papa work message'
  end
end

class Dog
  def work
    puts 'dog work message'
  end
end


class Mama
  def work(people)
    people.work
  end
end

p = Mama.new
p.work(Papa.new)

p = Mama.new
p.work(Dog.new)


p = [Papa.new, Dog.new, Papa.new, Papa.new, Dog.new]
p.each {|object| Mama.new.work(object)}


puts '------------------3-------------------'

class Mama
  def work
    puts 'mama work message'
  end
end

class Papa
  def initialize(people)
    @people = people
  end

  def work
    @people.work
    puts 'papa work message'
  end
end


mama = Mama.new
papa = Papa.new(mama)
papa.work

