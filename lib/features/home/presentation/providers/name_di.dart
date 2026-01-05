
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/data_sources/name_local_data_source.dart';
import '../../data/repositories/name_repository_impl.dart';
import '../../domain/repositories/name_repository.dart';
import '../../domain/use_cases/add_name_use_case.dart';

final nameLocalDataSourceProvider =
Provider((ref) => NameLocalDataSource());

final nameRepositoryProvider =
Provider<NameRepository>(
      (ref) => NameRepositoryImpl(
    ref.read(nameLocalDataSourceProvider),
  ),
);

final addNameUseCaseProvider =
Provider(
      (ref) => AddNameUseCase(
    ref.read(nameRepositoryProvider),
  ),
);
