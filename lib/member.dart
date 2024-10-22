import 'package:flutter/material.dart';

class MemberPage extends StatefulWidget {
  MemberPage({super.key, required this.name});

  final String name;

  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  int growthLevel = 1; // 상태 관리 변수
  bool _showImages = false; // 이미지 표시 여부

  // 멤버 이미지와 설명
  var memberImg = {
    "수민": "images/수민옥수수-removebg.png",
    "수연": "images/수연옥수수-removebg.png",
    "언지": "images/언지옥수수-removebg.png",
    "은수": "images/은수옥수수-removebg.png",
    "지훈": "images/지훈옥수수-removebg.png",
    "현아": "images/현아옥수수-removebg.png",
  };

  var memberDesc = {
    "수민": "97년산 옥수수",
    "수연": "99년산 옥수수",
    "언지": "99년산 옥수수",
    "은수": "01년산 옥수수",
    "지훈": "98년산 옥수수",
    "현아": "98년산 옥수수",
  };

  var specialMemberImages = {
    "수민": [
      "images/game.png", // 첫 번째 이미지
      "images/gf.png", // 두 번째 이미지
      "images/travel.png", // 세 번째 이미지
    ],
    "수연": [
      "images/sushi.png", // 수연의 첫 번째 특별 이미지
      "images/coffee.png", // 수연의 두 번째 특별 이미지
      "images/poket.png", // 수연의 세 번째 특별 이미지
    ],
    "은수": [
      "images/lg.png", // 은수의 첫 번째 특별 이미지
      "images/music.png", // 은수의 두 번째 특별 이미지
      "images/ramen.png", // 은수의 세 번째 특별 이미지
    ],
    // 나머지 인원에 대한 이미지 추가
    "언지": [
      "images/pizza.png",
      "images/ramen.png",
      "images/bed.png",
    ],
    "지훈": [
      "images/baseball.png",
      "images/poodle.png",
      "images/shrimp.png",
    ],
    "현아": [
      "images/icecream.png",
      "images/chicken.png",
      "images/jjangu.png",
    ],
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFefae7),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.name + "옥수수",
          style: const TextStyle(
            fontFamily: "PaperlogySemiBold",
            fontSize: 24,
            color: Colors.black45,
          ),
        ),
      ),
      body: Stack( // Stack 사용으로 상하위 위치 조절
        children: [
          // 배경 이미지
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2021/09/07/14/35/corn-field-6604088_1280.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 100), // 상단 이미지 표시를 위한 공간
              if (_showImages) ...[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 이미지를 수평으로 배치
                  children: [
                    for (var img in specialMemberImages[widget.name] ?? []) // 기본값으로 빈 리스트 제공
                      Image.asset(
                        img,
                        width: 100,
                        height: 100,
                      ),
                  ],
                ),
              ],
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter, // 하단에 정렬
                  child: Column(
                    mainAxisSize: MainAxisSize.min, // 하단에서만 채우기
                    children: [
                      GestureDetector(
                        onTap: () {
                          // 옥수수 이미지 클릭 시 애니메이션을 추가하려면 여기에 애니메이션 코드 작성
                          // 예: _animateCorn();
                        },
                        child: Image.asset(
                          "${memberImg[widget.name]}",
                          width: growthLevel == 1
                              ? MediaQuery.of(context).size.width * 0.1
                              : growthLevel == 2
                              ? MediaQuery.of(context).size.width * 0.2
                              : MediaQuery.of(context).size.width * 0.3,
                          height: growthLevel == 1
                              ? MediaQuery.of(context).size.height * 0.1
                              : growthLevel == 2
                              ? MediaQuery.of(context).size.height * 0.2
                              : MediaQuery.of(context).size.height * 0.3,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "${memberDesc[widget.name]}",
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "PaperlogyExtraBold",
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                        ),
                        onPressed: () {
                          setState(() {
                            // 버튼 클릭 시 상태 업데이트
                            if (growthLevel < 3) {
                              growthLevel++;
                              if (growthLevel == 3) {
                                _showImages = true; // 성장이 3일 때 이미지 표시
                              }
                            }
                          });
                        },
                        child: Text(
                          growthLevel == 3
                              ? "${widget.name}옥수수를 수확할 때가 되었어요!"
                              : "${widget.name}옥수수를 키워주세요!",
                          style: TextStyle(fontSize: 20, color: Colors.yellow),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
