class Match {
  final int matchId;
  final int seriesId;
  final String series;
  final String matchDate;
  final String matchTime;
  final String matchType;
  final String venue;
  final String teamA;
  final String result;
  final String teamAShort;
  final String teamAImg;
  // final Map<int, Map<String, dynamic>> teamAScore;
  final String teamAOver;
  final String teamB;
  final String teamBShort;
  final String teamBImg;
  // final Map<int, Map<String, dynamic>> teamBScore;
  final String teamBOver;

  Match({
    required this.matchId,
    required this.seriesId,
    required this.series,
    required this.matchDate,
    required this.matchTime,
    required this.matchType,
    required this.venue,
    required this.teamA,
    required this.result,
    required this.teamAShort,
    required this.teamAImg,
    // required this.teamAScore,
    required this.teamAOver,
    required this.teamB,
    required this.teamBShort,
    required this.teamBImg,
    // required this.teamBScore,
    required this.teamBOver,
  });

  factory Match.fromJson(Map<String, dynamic> json) {
    return Match(
      matchId: json['match_id'],
      seriesId: json['series_id'],
      series: json['series'],
      matchDate: json['match_date'],
      matchTime: json['match_time'],
      matchType: json['match_type'],
      venue: json['venue'],
      teamA: json['team_a'],
      teamAShort: json['team_a_short'],
      teamAImg: json['team_a_img'],
      // teamAScore: Map<int, Map<String, dynamic>>.from(json['team_a_score']),
      teamAOver: json['team_a_over'],
      teamB: json['team_b'],
      teamBShort: json['team_b_short'],
      teamBImg: json['team_b_img'],
      result: json['result'],
      // teamBScore: Map<int, Map<String, dynamic>>.from(json['team_b_score']),
      teamBOver: json['team_b_over'],
    );
  }
}
