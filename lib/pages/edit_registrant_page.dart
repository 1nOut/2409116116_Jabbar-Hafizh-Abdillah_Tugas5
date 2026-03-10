import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/registrant_model.dart';
import '../providers/registration_provider.dart';

class EditRegistrantPage extends StatefulWidget {
  final Registrant registrant;

  const EditRegistrantPage({
    super.key,
    required this.registrant,
  });

  @override
  State<EditRegistrantPage> createState() => _EditRegistrantPageState();
}

class _EditRegistrantPageState extends State<EditRegistrantPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _emailController;

  late String _program;

  final List<String> programs = [
    "Informatika",
    "Sistem Informasi",
    "Teknik Komputer"
  ];

  @override
  void initState() {
    super.initState();

    _nameController =
        TextEditingController(text: widget.registrant.name);

    _emailController =
        TextEditingController(text: widget.registrant.email);

    _program = widget.registrant.programStudi;
  }

  void _saveEdit() {
    if (!_formKey.currentState!.validate()) return;

    final updated = Registrant(
      id: widget.registrant.id,
      name: _nameController.text,
      email: _emailController.text,
      gender: widget.registrant.gender,
      programStudi: _program,
      dateOfBirth: widget.registrant.dateOfBirth,
    );

    context.read<RegistrationProvider>().updateRegistrant(updated);

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Pendaftar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: "Nama"),
                validator: (value) =>
                    value!.isEmpty ? "Nama wajib diisi" : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) =>
                    !value!.contains("@") ? "Email tidak valid" : null,
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField(
                value: _program,
                items: programs.map((p) {
                  return DropdownMenuItem(
                    value: p,
                    child: Text(p),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _program = value!;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveEdit,
                child: const Text("Simpan Perubahan"),
              )
            ],
          ),
        ),
      ),
    );
  }
}