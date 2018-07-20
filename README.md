# drivers-problem
Root Insurance technical coding assessment

# Installation
```
bundle install
```

# Usage

To run, type in terminal:
```
cat input.txt | ./bin/drivers_problem

```

# Planning

I decided the best way to go upon solving this problem was to create classes for both the driver and the trips that are to be created through the input data. While I did not set up a database with this data, I chose to build this program around classes as opposed to all the logic being kept in one method so that the mapping of classes to database tables could be easily implemented in the future.

The general flow of my program is as follows:
- Program is initiated with command `cat input.txt | ./bin/drivers_problem` which accepts `input.txt` file as input
- After initialization of `DataConverter`, a call is made to the #call method which runs a series of functions which handles creation of objects, sorting of data, and final output of data
- Calculations of trip mileage and average speed is done within the `Trip` class

# Refactoring

Although my program the task at hand correctly, there is always room for refactoring. I would begin refactoring with moving some of the logic that is held within `Driver` class and `Trip` class into either the `DataConverter` class or into a new class whose sole purpose would be to handle that logic (namely: conversions and calculations). Additionally, adding more validations for data would prevent bugs from bad data. As mentioned previously, a database and use of a system such as ActiveRecord would greatly increase the usability of said validations and possible model relationships. Finally, more tests would further ensure that the program is functioning correctly.    
