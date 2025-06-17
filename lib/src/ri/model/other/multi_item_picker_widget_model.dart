class MultiItemPickerWidgetModel implements IMultiItemPickerWidgetModel {
  final String _title;
  bool _selectedValue;
  bool? _isDisable;
  dynamic value;

  MultiItemPickerWidgetModel(this._title, this._selectedValue, {this.value, bool? isDisable}) {
    _isDisable = isDisable;
  }

  @override
  bool get selectedValue => _selectedValue;

  @override
  String get title => _title;

  @override
  bool? get isDisable => _isDisable;

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
