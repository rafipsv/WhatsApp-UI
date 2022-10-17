import 'package:flutter/material.dart';
import 'package:whats_app_ui/info.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: info.length,
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
                          radius: 25,
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
                            Text(
                              info[index]["message"].toString(),
                              style: const TextStyle(
                                  color: Color.fromARGB(255, 112, 110, 110)),
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
                      children: [
                        Text(
                          info[index]["time"].toString(),
                          style: const TextStyle(
                              color: Color.fromARGB(255, 112, 110, 110)),
                        ),
                        const Text(
                          "",
                          style: TextStyle(
                              color: Color.fromARGB(255, 112, 110, 110)),
                        ),
                      ],
                    ),
                  ),
                ]),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 55, 189, 173),
        onPressed: () {},
        child: const Icon(Icons.message),
      ),
    );
  }
}
