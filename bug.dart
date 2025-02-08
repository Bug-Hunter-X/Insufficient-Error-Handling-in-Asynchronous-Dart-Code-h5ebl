```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access the data
      print(jsonData['key']); 
    } else {
      // Handle error responses
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    //This is where the error handling is lacking.  Consider re-throwing with a more specific exception.
  }
}
```