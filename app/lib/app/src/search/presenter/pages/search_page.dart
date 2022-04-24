import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/search_controller.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ModularState<SearchPage, SearchController> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    controller.searchUsers("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Search Users from GitHub'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _searchController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Search users...',
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.searchUsers(_searchController.text);
                    },
                    icon: const Icon(
                      Icons.send,
                      color: Colors.blueAccent,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: Observer(builder: (_) {
                  return !controller.isSuccess
                      ? ListView.separated(
                          itemCount: controller.users.length,
                          itemBuilder: (context, index) {
                            var item = controller.users[index];
                            return ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(item.avatarUrl),
                              ),
                              title: Text(item.login),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Divider();
                          },
                        )
                      : const Text('Error search');
                }),
              ),
            ],
          ),
        ));
  }
}
