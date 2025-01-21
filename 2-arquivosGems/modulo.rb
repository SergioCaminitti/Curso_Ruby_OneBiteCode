# Módulo conversãod e comprimento

# 1 - Milhas para pés

# 1 - Milhas para poelegadas

# 1 - Milhas para centimetros

module LengthConversion
    def self.milesToFeet(miles)
        miles * 5250
    end
    def self.milesToInches(miles)
        feet = milesToFeet(miles)
        feet * 12
    end
    def self.milesToCentimeters(miles)
        inches = milesToInches(miles)
        inches * 2.54
    end
end

# puts LengthConversion.milesToFeet(10)
# puts LengthConversion.milesToInches(20)
# puts LengthConversion.milesToCentimeters(30)