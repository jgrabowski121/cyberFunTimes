#!/usr/bin/env python3

# Celcius conversion: (x°C × 9/5) + 32 = 32°F
# Fahrenheit conversion: (0°F − 32) × 5/9 = -17.78°C


while(True): 
    try:
        input_temperature = int(input("Please enter the temperature you wish to convert (ctrl-c to exit): "))
        input_metric = input("Please enter the current metric: ")

        if input_metric.lower() == 'c':
            result = (input_temperature * 9 / 5) + 32
            print("{} C is equal to {} F".format(input_temperature, result))
        elif input_metric.lower() == 'f':
            result = (input_temperature - 32) * 5 / 9 
            print("{} F is equal to {} C".format(input_temperature, result))
        else:
            print("Invalid metric")
    
    except KeyboardInterrupt:
        print(" ..Program Exited")
        break
    except: 
        print("Do as I say asshole!")
