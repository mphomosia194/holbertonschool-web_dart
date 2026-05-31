import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    final userData = jsonDecode(await fetchUserData());
    final userId = userData['id'];

    final orders =
        List<String>.from(jsonDecode(await fetchUserOrders(userId)));

    double total = 0;

    for (String product in orders) {
      total +=
          (jsonDecode(await fetchProductPrice(product)) as num).toDouble();
    }

    return total;
  } catch (error) {
    return -1;
  }
}
