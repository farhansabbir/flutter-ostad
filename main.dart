class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year) {}

  int carAge() {
    return DateTime.now().year - year;
  }
}

void main() {
  Car car1 = Car("Toyota", "Corolla", 2015);
  print("Brand: ${car1.brand}");
  print("Model: ${car1.model}");
  print("Year: ${car1.year}");
  print("Car Age: ${car1.carAge()} years");
}
