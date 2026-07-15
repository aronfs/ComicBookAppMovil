import 'package:flutter/material.dart';

class NumberSpinnerField extends StatefulWidget {
  final String label;
  final int initialValue;
  final int min;
  final int max;
  final ValueChanged<int>? onChanged;

  const NumberSpinnerField({
    super.key,
    required this.label,
    this.initialValue = 1,
    this.min = 1,
    this.max = 999,
    this.onChanged,
  });

  @override
  State<NumberSpinnerField> createState() => _NumberSpinnerFieldState();
}

class _NumberSpinnerFieldState extends State<NumberSpinnerField> {
  late int _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  void _increment() {
    if (_value < widget.max) {
      setState(() => _value++);
      widget.onChanged?.call(_value);
    }
  }

  void _decrement() {
    if (_value > widget.min) {
      setState(() => _value--);
      widget.onChanged?.call(_value);
    }
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: cs.onSurfaceVariant),
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: cs.outlineVariant, width: 1.2),
                  ),
                ),
                child: Text(
                  '$_value',
                  style: TextStyle(fontSize: 14, color: cs.onSurface),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: 24,
                  height: 20,
                  child: InkWell(
                    onTap: _increment,
                    child: Icon(Icons.arrow_drop_up,
                        size: 22, color: cs.onSurfaceVariant),
                  ),
                ),
                SizedBox(
                  width: 24,
                  height: 20,
                  child: InkWell(
                    onTap: _decrement,
                    child: Icon(Icons.arrow_drop_down,
                        size: 22, color: cs.onSurfaceVariant),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
