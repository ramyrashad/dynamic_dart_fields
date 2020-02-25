class ServerException implements Exception {
  final dynamic data;
  ServerException(this.data);

  String message() {
    return data.message;
  }
}

class CacheException implements Exception {}
