import 'package:flavors_mobile_task/core/helpers/functions/show_snack_bar.dart';
import 'package:flavors_mobile_task/core/theming/colors.dart';
import 'package:flavors_mobile_task/features/home/presentation/providers/name_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UpdateNameScreen extends ConsumerStatefulWidget {
  const UpdateNameScreen({super.key});

  @override
  ConsumerState<UpdateNameScreen> createState() => _UpdateNameScreenState();
}

class _UpdateNameScreenState extends ConsumerState<UpdateNameScreen> {

  @override
  Widget build(BuildContext context) {
    final userName = ref.watch(nameProvider);
    final notifier = ref.read(nameProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                Icons.waving_hand,
                size: 80,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: ColorsManager.kGrey, width: 2),
                ),
                child: Text(
                  'Welcome, $userName! 👋',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 48),
              const Text(
                'Want to change your name?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: notifier.nameController,
                decoration: InputDecoration(
                  labelText: 'Update Your Name',
                  hintText: 'Enter new name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.edit),
                  filled: true,
                  fillColor: ColorsManager.kWhite,
                ),
                textCapitalization: TextCapitalization.words,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  if (notifier.nameController.text.trim().isNotEmpty) {
                    notifier.updateName();
                    notifier.nameController.clear();

                    showSnackBar(
                      context,
                      content: 'Name updated successfully!',
                      isError: false,
                    );
                  } else {
                    showSnackBar(
                      context,
                      content: 'Please enter a name',
                      isError: true,
                    );
                  }
                },
                child: const Text(
                  'Save Changes',
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