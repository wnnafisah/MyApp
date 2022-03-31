import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nafisah Page'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/img.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            Container(
              //titleSection
              padding: const EdgeInsets.all(32),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: const Text(
                            'Wan Nur Nafisah',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Selangor, Malaysia',
                          style: TextStyle(
                            color: Colors.grey[500],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.red[500],
                  ),
                  const Text('41'),
                ],
              ),
            ),
            Row(
              //buttonSection
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonColumn(color, Icons.call, 'CALL'),
                _buildButtonColumn(color, Icons.email, 'EMAIL'),
                _buildButtonColumn(color, Icons.share, 'SHARE'),
              ],
            ),
            const Padding(
              //textSection
              padding: EdgeInsets.all(32),
              child: Text(
                'I am an active learner in Kolej Tuanku Jaafar (KTJ) with a passion for computer science. '
                'I am looking for a study buddy to have a friendly discussion about anything that is related to computer science. ',
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    //private helper method
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
              )),
        )
      ],
    );
  }
}
