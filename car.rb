module Mod

end
class Vehicle
    @@NUMBER_OF_DOORS=0
    @@instances = 0

    def initialize()
        @@instances +=1
    end

    def self.gas_mileage(km,rendimiento)
        km / rendimiento
    end

    def self.get_number_of_instances
        puts "La cantidad de instancias son: #{@@instances}\n"
    end
    def get_numer_of_doors
        @@NUMBER_OF_DOORS
    end
    
    private_class_method def self.get_age_car(year)
        Time.new.year - year
    end
end

class  MyCar < Vehicle

    attr_reader :color, :year

    def initialize(color,rendimiento,door,year)
        super()
        @color = color
        @@NUMBER_OF_DOORS=door
        @rendimiento = rendimiento
        @year=year
    end

    def spray_paint(color)
        @color=color
    end

end

class MyTruck < Vehicle
    @@NUMBER_OF_DOORS=0
    include Mod
end


car = MyCar.new("red",13,5,2000)

Vehicle.get_number_of_instances

puts "Los ancentros de mi instancia son:\n#{car.class.ancestors}\n" 

# Prueba de que no se puede llamar desde afuera

# puts Vehicle.get_age_car(car.year)
