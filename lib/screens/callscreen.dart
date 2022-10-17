import 'package:flutter/material.dart';
import 'package:whats_app_ui/info.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: ((context, index) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  width: 0.5,
                  color: Color.fromARGB(255, 223, 222, 222),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, left: 15, right: 15, bottom: 10),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          info[index]["profilePic"].toString(),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            info[index]["name"].toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              index == 5 || index == 7 || index == 3
                                  ? const Icon(
                                      Icons.call_made,
                                      color: Colors.blueAccent,
                                      size: 20,
                                    )
                                  : const Icon(
                                      Icons.call_received_sharp,
                                      color: Colors.green,
                                      size: 20,
                                    ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                info[index]["time"].toString(),
                                style: const TextStyle(
                                    color: Color.fromARGB(255, 112, 110, 110)),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.call,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 55, 189, 173),
        onPressed: () {},
        child: const Icon(Icons.phone_in_talk),
      ),
    );
  }
}
