```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Correctly handle the response here
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle non-200 status codes appropriately
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the network request
    print('Error fetching data: $e');
    //Consider rethrowing the exception or handling it based on your needs.
    rethrow; //Rethrowing the exception to be handled at a higher level
  }
}
```