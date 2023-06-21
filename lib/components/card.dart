// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/match.dart';

class MyCard extends StatelessWidget {
  final Match match;

  const MyCard({
    Key? key,
    required this.match,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: ListTile(
        leading: Image.network(
          "${match.teamAImg}",
        ),
        trailing: Image.network(
          "${match.teamBImg}",
        ),
        title: Column(
          children: [
            Text("Series :- ${match.series}"),
            Text("venue :- ${match.venue}"),
            Text("Date :- ${match.matchDate}"),
            Text("Team A :- ${match.teamA} VS Team B :- ${match.teamB}"),
            Text("Result :- ${match.result} "),
          ],
        ),
      ),
    );
  }
}
