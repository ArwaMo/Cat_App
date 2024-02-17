import 'package:cats_app/api/cat_api.dart';

import 'package:cats_app/screens/detail_screen.dart';
import 'package:cats_app/screens/favorite_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

late Future<List> cats;

class _HomeScreenState extends State<HomeScreen> {
  NetworkingFun networkingFun = NetworkingFun();

  @override
  void initState() {
    super.initState();
    cats = networkingFun.getCats();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 94, 7, 147),
        title: const Text(
          'Types of cats',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FavoriteScreen()),
              );
            },
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: FutureBuilder<List>(
        future: cats,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              itemCount: snapshot.data!.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                cat: snapshot.data![index],
                              )),
                    );
                  },
                  child: Card(
                    child: Column(
                      children: [
                        Expanded(
                            child: Image.network(
                          snapshot.data![index]['image_link']!,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width,
                        )),
                        const SizedBox(
                          height: 6,
                        ),
                        Center(
                            child: Text(
                          snapshot.data![index]['name'],
                          style: const TextStyle(
                              fontFamily: 'Acme',
                              color: Color.fromARGB(255, 94, 7, 147),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        )),
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text('Error !'));
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
