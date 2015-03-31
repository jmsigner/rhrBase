#include <Rcpp.h>
#include <cmath>

using namespace Rcpp;


// Random walk
// [[Rcpp::export]]
List simpleRandomWalk(float sx, float sy, NumericVector sinA, NumericVector cosA, NumericVector d) {

  int n = d.size();

  NumericVector rx(n);
  NumericVector ry(n);

  rx[0] = sx;
  ry[0] = sy;

  for (int i = 1; i < n; i++) {

    rx[i] = rx[i-1] + cosA[i-1] * d[i];
    ry[i] = ry[i-1] + sinA[i-1] * d[i];

  }

  return List::create(Named("rx") = rx,
                      Named("ry") = ry);
}

