
double calculateTaxPrice(double price, {double taxPercent = 15}) {
  double percent=(taxPercent/100);
  double taxAmount = price*percent ;
  return taxAmount;
}