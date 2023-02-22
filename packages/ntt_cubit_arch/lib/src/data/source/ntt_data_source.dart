// ignore_for_file: strict_raw_type

abstract class NttDataSource<R> {
  Future retrieveData<V>(R request);
}
