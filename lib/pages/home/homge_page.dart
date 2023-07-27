import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'Please stay here',
        )));
        return false;
      },
      child: Scaffold(
        backgroundColor: Color(0xFFF6EFE8),
        appBar: AppBar(
          backgroundColor: Color(0xFFF6EFE8),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Color(0xFFAD3F32),
              ),
              Text(
                'Dong Khoi St, District 1',
                style: TextStyle(
                    color: Color(0xFF483332),
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          centerTitle: true,
          actions: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_outlined),
              ),
            )
          ],
        ),
        drawer: Drawer(),
        body: const SafeArea(
          child: Text("Body"),
        ),
      ),
    );
  }
}
