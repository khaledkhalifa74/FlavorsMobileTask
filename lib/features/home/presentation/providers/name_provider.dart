import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class NameNotifier extends Notifier<String>{
    late final TextEditingController nameController;
    @override
    String build() {
        nameController = TextEditingController();
        ref.onDispose(() => nameController.dispose());
        return '';
    }
    void addName() {
        state = '${nameController.text.trim()}001';
    }
    void updateName() {
        addName();
    }
}

final nameProvider = NotifierProvider<NameNotifier, String>(
    NameNotifier.new,
);