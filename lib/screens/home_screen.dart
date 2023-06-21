import 'package:flutter/material.dart';
import 'package:matchapi/components/card_list.dart';
import 'package:matchapi/services/services.dart';
import '../models/match.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Match>> futureMatches;

  @override
  void initState() {
    super.initState();
    futureMatches = ApiServices.fetchMatches();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Match>>(
      future: futureMatches,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Show a loading indicator while fetching data
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else if (snapshot.hasData) {
          List<Match> matches = snapshot.data!;
          return CardListView(matchData: matches);
        } else {
          return Text('No data available');
        }
      },
    );
  }
}
