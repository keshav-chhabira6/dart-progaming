
void main() async {
  print('Fetching weather data...');

  try {
    String weather = await fetchWeatherData();
    print('Weather data received: $weather');
  } catch (e) {
    print('Error: Failed to fetch weather data. $e');
  }
}

Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 3));

  bool success = DateTime.now().second % 2 == 0; 

  if (success) {
    return 'Sunny, 25°C';
  } else {
    throw 'Network error';
  }
}
