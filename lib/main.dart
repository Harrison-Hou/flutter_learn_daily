import 'package:http/http.dart' as http;


void main() async {
  
  final result = await http.get('http://worldclockapi.com/api/json/utc/now');
  print(result.toString());
  print('main function end');
}






