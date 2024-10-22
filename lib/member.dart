import 'package:flutter/material.dart';
import '_AnimatedCornPageState.dart';

class MemberPage extends StatefulWidget {
  MemberPage({super.key, required this.name});

  final String name;

  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  int growthLevel = 1; // 상태 관리 변수

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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://cdn.pixabay.com/photo/2021/09/07/14/35/corn-field-6604088_1280.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50.0), // 아래 패딩 추가
          child:Column(
          mainAxisAlignment: MainAxisAlignment.end, // 아래에서부터 채우기
          children: [
            GestureDetector(
            onTap: () {
            Navigator.of(context).push(
            MaterialPageRoute(
            builder: (context) => AnimatedCornPage(), // 애니메이션 페이지로 이동
            ),
            );
            },
            child: Image.asset(
              "${memberImg[widget.name]}",
              width: 200, // 이미지 크기 설정 (적절히 조절)
              height: 200,
            ),
            ),
            SizedBox(height: 20),

            // Image.asset(
            //   "${memberImg[widget.name]}",
            //   width: growthLevel == 1 ? MediaQuery.of(context).size.width * 0.1 : growthLevel == 2 ? MediaQuery.of(context).size.width * 0.2 : MediaQuery.of(context).size.width * 0.3,
            //   height: growthLevel == 1 ? MediaQuery.of(context).size.height * 0.1 : growthLevel == 2 ? MediaQuery.of(context).size.height * 0.2 : MediaQuery.of(context).size.height * 0.3,
            //   fit: BoxFit.cover,
            // ),
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
                setState(() { // 상태 업데이트
                  if (growthLevel == 1) {
                    growthLevel = 2;
                  } else if (growthLevel == 2) {
                    growthLevel = 3;
                  }
                  print(growthLevel); // Debugging print
                });
              },
              child: Text(
                growthLevel == 3 ? "${widget.name}옥수수를 수확할 때가 되었어요!" : "${widget.name}옥수수를 키워주세요!",
                style: TextStyle(fontSize: 20, color: Colors.yellow),
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}
