import 'package:flutter/material.dart';

class AppBody extends StatelessWidget {
  const AppBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                  child: Text(
                    "Good Morning 😊",
                    style: TextStyle(
                      fontSize: 60,
                      height: 1.2,
                      color: Color.fromARGB(255, 21, 47, 109),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(94, 90, 137, 246),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: const [
                          Text("Today is January 2, 2050"),
                          Text("You have 3 Task to do"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
