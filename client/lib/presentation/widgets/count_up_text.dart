import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CountupText extends StatefulWidget {
  final int begin;
  final int end;
  final Duration duration;
  final TextStyle? style;

  const CountupText({
    Key? key,
    required this.begin,
    required this.end,
    this.duration = const Duration(milliseconds: 250),
    this.style,
  }) : super(key: key);

  @override
  State<CountupText> createState() => _CountupTextState();
}

class _CountupTextState extends State<CountupText>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  int? _latestBegin;
  int? _latestEnd;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this);
    _latestBegin = widget.begin;
    _latestEnd = widget.end;
  }

  @override
  Widget build(BuildContext context) {
    CurvedAnimation curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _animation = Tween<double>(
            begin: double.parse(widget.begin.toString()),
            end: double.parse(widget.end.toString()))
        .animate(curvedAnimation);

    if (widget.begin != _latestBegin || widget.end != _latestEnd) {
      _controller.reset();
    }

    _latestBegin = widget.begin;
    _latestEnd = widget.end;
    _controller.forward();

    return _CountupAnimatedText(
      key: UniqueKey(),
      animation: _animation,
      style: widget.style,
    );
  }
}

class _CountupAnimatedText extends AnimatedWidget {
  final Animation<double> animation;

  final TextStyle? style;

  const _CountupAnimatedText({
    Key? key,
    required this.animation,
    this.style,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    NumberFormat numFormatter = NumberFormat();
    String formattedAmount = numFormatter.format(animation.value);
    return Text(
      formattedAmount,
      style: style,
    );
  }
}
