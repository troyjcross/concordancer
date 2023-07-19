#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
double rcpp_ccc(NumericVector x, NumericVector y) {
  int n = x.size();
  double mean_x = mean(x);
  double mean_y = mean(y);
  double var_x = var(x);
  double var_y = var(y);
  double cov_xy = sum((x - mean_x) * (y - mean_y)) / (n - 1);
  double ccc = (2 * cov_xy) / (var_x + var_y + pow((mean_x - mean_y), 2));
  return ccc;
}
