class DetailModel {
  final String account;
  final String totalQuan;
  final String FilledQuan;
  final String AvgPrice;
  final String OrderFill;
  final String OrderFilldate;
  final String OrderType;
  final String limitPrice;
  final String timeInForce;
  final String OrderPlaced;
  final String OrderPlaceddate;
  final String lastPrice;

  DetailModel(
      this.account,
      this.totalQuan,
      this.FilledQuan,
      this.AvgPrice,
      this.OrderFill,
      this.OrderFilldate,
      this.OrderType,
      this.limitPrice,
      this.timeInForce,
      this.OrderPlaced,
      this.OrderPlaceddate,
      this.lastPrice,);
}
