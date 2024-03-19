import 'package:gym_tracker_app/feactures/timer/domaint/datasource/local_storage_datasource.dart';
import 'package:gym_tracker_app/feactures/timer/domaint/repositories/local_storage_repository.dart';

class LocalStorateRepositoryImpl extends LocalStorageRepository {
  final LocalStorageDatasource datasource;

  LocalStorateRepositoryImpl({required this.datasource});

  @override
  Future<void> getTimerSetting() {
    return datasource.setTimer();
  }

  @override
  Future<void> setTimer() {
    return datasource.getTimerSetting();
  }
}
