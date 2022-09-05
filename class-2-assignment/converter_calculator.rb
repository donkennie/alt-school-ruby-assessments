class Converter

    def multiply(value, num)

        value.to_i * num
    
    end

    def substract(value, num)

        value.to_i - num
    
    end

    def divide(value, num)

        value.to_i / num
    
    end

    def add(value, num)

        value.to_i + num
    
    end


def convert(parameter, value, from, to)

    if parameter == :weight && from == :kg && to == :pound

    multiply(value, 2.2046)

    elsif parameter == :weight && from == :pound && to == :kg
    
    divide(value, 2.2046)

    elsif parameter == :distance && from == :miles && to == :km

    multiply(value, 1.60934)

    elsif parameter == :distance && from == :km && to == :miles 

    substract(value, 1.60934)

    elsif parameter == :temperature && from == :celcius && to == :kelvin

    add(value, 273.15)

    elsif parameter == :temperature && from == :kelvin && to == :celcius

    substract(value, 273.15)

    else

    print "Invalid input"

    end

end

end

classInstance= Converter.new()

result =classInstance.convert(:weight, 3, :kg, :pound)

puts result;