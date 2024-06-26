class TPricingCalculator{

  ///calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate ;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  ///calculate shipping cost
  static String calculateShippingCost(double productPrice, String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  ///calculate tax
  static String calculateTax(double productPrice, String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getShippingCost(String location){
    //lookup the shipping cost of the given location using a shipping rate api
    //calculate the shipping cost based on various factors like distance, weight, etc.
    return 5.00;//example shipping cost of 5
  }

  static double getTaxRateForLocation(String location){
    //lookup the tax rate for the given location from a tax rate database or api
    //return the appropriate tax rate
    return 0.10;//example of tax rate of 10%
  }

  ///sum all cart values and return total amount
 //static double calculateCartTotal(CartModel cart){
 //    return cart.items.map((e)=>e.price).fold(0, (previousPrice, currentPrice)=> previousPrice + (currentPrice ?? 0));
 //}

}