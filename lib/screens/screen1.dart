import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

import 'screen_2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Method 1'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Screen2(),
              ));
            },
            child: const Text(
              'Method 2',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Html(
            data:
                'This is some <a href="https://pub.dev/packages/url_launcher">link</a>',
            onLinkTap: (url, context, attributes, element) {
              launchUrl(
                Uri.parse(
                  url.toString(),
                ),
                mode: LaunchMode.externalApplication,
              );
            },
          ),

          // child: Column(
          //   children: [
          //     SizedBox(
          //       width: double.infinity,
          //       child: Card(
          //         color: const Color(0xFFD18585),
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             const SizedBox(
          //               height: 10,
          //             ),
          //             Container(
          //               margin: const EdgeInsets.symmetric(
          //                 horizontal: 20,
          //                 vertical: 10,
          //               ),
          //               color: const Color(0xFFC4C4C4),
          //               width: 200,
          //               height: 30,
          //             ),
          //             Container(
          //               width: double.infinity,
          //               margin: const EdgeInsets.symmetric(
          //                 horizontal: 20,
          //                 vertical: 10,
          //               ),
          //               color: const Color(0xFFA8D8AD),
          //               height: 30,
          //             ),
          //             const SizedBox(
          //               height: 10,
          //             ),
          //           ],
          //         ),
          //       ),
          //     ),
          //     const SizedBox(
          //       height: 40,
          //     ),
          //     SizedBox(
          //       width: double.infinity,
          //       child: Stack(
          //         children: [
          //           Column(
          //             children: [
          //               const SizedBox(
          //                 height: 25,
          //               ),
          //               Card(
          //                 color: const Color(0xFFD18585),
          //                 child: Column(
          //                   children: [
          //                     const SizedBox(
          //                       height: 30,
          //                     ),
          //                     Container(
          //                       margin: const EdgeInsets.symmetric(
          //                         horizontal: 20,
          //                         vertical: 10,
          //                       ),
          //                       color: const Color(0xFFA8D8AD),
          //                       width: double.infinity,
          //                       height: 30,
          //                     ),
          //                     const SizedBox(
          //                       height: 10,
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ],
          //           ),
          //           Row(
          //             children: [
          //               const Expanded(child: SizedBox()),
          //               Container(
          //                 height: 30,
          //                 width: 180,
          //                 margin: const EdgeInsets.symmetric(
          //                   horizontal: 20,
          //                   vertical: 10,
          //                 ),
          //                 color: const Color(0xFFC4C4C4),
          //               ),
          //               const Expanded(child: SizedBox())
          //             ],
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
