part of 'multi_select_view.dart';

abstract class SelectorViewType {
  const SelectorViewType();
  static const SelectorViewType dialog = _KSelectorViewDialog();
  static const SelectorViewType sheet = _KSelectorViewSheet();
}

class _KSelectorViewDialog extends SelectorViewType {
  const _KSelectorViewDialog();
}

class _KSelectorViewSheet extends SelectorViewType {
  const _KSelectorViewSheet();
}

class MultiSelectorItem<T> {
  final T value;
  final String? searchValue;
  final Widget child;
  final Widget? icon;

  MultiSelectorItem({required this.value, this.searchValue = '', required this.child, this.icon});

  @override
  bool operator ==(covariant MultiSelectorItem<T> other) {
    if (identical(this, other)) return true;

    return other.value == value && other.searchValue == searchValue && other.child == child && other.icon == icon;
  }

  @override
  int get hashCode {
    return value.hashCode ^ searchValue.hashCode ^ child.hashCode ^ icon.hashCode;
  }
}

class _VM {
  static BuildContext? _context;
  static _VM? _instance;
  _VM._internal() {
    _instance = this;
  }

  static _VM of(BuildContext context) {
    _context = context;
    return _instance ?? _VM._internal();
  }

  static const double radius = 8.0;

  TextStyle get titleStyle => TextStyle(color: Theme.of(_context!).brightness == Brightness.light ? Colors.black : Colors.grey);

  TextStyle get confirmStyle => TextStyle(color: Theme.of(_context!).brightness == Brightness.light ? Colors.black : Colors.white);

  BoxDecoration get outlineBorder {
    return BoxDecoration(color: KColors.of(_context!).textField, borderRadius: KHelper.btnBorderRad);
  }

  BoxDecoration get outlineErrorBorder {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(
        color: Theme.of(_context!).colorScheme.error,
      ),
    );
  }

  BoxDecoration get elevatedBox {
    return BoxDecoration(color: KColors.of(_context!).textField, borderRadius: KHelper.btnBorderRad);
  }

  InputDecoration get textFieldDecoration =>
      const InputDecoration(contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 5), isDense: false, suffixIcon: Icon(Icons.search));

  Future<void> showMultiSelectDialog(Widget Function(BuildContext context) widget) async {
    await showDialog(
      context: _context!,
      builder: (context) => Material(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(15), child: widget(context)),
          ],
        ),
      ),
    );
  }

  Future<void> showMultiSelectSheet(Widget Function(BuildContext context) widget) async {
    await showModalBottomSheet(context: _context!, isScrollControlled: true, builder: widget);
  }
}

class _MultiErrorWidget extends StatelessWidget {
  const _MultiErrorWidget({Key? key, required this.error}) : super(key: key);

  final String error;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 12),
        Expanded(
          child: Text(error, style: const TextStyle(color: Colors.red), overflow: TextOverflow.ellipsis, maxLines: 1),
        ),
      ],
    );
  }
}

class _HintContainer extends StatelessWidget {
  const _HintContainer({
    Key? key,
    this.child,
    this.title,
    this.titleStyle,
    required this.btnDecoration,
    required this.hasError,
    // ignore: unused_element
    this.selectedValues,
  })  : assert(child != null || title != null),
        super(key: key);

  final TextStyle? titleStyle;
  final Widget? child;
  final List<Widget>? selectedValues;
  final String? title;
  final Decoration? btnDecoration;
  final bool hasError;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      decoration: (hasError ? _VM.of(context).outlineErrorBorder : (btnDecoration ?? _VM.of(context).outlineBorder)),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      constraints: const BoxConstraints(minHeight: 48),
      width: width,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: child ?? Text(title ?? '', style: titleStyle ?? _VM.of(context).titleStyle, overflow: TextOverflow.ellipsis),
              ),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
          if ((selectedValues ?? []).isNotEmpty) ...[
            const Divider(height: 2, thickness: 1),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 5,
                runSpacing: 5,
                children: selectedValues!,
              ),
            )
          ]
        ],
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({Key? key, required this.title, this.style}) : super(key: key);

  final String title;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(child: Text(title, style: style ?? _VM.of(context).titleStyle, overflow: TextOverflow.ellipsis)),
          GestureDetector(child: const Icon(Icons.close, color: Colors.red), onTap: () => Navigator.of(context).pop())
        ],
      ),
    );
  }
}
