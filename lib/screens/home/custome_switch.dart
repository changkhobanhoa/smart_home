import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const CustomSwitch({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation? _circleAnimation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 10));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.bottomCenter : Alignment.topCenter,
            end: widget.value ? Alignment.topCenter : Alignment.bottomCenter)
        .animate(
            CurvedAnimation(parent: _animationController!, curve: Curves.ease));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController!,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController!.isCompleted) {
              _animationController!.reverse();
            } else {
              _animationController!.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
            debugPrint(_circleAnimation!.value.toString());
          },
          child: Container(
            width: 60.0,
            height: 90.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: _circleAnimation!.value == Alignment.bottomCenter
                  ? Colors.blue
                  : Colors.grey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  widget.value ? Container() : Expanded(child: Text("Off",style: TextStyle(color: Colors.white,fontSize: 18))),
                  Align(
                    alignment: widget.value
                        ? ((Directionality.of(context) == TextDirection.ltr)
                            ? Alignment.bottomCenter
                            : Alignment.topCenter)
                        : ((Directionality.of(context) == TextDirection.ltr)
                            ? Alignment.topCenter
                            : Alignment.bottomCenter),
                    child: Container(
                      width: 60.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle,
                          color: Colors.white),
                    ),
                  ),
                  widget.value
                      ? Expanded(
                          child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Text("On",style: TextStyle(color: Colors.white,fontSize: 18),)))
                      : Container()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
