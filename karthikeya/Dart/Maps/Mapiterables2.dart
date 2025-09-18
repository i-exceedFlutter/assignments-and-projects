void main() {
  var countries = ["India", "USA", "Japan", "China"];

  var countryMap = Map.fromIterable(
    countries,
    key: (item) => item,
    value: (item) => item.length,
  );

  print(countryMap);

  var cities = {"Salem", "Bengaluru", "Kurnool", "Kochi"};

  var cityStateMap = Map.fromIterable(
    cities,
    key: (city) => city,
    value: (city) => city.startsWith("K")
        ? "Andhra/Kerala"
        : city.startsWith("S")
        ? "Tamil Nadu"
        : "Karnataka",
  );

  print(cityStateMap);

  var numbers = [1, 2, 3, 4, 5];
  var squares = numbers.map((n) => n * n); //lambda function

  var numberSquareMap = Map.fromIterables(numbers, squares);

  print(numberSquareMap);

  var currencies = ["INR", "USD", "JPY", "GBP"];

  var countryCurrencyMap = Map.fromIterables(countries, currencies);

  print(countryCurrencyMap);
}
