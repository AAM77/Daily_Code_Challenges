function getMaxProfit(stockPrices) {

  // Calculate the max profit
  // find the max value
  // find the lowest value
  // return the difference

  let maxProfit = 0;

  if (stockPrices.length > 1) {
    const maxAmount = Math.max(...stockPrices.slice(1));
    let minAmount = Math.min(...stockPrices);

    if (stockPrices.indexOf(minAmount) > stockPrices.indexOf(maxAmount)) {
      minAmount = stockPrices[0]
    }

   maxProfit = (maxAmount - minAmount);
  } else {
    throw new Error('Need at least two prices to generate profit.')
  }

  console.log(maxProfit)
  return maxProfit;
}
