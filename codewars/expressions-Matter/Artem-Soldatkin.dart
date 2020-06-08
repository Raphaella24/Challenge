#Author Artem Soldatkin
import "dart:math";

int expressionMatter(a, b, c) {
  List<int> list = [a * (b + c), a * b * c, a + b * c, (a + b) * c, a + b + c];
  return list.reduce(max);
}
