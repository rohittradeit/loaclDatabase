import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var s = true;
  var m = false;
  var l = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive"),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: Hive.openBox("Rohit"),
              builder: (context, snapshot) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListTile(
                      title: Text(
                        snapshot.data!.get("Name") ?? "User",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      subtitle: Text(
                        snapshot.data!.get("age").toString(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          snapshot.data!.put("Name", "Rohit Ji");
                          snapshot.data!.delete("age");
                          setState(() {});
                        },
                        icon: const Icon(Icons.edit),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          FutureBuilder(
            future: Hive.openBox("Data"),
            builder: (context, snapshot) {
              return Column(
                children: [
                  Text(
                    snapshot.data!.get("details").toString(),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {});
                    s = true;
                    m = false;
                    l = false;
                  },
                  child: Text(
                    "S",
                    style: TextStyle(color: s ? Colors.amber : Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    s = false;
                    m = true;
                    l = false;
                    setState(() {});
                  },
                  child: Text(
                    "M",
                    style: TextStyle(color: m ? Colors.amber : Colors.black),
                  )),
              TextButton(
                  onPressed: () {
                    s = false;
                    m = false;
                    l = true;
                    setState(() {});
                  },
                  child: Text(
                    "L",
                    style: TextStyle(color: l ? Colors.amber : Colors.black),
                  )),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var box = await Hive.openBox("Rohit");
          box.put("Name", "Rohit Choudhary");
          box.put("age", 22);
          var box2 = await Hive.openBox("Data");
          box2.put("details", "Flutter Developer");
        },
        elevation: 10,
        child: const Icon(Icons.add),
      ),
    );
  }
}
