import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'predict_state.dart';

class PredictCubit extends Cubit<PredictState> {
  PredictCubit() : super(PredictInitial());

  Future<void> postData(Map<String, dynamic> data) async {
    // emit(PredictLoading());
    try {
      final response = await http.post(
        Uri.parse('http://16.171.173.235:5005/predict'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data), // Serialize the data map to JSON
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        emit(PredictFetched(data));
        print('Response: ${response.body}');
      } else {
        // Request failed with an error, handle the error here
        print('Request failed with status: ${response.statusCode}');
        print('Error message: ${response.body}');
        emit(PredictError(errorMessage: response.body));
      }
    } catch (e) {
      // Handle any exceptions that occur during the request
      print('Error: $e');
    }
  }
}





















// Future<void> postData(String data) async {
//   try {
//     final response = await http.post(
//       Uri.parse(
//           'http://127.0.0.1:5000/predict'), // Replace with your API endpoint
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         // Add any additional headers if needed
//       },
//       body: jsonEncode(<String, String>{
//         'data_key': data, // Replace with your data field name
//       }),
//     );

//     if (response.statusCode == 200) {
//       // Request was successful, handle the response here
//       print('Response: ${response.body}');
//     } else {
//       // Request failed with an error, handle the error here
//       print('Request failed with status: ${response.statusCode}');
//       print('Error message: ${response.body}');
//     }
//   } catch (e) {
//     // Handle any exceptions that occur during the request
//     print('Error: $e');
//   }
// }
