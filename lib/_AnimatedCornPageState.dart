import 'package:flutter/material.dart';

class AnimatedCornPage extends StatefulWidget {
  @override
  _AnimatedCornPageState createState() => _AnimatedCornPageState();
}

class _AnimatedCornPageState extends State<AnimatedCornPage> with SingleTickerProviderStateMixin {
  bool _isClicked = false;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTap() {
    setState(() {
      _isClicked = !_isClicked;
      if (_isClicked) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("수민옥수수 애니메이션")),
      body: Stack(
        alignment: Alignment.center,
        children: [
          // 첫 번째 이미지 (위로 이동)
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            top: _isClicked ? MediaQuery.of(context).size.height * 0.3 : MediaQuery.of(context).size.height * 0.5,
            left: MediaQuery.of(context).size.width * 0.3,
            child: Image.asset(
              "images/lg-.png",
              width: 100,
              height: 100,
            ),
          ),
          // 두 번째 이미지 (왼쪽으로 이동)
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            top: MediaQuery.of(context).size.height * 0.5,
            left: _isClicked ? MediaQuery.of(context).size.width * 0.2 : MediaQuery.of(context).size.width * 0.4,
            child: Image.asset(
              "images/music.png",
              width: 100,
              height: 100,
            ),
          ),
          // 세 번째 이미지 (오른쪽으로 이동)
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            top: MediaQuery.of(context).size.height * 0.5,
            left: _isClicked ? MediaQuery.of(context).size.width * 0.5 : MediaQuery.of(context).size.width * 0.4,
            child: Image.asset(
              "images/ramen.png",
              width: 100,
              height: 100,
            ),
          ),
          // 중심의 메인 이미지 (클릭 이벤트 발생)
          InkWell(
            onTap: _onTap,
            child: Image.asset(
              "images/수민옥수수-removebg.png",
              width: MediaQuery.of(context).size.width / 6,
              height: 120,
            ),
          ),
        ],
      ),
    );
  }
}
