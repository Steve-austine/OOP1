// Interface
abstract class Vehicle {
  void start();
  void stop();
}

// Base class
class Automobile {
  String make;
  String model;
  int year;

  Automobile(this.make, this.model, this.year);

  void displayInfo() {
    print('Make: $make, Model: $model, Year: $year');
  }
}

// Class implementing an interface and inheriting from a base class
class Car extends Automobile implements Vehicle {
  bool isRunning = false;

  Car(String make, String model, int year) : super(make, model, year);

  @override
  void start() {
    if (!isRunning) {
      print('Starting the car...');
      isRunning = true;
    } else {
      print('The car is already running.');
    }
  }

  @override
  void stop() {
    if (isRunning) {
      print('Stopping the car...');
      isRunning = false;
    } else {
      print('The car is already stopped.');
    }
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Status: ${isRunning ? "Running" : "Stopped"}');
  }
}

void main() {
  // Create a car instance
  Car myCar = Car('Toyota', 'Corolla', 2022);

  // Display car information
  print('Car Information:');
  myCar.displayInfo();

  // Demonstrate a loop
  for (int i = 0; i < 5; i++) {
    print('Loop iteration $i');
  }

  // Start the car
  myCar.start();

  // Stop the car
  myCar.stop();
}
