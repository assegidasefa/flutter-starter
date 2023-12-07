import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._interanl();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._interanl();

  final _storage = GetStorage();

  //Generate methode to save data
  Future<void> savaData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //Generate methode to read data
  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Generate Methode to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  // Generate Methode to clear data
  Future<void> clearAll(String key) async {
    await _storage.erase();
  }
}
