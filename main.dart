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
  Car toyota = Car("Toyota", "Corolla", 2015);
  print("Brand: ${toyota.brand}");
  print("Model: ${toyota.model}");
  print("Year: ${toyota.year}");
  print("Car Age: ${toyota.carAge()} years");
}
