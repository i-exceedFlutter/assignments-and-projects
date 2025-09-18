class ServiceA {
  String getData() => "fetching data...";
}

class ServiceB {
  late ServiceA serviceA;

  void displayData() {
    print(serviceA.getData());
  }
}

void main() {
  ServiceB serviceB = ServiceB();
  serviceB.serviceA = ServiceA();

  serviceB.displayData();
}
