import 'package:flutter/material.dart';
import 'package:the_business_square/shared/theme/colors.dart';

import '../../../shared/theme/helper.dart';
part 'multi_helper.dart';

abstract class MultiSelector {
  static _KSingleSelector<T> single<T>({
    required String title,
    required List<MultiSelectorItem<T>> items,
    required Function(T? values) onChanged,
    Decoration? btnDecoration,
    popupDecoration,
    SelectorViewType? type,
    String? Function(T? values)? validator,
    String? error,
    TextStyle? titleStyle,
    T? value,
    InputDecoration? textFieldDecoration,
  }) {
    return _KSingleSelector<T>(
      title: title,
      btnDecoration: btnDecoration,
      items: items,
      type: type,
      onChanged: onChanged,
      validator: validator,
      error: error,
      titleStyle: titleStyle,
      value: value,
      textFieldDecoration: textFieldDecoration,
      popupDecoration: popupDecoration,
    );
  }

  static _KMultiSelector<T> multi<T>({
    required String title,
    required List<MultiSelectorItem<T>> items,
    required Function(List<T> values) onChanged,
    List<T>? initSelection,
    Decoration? btnDecoration,
    popupDecoration,
    SelectorViewType? type,
    String? Function(List<T>? values)? validator,
    String? error,
    String? confirmText,
    TextStyle? confirmStyle,
    TextStyle? titleStyle,
    InputDecoration? textFieldDecoration,
  }) {
    return _KMultiSelector<T>(
      title: title,
      btnDecoration: btnDecoration,
      items: items,
      type: type,
      onChanged: onChanged,
      validator: validator,
      error: error,
      initSelection: initSelection,
      confirmText: confirmText,
      confirmStyle: confirmStyle,
      titleStyle: titleStyle,
      textFieldDecoration: textFieldDecoration,
      popupDecoration: popupDecoration,
    );
  }
}

class _KMultiSelector<T> extends StatefulWidget {
  final String title;
  final Decoration? btnDecoration, popupDecoration;
  final List<MultiSelectorItem<T>> items;
  final SelectorViewType? type;
  final void Function(List<T> values) onChanged;
  final String? Function(List<T>? values)? validator;
  final String? error;
  final List<T>? initSelection;

  final String? confirmText;
  final TextStyle? confirmStyle;
  final TextStyle? titleStyle;
  final InputDecoration? textFieldDecoration;

  const _KMultiSelector({
    Key? key,
    required this.title,
    required this.items,
    required this.onChanged,
    this.btnDecoration,
    this.validator,
    this.type = SelectorViewType.sheet,
    this.error,
    this.confirmStyle,
    this.initSelection,
    this.confirmText,
    this.titleStyle,
    this.textFieldDecoration,
    this.popupDecoration,
  }) : super(key: key);

  @override
  State<_KMultiSelector<T>> createState() => _KMultiSelectorState<T>();
}

class _KMultiSelectorState<T> extends State<_KMultiSelector<T>> {
  late List<MultiSelectorItem<T>> _items;
  List<MultiSelectorItem<T>> _selectedItems = [];
  List<T> selectedValues = [];

  @override
  void initState() {
    _items = widget.items;
    selectedValues = widget.initSelection ?? [];
    _selectedItems = widget.items.where((element) => selectedValues.contains(element.value)).toList();
    super.initState();
  }

  void _onItemSelect(MultiSelectorItem<T> item) {
    if (selectedValues.contains(item.value)) {
      _selectedItems.removeAt(selectedValues.indexOf(item.value));
      selectedValues.remove(item.value);
    } else {
      _selectedItems.add(item);
      selectedValues.add(item.value);
    }
    setState(() {});
  }

  void _removerItem(MultiSelectorItem<T> e) {
    _selectedItems.remove(e);
    selectedValues.remove(e.value);
    setState(() {});
  }

  onDeleted(MultiSelectorItem<T> e, FormFieldState<List<T>> formState) {
    _removerItem(e);
    widget.onChanged(selectedValues);
    formState
      ..didChange(selectedValues)
      ..validate();
  }

  void clear(Function(void Function()) setSt) {
    selectedValues.clear();
    _selectedItems.clear();
    setSt(() {});
  }

  void selectAll(Function(void Function()) setSt) {
    selectedValues = widget.items.map((e) => e.value).toList();
    _selectedItems = widget.items.map((e) => e).toList();
    setSt(() {});
  }

