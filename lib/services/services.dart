import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/match.dart';

class ApiServices {
  static Future<List<Match>> fetchMatches() async {
    final url = Uri.parse("https://tamashabook.com:8111/home_list");
    print("kjvjhvj");

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        print("tr");
        final data = json.decode(response.body);
        final matchesData = data['data'];
        List<Match> matches = [];
        for (var matchData in matchesData['data']) {
          final match = Match.fromJson(matchData);
          print("tr");
          matches.add(match);
        }

        return matches;
      } else {
        throw Exception(
            'Failed to fetch matches. Status Code: ${response.statusCode}');
      }
    } catch (error) {
      print(error);
      throw Exception('Error occurred while fetching matches');
    }
  }
}
