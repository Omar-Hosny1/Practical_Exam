import 'package:flutter/material.dart';

class AnimationTask extends StatefulWidget {
  const AnimationTask({super.key});

  @override
  State<AnimationTask> createState() => _AnimationTaskState();
}

class _AnimationTaskState extends State<AnimationTask>
    with SingleTickerProviderStateMixin {
  bool _isTallerThan200PX = false;
  bool _isFa = false;
  late final AnimationController _animationController;
  late final Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        lowerBound: 0,
        upperBound: 1,
        // this property is for making sure that the animation excutes every frame
        vsync: this,
        duration: const Duration(
          seconds: 2,
        ));
    _animationController.forward();
    _animation =
        Tween<double>(begin: 50, end: 100).animate(_animationController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isTallerThan200PX = !_isTallerThan200PX;
                    if (_animation.value == 50) {
                      _animationController.forward();
                    } else {
                      _animationController.reverse();
                    }
                  });
                },
                child: Text("Submit"),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _isFa = !_isFa;
                });
              },
              icon: AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                transitionBuilder: (child, animation) => SlideTransition(
                  position:
                      Tween(begin: Offset(0, 1), end: Offset(0, 1)).animate(
                    animation,
                  ),
                ),
                // RotationTransition(
                //   turns: animation,
                //   child: child,
                // ),
                child: Icon(
                  _isFa
                      ? Icons.access_time_filled_sharp
                      : Icons.access_time_filled_sharp,
                  key: ValueKey(_isFa),
                ),
              ),
            ),
            AnimatedBuilder(
              animation: _animationController,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.brown,
              ),
              builder: (context, child) => SlideTransition(
                child: child,
                position: Tween(
                  begin: Offset(0, 0.3),
                  end: Offset(0, 0),
                ).animate(
                  CurvedAnimation(
                      parent: _animationController, curve: Curves.ease),
                ),
              ),
              // Container(
              //   color: Colors.amber,
              //   child: Padding(
              //     padding: EdgeInsets.all(_animationController.value * 100),
              //     child: child,
              //   ),
              // ),
            ),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: _isTallerThan200PX ? 500 : 200,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
