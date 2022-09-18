import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: const CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: CupertinoButton(
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          backgroundColor: Colors.blue,
          middle: const Text(
            "Coba Cupertino Widget",
            style: TextStyle(color: Colors.white),
          ),
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                CupertinoIcons.settings,
                color: Colors.white,
                size: 22,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 22,
              )
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10)),
              const CupertinoTextField(
                padding: EdgeInsets.all(15),
                placeholder: "Cari",
              ),
              Padding(padding: EdgeInsets.all(90)),
              CupertinoButton.filled(
                onPressed: () {},
                child: const Text('Enabled'),
              ),
              Padding(padding: EdgeInsets.all(10)),
              CupertinoButton.filled(
                onPressed: () {},
                child: const Text('Enabled'),
              ),
              Padding(padding: EdgeInsets.all(10)),
              CupertinoButton.filled(
                onPressed: () {},
                child: const Text('Enabled'),
              ),
              Padding(padding: EdgeInsets.all(91)),
              CupertinoTabBar(
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.person),
                  )
                ],
                activeColor: Colors.deepOrange,
                inactiveColor: Colors.black,
                border: Border(top: BorderSide(color: Colors.indigo.shade900)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
