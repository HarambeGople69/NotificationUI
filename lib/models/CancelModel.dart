class CancelModel {
  final String account;
  final String totalQuan;
  final String FilledQuan;
  // final String AvgPrice;
  // final String OrderFill;
  // final String OrderFilldate;
  final String OrderType;
  final String limitPrice;
  final String timeInForce;
  final String timeInForceLocation;
  final String OrderPlaced;
  final String OrderPlaceddate;
  final String lastPrice;

  CancelModel(
    this.account,
    this.totalQuan,
    this.FilledQuan,
    this.OrderType,
    this.limitPrice,
    this.timeInForce,
    this.timeInForceLocation,
    this.OrderPlaced,
    this.OrderPlaceddate,
    this.lastPrice, 
  );
}
