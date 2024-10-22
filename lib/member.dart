import 'package:flutter/material.dart';

class MemberPage extends StatelessWidget {
  MemberPage({super.key, required this.name});

  final String name;

  // key: 멤버이름 , value: 멤버옥수수 이미지

  var memberImg = { "수민" : "images/수민옥수수-removebg.png",
                    "수연" : "images/수연옥수수-removebg.png",
                    "언지" : "images/언지옥수수-removebg.png",
                    "은수" : "images/은수옥수수-removebg.png",
                    "지훈" : "images/지훈옥수수-removebg.png",
                    "현아" : "images/현아옥수수-removebg.png",
  };

  var memberDesc = { "수민" : "97년산 옥수수",
                     "수연" : "99년산 옥수수",
                     "언지" : "99년산 옥수수",
                     "은수" : "01년산 옥수수",
                     "지훈" : "98년산 옥수수",
                     "현아" : "98년산 옥수수",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFefae7),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          name+"옥수수",
          style: const TextStyle(
            fontFamily: "PaperlogySemiBold",
            fontSize: 24,
            color: Colors.black45,
          ),
        ),
      ),
      body:Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://cdn.pixabay.com/photo/2021/09/07/14/35/corn-field-6604088_1280.jpg"), // 동일한 배경 이미지 경로
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Image.asset("${memberImg[name]}"),
            Text(
              "${memberDesc[name]}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "PaperlogyExtraBold",
              ),
            ),
          ],
        )

      )
    );
  }
}


