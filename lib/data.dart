class Data {
  String date;
  int totalCases;
  int newCases;
  int totalRecoveries;
  int newRecoveries;
  int totalDeaths;
  int newDeaths;

  Data(this.date, this.totalCases, this.newCases, this.totalRecoveries,
      this.newRecoveries, this.totalDeaths, this.newDeaths);
  Data.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    totalCases = json['totalCases'];
    newCases = json['newCases'];
    totalRecoveries = json['totalRecoveries'];
    newRecoveries = json['newRecoveries'];
    totalDeaths = json['totalDeaths'];
    newDeaths = json['newDeaths'];
  }
}
