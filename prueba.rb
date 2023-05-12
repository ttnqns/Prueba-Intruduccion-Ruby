class Person
    attr_accessor :first_name, :last_name, :age
    
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
        puts "Se a creado una nueva instacia"
        puts "******************************"
    end

    def birthday
        @age += 1
    end

    def talk
        puts "Hola, me llamo #{@first_name} mucho gusto"
    end

    def introduce
        puts "Hola, mi nombre es #{@first_name} #{@last_name} y soy una persona"
    end
end

class Student < Person
    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

# -------- PROGRAMA PRINCIPAL -------- #
persona1 = Person.new("Antonio", "Gonzalez", 41)
persona1.talk
persona1.introduce
puts

estudiante = Student.new("María", "Jimenez", 20)
estudiante.talk
estudiante.introduce
puts

profesor = Teacher.new("Roberto", "Arancibia", 38)
profesor.talk
profesor.introduce
puts

apoderado = Parent.new("Teresa", "Berrios", 46)
apoderado.talk
apoderado.introduce