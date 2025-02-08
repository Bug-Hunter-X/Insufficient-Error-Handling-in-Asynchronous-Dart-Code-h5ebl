```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } on FormatException catch (e) {
        throw Exception('Invalid JSON format: $e');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on Exception catch (e) {
    //This rethrows a more specific exception.
    rethrow;
  } catch (e) {
    // Handle any other unexpected errors 
    throw Exception('An unexpected error occurred: $e');
  }
}

void main() async {
  try {
    final data = await fetchData();
    print(data['key']);
  } catch (e) {
    print('Error fetching data: $e');
  }
}
```