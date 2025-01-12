```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class DataFetchException implements Exception {
  final String message;
  DataFetchException(this.message);
  @override
  String toString() => 'DataFetchException: $message';
}

Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        return jsonDecode(response.body);
      } catch (e) {
        throw DataFetchException('Failed to parse JSON: $e');
      }
    } else {
      throw DataFetchException('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    if (e is DataFetchException) {
      print('Custom Exception: ${e.toString()}');
      //Handle custom exception appropriately
      //e.g., show error message to user
    } else {
      print('Unexpected error: $e');
      //Handle other unexpected exception
    }
    rethrow; //Rethrowing the exception to be handled at a higher level
  }
}
```