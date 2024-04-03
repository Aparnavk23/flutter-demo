import 'package:flutter/material.dart';

class Demotext extends StatefulWidget {
  const Demotext({super.key});

  @override
  State<Demotext> createState() => _DemotextState();
}

class _DemotextState extends State<Demotext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('GOLDMART')),
        backgroundColor: const Color.fromARGB(255, 2, 10, 2),
      ),
      body: Text(
        'Goldmart aims to revolutionize the gold buying and selling experience by providing  aseamless platform for customers to buy and sell gold based on real-time market values. In arapidly evolving digital economy, this application bridges the gap between local jewellersand consumers, offering a convenient and secure means to invest in gold to digital goldplatforms. Utilizing Flutters cross-platform capabilities, the application ensures accessibilitacross various devices, empowering users to make informed decisions by accessing up-todate market data.Through intuitive interfaces and robust security measures, the applicationfosters trust and transparency, fostering a vibrant ecosystem for gold transactions. With features tailored to meet the needs of both consumers and local jewellers, this innovative solution promises to redefine the dynamics of gold trading in the digital age.',
        style: TextStyle(
            fontSize: 16, color: Colors.black45, fontStyle: FontStyle.italic),
      ),
    );
  }
}
