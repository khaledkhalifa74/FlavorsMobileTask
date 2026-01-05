import 'package:flavors_mobile_task/features/home/domain/repositories/name_repository.dart';

class AddNameUseCase {
  final NameRepository repository;

  AddNameUseCase(this.repository);

  String call(String name) {
    return repository.addSuffix(name);
  }
}
