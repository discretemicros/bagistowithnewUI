import 'package:flutter/material.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _TokenLocal = prefs.getString('ff_TokenLocal') ?? _TokenLocal;
    _tokenforUT = prefs.getString('ff_tokenforUT') ?? _tokenforUT;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _TokenLocal = '';
  String get TokenLocal => _TokenLocal;
  set TokenLocal(String _value) {
    _TokenLocal = _value;
    prefs.setString('ff_TokenLocal', _value);
  }

  int _countcontroller = 0;
  int get countcontroller => _countcontroller;
  set countcontroller(int _value) {
    _countcontroller = _value;
  }

  bool _checkBox = false;
  bool get checkBox => _checkBox;
  set checkBox(bool _value) {
    _checkBox = _value;
  }

  bool _addCheckBox = false;
  bool get addCheckBox => _addCheckBox;
  set addCheckBox(bool _value) {
    _addCheckBox = _value;
  }

  String _tokenforUT = '';
  String get tokenforUT => _tokenforUT;
  set tokenforUT(String _value) {
    _tokenforUT = _value;
    prefs.setString('ff_tokenforUT', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
