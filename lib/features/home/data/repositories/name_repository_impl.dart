import 'package:flavors_mobile_task/features/home/data/data_sources/name_local_data_source.dart';
import 'package:flavors_mobile_task/features/home/domain/repositories/name_repository.dart';

class NameRepositoryImpl implements NameRepository {
  final NameLocalDataSource dataSource;

  NameRepositoryImpl(this.dataSource);

  @override
  String addSuffix(String name) {
    return dataSource.addSuffix(name);
  }
}