  Widget _buildListView(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final mh = widget.items.length > (height * .6 / 48)
        ? height * .8
        : ((widget.items.length * 48.0) + 110) < height
            ? ((widget.items.length * 48.0) + 110)
            : height * .8;
    return Container(
      decoration: widget.popupDecoration ?? _VM.of(context).elevatedBox,
      constraints: BoxConstraints(maxHeight: mh),
      width: width,
      child: StatefulBuilder(
        builder: (context, setSt) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _TitleWidget(title: widget.title, style: widget.titleStyle),
              if (widget.items.length > 4)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (p0) {
                      _items = widget.items
                          .where((element) => element.searchValue.toString().toLowerCase().contains(p0.toLowerCase().replaceAll(' ', '')))
                          .toList();
                      setSt.call(() {});
                    },
                    decoration: widget.textFieldDecoration ?? _VM.of(context).textFieldDecoration,
                  ),
                ),
              const Divider(thickness: 1, height: 1),
              Flexible(
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return CheckboxListTile(
                      value: selectedValues.contains(_items[index].value),
                      checkColor: Colors.white,
                      visualDensity: VisualDensity.compact,
                      activeColor: Theme.of(context).colorScheme.primary,
                      title: _items[index].child,
                      secondary: _items[index].icon,
                      onChanged: (value) {
                        _onItemSelect(_items[index]);
                        widget.onChanged(selectedValues);
                        setSt.call(() {});
                      },
                    );
                  },
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => clear(setSt),
                    child: const Icon(Icons.clear_all_rounded, color: Colors.red),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Icon(Icons.done_all_rounded, color: Colors.green),
                  ),
                  TextButton(
                    onPressed: () => selectAll(setSt),
                    child: const Icon(Icons.select_all_rounded),
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FormField<List<T>>(
      validator: widget.validator,
      builder: (formState) {
        return InkWell(
          onTap: () async {
            if (widget.type == SelectorViewType.sheet) {
              await _VM.of(context).showMultiSelectSheet(_buildListView);
            } else {
              await _VM.of(context).showMultiSelectDialog(_buildListView);
            }
            _items = widget.items;

            formState
              ..didChange(selectedValues)
              ..validate();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _HintContainer(
                btnDecoration: widget.btnDecoration,
                hasError: formState.hasError,
                titleStyle: widget.titleStyle,
                selectedValues: _selectedItems
                    .map(
                      (e) => Chip(
                        label: e.child,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        avatar: e.icon != null ? SizedBox(height: 18, width: 18, child: e.icon) : null,
                        onDeleted: () => onDeleted(e, formState),
                      ),
                    )
                    .toList(),
                child: Text(widget.title, style: widget.titleStyle ?? _VM.of(context).titleStyle, overflow: TextOverflow.ellipsis),
              ),
              if (formState.hasError || widget.error != null) ...[
                const SizedBox(height: 5),
                _MultiErrorWidget(error: formState.errorText ?? widget.error ?? ''),
              ]
            ],
          ),
        );
      },
    );
  }
}

class _KSingleSelector<T> extends StatefulWidget {
  final String title;
  final Decoration? btnDecoration, popupDecoration;
  final List<MultiSelectorItem<T>> items;
  final Function(T?) onChanged;
  final T? value;
  final SelectorViewType? type;
  final String? Function(T? values)? validator;
  final String? error;

  final TextStyle? titleStyle;
  final InputDecoration? textFieldDecoration;

  const _KSingleSelector({
    Key? key,
    required this.title,
    required this.items,
    required this.onChanged,
    this.btnDecoration,
    this.validator,
    this.value,
    this.error,
    this.titleStyle,
    this.textFieldDecoration,
    this.type = SelectorViewType.sheet,
    this.popupDecoration,
  }) : super(key: key);

  @override
  State<_KSingleSelector<T>> createState() => _KSingleSelectorState<T>();
}

class _KSingleSelectorState<T> extends State<_KSingleSelector<T>> {
  MultiSelectorItem<T>? _selectedItem;
  late List<MultiSelectorItem<T>> _items;
  T? _selectedValue;

  @override
  void initState() {
    _items = widget.items;
    _selectedValue = widget.value;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant _KSingleSelector<T> oldWidget) {
    _items = widget.items;
    super.didUpdateWidget(oldWidget);
  }

  void _onItemSelected(int index) {
    _selectedItem = _items[index];
    _selectedValue = _items[index].value;
    Navigator.pop(context);
  }

  Widget _buildListView(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final mh = widget.items.length > (height * .6 / 48)
        ? height * .8
        : ((widget.items.length * 48.0) + 110) < height
            ? ((widget.items.length * 48.0) + 110)
            : height * .8;
    return Container(
      decoration: widget.popupDecoration ?? _VM.of(context).elevatedBox,
      constraints: BoxConstraints(maxHeight: mh),
      width: width,
      child: StatefulBuilder(builder: (context, setSt) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            _TitleWidget(title: widget.title, style: widget.titleStyle),
            if (widget.items.length > 4)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: widget.textFieldDecoration ?? _VM.of(context).textFieldDecoration,
                  onChanged: (p0) {
                    _items = widget.items
                        .where((element) => element.searchValue.toString().toLowerCase().contains(p0.toLowerCase().replaceAll(' ', '')))
                        .toList();
                    setSt.call(() {});
                  },
                ),
              ),
            const Divider(thickness: 1, height: 1),
            Flexible(
              fit: FlexFit.tight,
              child: ListView.builder(
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  return RawMaterialButton(
                    onPressed: () {
                      _onItemSelected(index);
                      widget.onChanged(_selectedValue);
                    },
                    child: ListTile(
                      visualDensity: VisualDensity.compact,
                      leading: _items[index].icon,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                      title: _items[index].child,
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FormField<T?>(
      validator: widget.validator,
      builder: (formState) {
        return InkWell(
          onTap: () async {
            if (_items.isNotEmpty) {
              if (widget.type == SelectorViewType.sheet) {
                await _VM.of(context).showMultiSelectSheet(_buildListView);
              } else {
                await _VM.of(context).showMultiSelectDialog(_buildListView);
              }
              formState
                ..didChange(_selectedValue)
                ..validate();
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _HintContainer(
                btnDecoration: widget.btnDecoration,
                hasError: formState.hasError,
                titleStyle: widget.titleStyle,
                child: Row(
                  children: [
                    if (_selectedItem != null) ...[
                      if (_selectedItem?.icon != null) ...[
                        SizedBox(width: 24, height: 24, child: _selectedItem!.icon!),
                        const SizedBox(width: 10),
                      ],
                      Expanded(child: _selectedItem!.child),
                    ] else
                      Text(widget.title, style: widget.titleStyle ?? _VM.of(context).titleStyle, overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
              if (formState.hasError || (widget.error != null && widget.error!.isNotEmpty)) ...[
                const SizedBox(height: 5),
                _MultiErrorWidget(error: formState.errorText ?? widget.error ?? ''),
              ],
            ],
          ),
        );
      },
    );
  }
}
