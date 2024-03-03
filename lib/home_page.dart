// import 'package:bluth_print/print_page.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class HomePage extends StatelessWidget {
//   final List<Map<String, dynamic>> data = [
//     {'title': 'Cadbury Dairy Milk', 'price': 15, 'qty': 2},
//     {'title': 'Parle-G Gluco Biscut', 'price': 5, 'qty': 5},
//     {'title': 'Fresh Onion - 1KG', 'price': 20, 'qty': 1},
//     {'title': 'Fresh Sweet Lime', 'price': 20, 'qty': 5},
//     {'title': 'Maggi', 'price': 10, 'qty': 5},
//   ];

//   final f = NumberFormat("\$###,###.00", "en_US");

//   @override
//   Widget build(BuildContext context) {
//     int _total = 0;
//     _total = data.map((e) => e['price'] * e['qty']).reduce(
//           (value, element) => value + element,
//         );

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter - Thermal Printer'),
//         backgroundColor: Colors.redAccent,
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: data.length,
//               itemBuilder: (c, i) {
//                 return ListTile(
//                   title: Text(
//                     data[i]['title'].toString(),
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   subtitle: Text(
//                     "${f.format(data[i]['price'])} x ${data[i]['qty']}",
//                   ),
//                   trailing: Text(
//                     f.format(
//                       data[i]['price'] * data[i]['qty'],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Container(
//             color: Colors.grey[200],
//             padding: EdgeInsets.all(20),
//             child: Row(
//               children: [
//                 Text(
//                   "Total: ${f.format(_total)}",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 80,
//                 ),
//                 Expanded(
//                   child: TextButton.icon(
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => PrintPage(data),
//                         ),
//                       );
//                     },
//                     icon: Icon(Icons.print),
//                     label: Text('Print'),
//                     style: TextButton.styleFrom(
//                         iconColor: Colors.white, backgroundColor: Colors.green),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:bluth_print/print_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {'title': 'ক্যাডবারি ডেয়ারি মিল্ক', 'price': 15, 'qty': 2},
    {'title': 'পার্ল-জি গ্লুকো বিস্কুট', 'price': 5, 'qty': 5},
    {'title': 'ফ্রেশ পেঁয়াজ - ১ কেজি', 'price': 20, 'qty': 1},
    {'title': 'ফ্রেশ মিষ্টি লেবু', 'price': 20, 'qty': 5},
    {'title': 'ম্যাগি', 'price': 10, 'qty': 5},
  ];

  final f = NumberFormat("\$###,###.00", "bn_BD");

  @override
  Widget build(BuildContext context) {
    int _total = 0;
    _total = data.map((e) => e['price'] * e['qty']).reduce(
          (value, element) => value + element,
        );

    return Scaffold(
      appBar: AppBar(
        title: Text('ফ্লাটার - থারমাল প্রিন্টার'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (c, i) {
                return ListTile(
                  title: Text(
                    data[i]['title'].toString(),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "${f.format(data[i]['price'])} x ${data[i]['qty']}",
                  ),
                  trailing: Text(
                    f.format(
                      data[i]['price'] * data[i]['qty'],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  "মোট: ${f.format(_total)}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 80,
                ),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => PrintPage(data),
                        ),
                      );
                    },
                    icon: Icon(Icons.print),
                    label: Text('প্রিন্ট'),
                    style: TextButton.styleFrom(
                        iconColor: Colors.white, backgroundColor: Colors.green),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
