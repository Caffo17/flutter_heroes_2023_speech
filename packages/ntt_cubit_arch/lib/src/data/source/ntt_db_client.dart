import 'package:hive/hive.dart';
import 'ntt_data_source.dart';

class NttDbClient<K, V> extends NttDataSource<K> {
  NttDbClient(this.boxId) {
    _localDB = Hive.box(boxId);
  }

  final String boxId;
  late Box<V> _localDB;

  @override
  Future<V?> retrieveData<T>(K request) async {
    return _loadData(request);
  }

  void saveData(K key, V data) {
    _localDB.put(key, data);
  }

  void clearDB() {
    _localDB.clear();
  }

  V? _loadData(K? key) {
    if (_localDB.containsKey(key)) {
      return _localDB.get(key);
    } else {
      return null;
    }
  }
}
