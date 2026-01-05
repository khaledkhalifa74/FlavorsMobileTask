import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/use_cases/add_name_use_case.dart';
import 'name_di.dart';
import 'name_state.dart';


final nameProvider =
NotifierProvider<NameNotifier, NameState>(
    NameNotifier.new,
);

class NameNotifier extends Notifier<NameState> {
    late final AddNameUseCase _addNameUseCase;
    late final TextEditingController nameController;

    @override
    NameState build() {
        nameController = TextEditingController();
        ref.onDispose(() => nameController.dispose());
        _addNameUseCase = ref.read(addNameUseCaseProvider);
        return const NameState('');
    }

    void addName() {
        final result = _addNameUseCase(nameController.text.trim());
        state = NameState(result);
    }
}
