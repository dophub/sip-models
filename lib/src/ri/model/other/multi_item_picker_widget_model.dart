class MultiItemPickerWidgetModel implements IMultiItemPickerWidgetModel {
  final String _title;
  bool _selectedValue;
  dynamic value;

  MultiItemPickerWidgetModel(this._title, this._selectedValue, {this.value});

  @override
  bool get selectedValue => _selectedValue;

  @override
  String get title => _title;

  @override
  bool? get isDisable => false;

  @override
  set selectedValue(bool value) {
    _selectedValue = value;
  }
}

abstract class IMultiItemPickerWidgetModel {
  bool? get isDisable;

  String get title;

  bool get selectedValue;

  set selectedValue(bool value);
}
