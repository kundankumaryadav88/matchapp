import 'package:flutter/material.dart';
import 'package:matchapi/components/card.dart';
import '../models/match.dart';

class CardListView extends StatelessWidget {
  final List<Match> matchData;
  CardListView({
    Key? key,
    required this.matchData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Match List"),
      ),
      body: ListView.builder(
        itemCount: matchData.length,
        itemBuilder: (BuildContext context, int index) {
          Match match = matchData[index];
          return MyCard(
            match: match,
          );
        },
      ),
    );
  }
}
