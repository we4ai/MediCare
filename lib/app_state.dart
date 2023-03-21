import 'package:flutter/material.dart';
import 'backend/backend.dart';
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
    _CatNames = prefs.getStringList('ff_CatNames') ?? _CatNames;
    _favnames = prefs.getStringList('ff_favnames') ?? _favnames;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _CatNames = ['Luno', 'Max', 'Jack', 'N1', 'N2', 'N3'];
  List<String> get CatNames => _CatNames;
  set CatNames(List<String> _value) {
    _CatNames = _value;
    prefs.setStringList('ff_CatNames', _value);
  }

  void addToCatNames(String _value) {
    _CatNames.add(_value);
    prefs.setStringList('ff_CatNames', _CatNames);
  }

  void removeFromCatNames(String _value) {
    _CatNames.remove(_value);
    prefs.setStringList('ff_CatNames', _CatNames);
  }

  void removeAtIndexFromCatNames(int _index) {
    _CatNames.removeAt(_index);
    prefs.setStringList('ff_CatNames', _CatNames);
  }

  List<String> _favnames = [];
  List<String> get favnames => _favnames;
  set favnames(List<String> _value) {
    _favnames = _value;
    prefs.setStringList('ff_favnames', _value);
  }

  void addToFavnames(String _value) {
    _favnames.add(_value);
    prefs.setStringList('ff_favnames', _favnames);
  }

  void removeFromFavnames(String _value) {
    _favnames.remove(_value);
    prefs.setStringList('ff_favnames', _favnames);
  }

  void removeAtIndexFromFavnames(int _index) {
    _favnames.removeAt(_index);
    prefs.setStringList('ff_favnames', _favnames);
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
