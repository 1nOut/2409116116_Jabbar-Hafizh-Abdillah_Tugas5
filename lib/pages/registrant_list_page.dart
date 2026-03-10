import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/registration_provider.dart';
import '../models/registrant_model.dart';
import 'edit_registrant_page.dart';

class RegistrantListPage extends StatefulWidget {
  const RegistrantListPage({super.key});

  @override
  State<RegistrantListPage> createState() => _RegistrantListPageState();
}

class _RegistrantListPageState extends State<RegistrantListPage> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<RegistrationProvider>();
    final List<Registrant> registrants = provider.registrants;

    final filteredList = registrants.where((r) {
      final query = _searchQuery.toLowerCase();
      return r.name.toLowerCase().contains(query) ||
          r.email.toLowerCase().contains(query);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Pendaftar Event"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: "Cari pendaftar...",
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                setState(() => _searchQuery = value);
              },
            ),
          ),
          Expanded(
            child: filteredList.isEmpty
                ? const Center(child: Text("Data tidak ditemukan"))
                : ListView.builder(
                    itemCount: filteredList.length,
                    itemBuilder: (context, index) {
                      final r = filteredList[index];

                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        child: ListTile(
                          leading: const CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          title: Text(r.name),
                          subtitle: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(r.email),
                              Text("Prodi: ${r.programStudi}"),
                              Text("Gender: ${r.gender}"),
                            ],
                          ),
                          isThreeLine: true,
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.edit,
                                    color: Colors.blue),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          EditRegistrantPage(
                                              registrant: r),
                                    ),
                                  );
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.delete,
                                    color: Colors.red),
                                onPressed: () {
                                  provider.removeRegistrant(r.id);
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}