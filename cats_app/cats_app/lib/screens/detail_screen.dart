import 'package:cats_app/data/global_data.dart';

import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({super.key, required this.cat});
  final Map cat;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 94, 7, 147),
        title: Text(
          widget.cat['name'],
          style: const TextStyle(color: Colors.white, fontFamily: 'Acme'),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
              onPressed: () {
                favorite = true;

                setState(() {});

                favoriteCat.add(widget.cat);
              },
              icon: favorite
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(
                      Icons.favorite_outline,
                    )),
        ],
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 80),
            child: Column(
              children: [
                Image.network(
                  widget.cat['image_link'],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${widget.cat['name']}',
                  style: const TextStyle(
                      fontFamily: 'Acme',
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                          child: Text(
                        'Origin: ',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 94, 7, 147),
                        ),
                      )),
                      WidgetSpan(child: Text('${widget.cat['origin']}')),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                          child: Text(
                        'Max Weight: ',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 94, 7, 147),
                        ),
                      )),
                      WidgetSpan(child: Text('${widget.cat['max_weight']}')),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                          child: Text(
                        'Min Weight: ',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 94, 7, 147),
                        ),
                      )),
                      WidgetSpan(child: Text('${widget.cat['min_weight']}')),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                          child: Text(
                        'Length: ',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 94, 7, 147),
                        ),
                      )),
                      WidgetSpan(child: Text('${widget.cat.length}')),
                    ],
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      const WidgetSpan(
                          child: Text(
                        'intelligence: ',
                        style: TextStyle(
                          fontSize: 17,
                          color: Color.fromARGB(255, 94, 7, 147),
                        ),
                      )),
                      WidgetSpan(child: Text('${widget.cat['intelligence']}')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
