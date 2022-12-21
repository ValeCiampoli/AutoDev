
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  static const routeName = 'search-screen.dart';

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
    TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
              Padding(
                    padding: const EdgeInsets.all(30),
                      child: Container(
                          width: 750,
                          height: 45,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: TextField(
                              onSubmitted: (value) {
                                setState(() {}); 
                              },
                              cursorColor: Colors.black,
                              style: const TextStyle(fontSize: 18),
                              controller: searchController,
                              decoration: InputDecoration(
                                  prefixIcon: IconButton(
                                      onPressed: () => {},
                                      icon: const Icon(
                                        Icons.search,
                                        size: 30,
                                      )),
                                  border: InputBorder.none,
                                  hintText: ("Search")),
                            ),
                          ),
                        ),
                      ),
      ],
    );
  }
}