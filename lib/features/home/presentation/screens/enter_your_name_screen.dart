import 'package:flavors_mobile_task/core/helpers/functions/show_snack_bar.dart';
import 'package:flavors_mobile_task/features/home/presentation/providers/name_provider.dart';
import 'package:flavors_mobile_task/features/home/presentation/screens/update_name_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EnterYourNameScreen extends ConsumerStatefulWidget {
  const EnterYourNameScreen({super.key});

  @override
  ConsumerState<EnterYourNameScreen> createState() => _EnterYourNameScreenState();
}

class _EnterYourNameScreenState extends ConsumerState<EnterYourNameScreen> {
  final TextEditingController _nameController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter Your Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                Icons.person_add,
                size: 80,
              ),
              const SizedBox(height: 30),
              const Text(
                'What\'s your name?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Your Name',
                  hintText: 'Enter your name here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.person),
                  filled: true,
                  fillColor: Colors.grey[50],
                ),
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (_nameController.text.trim().isNotEmpty) {
                    // Update the provider with the new name
                    ref.read(nameProvider.notifier).state = _nameController.text.trim();
          
                    // Navigation
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UpdateNameScreen(),
                      ),
                    );
                  } else {
                    showSnackBar(
                        context,
                        content: 'Please enter your name',
                        isError: true,
                    );
                  }
                },
                child: const Text(
                  'Save & Continue',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
