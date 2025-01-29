```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonData = jsonDecode(response.body);
      // Accessing data (example)
      final name = jsonData['name'];
      print('Name: $name');
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); //This line only prints the error, but doesn't handle or rethrow it 
    //This means that there may be an exception and the code will continue running. 
    //It's a common mistake to forget the rethrow. 
  }
}
```