import 'package:cats_app/data/global_data.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({
    super.key,
  });

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 94, 7, 147),
        title: const Text(
          'Favorite',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(
                    favoriteCat[index]['image_link'],
                    width: 60,
                    height: 60,
                  ),
                  title: Text(
                    favoriteCat[index]['name'],
                    style: const TextStyle(
                      fontFamily: 'Acme',
                      fontSize: 17,
                      color: Color.fromARGB(255, 94, 7, 147),
                    ),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        favoriteCat.remove(favoriteCat[index]);
                        setState(() {});
                      },
                      icon: const Icon(Icons.delete)),
                );
              },
              itemCount: favoriteCat.length,
            )
          ],
        ),
      ),
    );
  }
}
