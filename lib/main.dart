// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: '훈연옥수수의 홈페이지'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       backgroundColor: Color(0xFFFefae7), // html 색상 hex 색상코드 16진수의 값을 Dart에서 지원하는 Color 객체 형식으로 변환
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary, // 상단바 색상과 동일한 배경색 설정
//         title: Text(
//           widget.title,
//           style: const TextStyle(
//             fontFamily: "PaperlogySemiBold", // 원하는 글씨체 추가
//             fontSize: 24, // 글씨 크기 조절 (선택 사항)
//             color: Colors.black45
//           ),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(height: 15),
//             Container(
//               alignment: Alignment.centerLeft, // 왼쪽 정렬
//               padding: const EdgeInsets.symmetric(horizontal: 16.0), // 좌우 여백 추가
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: const [
//                   Text(
//                     '훈연옥수수를',
//                     style: TextStyle(
//                       color: Colors.amber,
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: "PaperlogyExtraBold"
//                     ),
//                   ),
//                   Text(
//                     '소개합니다',
//                     style: TextStyle(
//                       color: Colors.amber,
//                       fontSize: 40,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: "PaperlogyExtraBold"
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 15),
//             Image.network("https://img.freepik.com/premium-photo/cooking-delicious-fresh-corn-cobs-grilling-grate-oven-with-burning-firewood-closeup_495423-37942.jpg?w=996", width: 430, height: 300),
//             SizedBox(height: 15),
//             const Text(
//               '팀원 소개',
//               style: TextStyle(
//                 color: Colors.amber,
//                 fontSize: 30,
//                 fontFamily: "PaperlogySemiBold"
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center, // Row의 자식들을 가로 방향에서 가운데 정렬
//               children: [
//                 InkWell( // InkWell은 Flutter에서 터치 효과와 함께 클릭 이벤트를 처리할 수 있는 위젯
//                   onTap: () {
//                     print("수민옥수수를 클릭했습니다.");
//                   },
//                   child: Image.asset("images/수민옥수수-removebg.png", width: 71, height: 120),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     print("수연옥수수를 클릭했습니다.");
//                   },
//                   child: Image.asset("images/수연옥수수-removebg.png", width: 71, height: 120),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     print("언지옥수수를 클릭했습니다.");
//                   },
//                   child: Image.asset("images/언지옥수수-removebg.png", width: 71, height: 120),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     print("은수옥수수를 클릭했습니다.");
//                   },
//                   child: Image.asset("images/은수옥수수-removebg.png", width: 71, height: 120),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     print("지훈옥수수를 클릭했습니다");
//                   },
//                   child: Image.asset("images/지훈옥수수-removebg.png", width: 71, height: 120),
//                 ),
//                 InkWell(
//                   onTap: () {
//                     print("현아옥수수를 클릭했습니다");
//                   },
//                   child: Image.asset("images/현아옥수수-removebg.png", width: 71, height: 120),
//                 ),
//               ],
//             ),
//             SizedBox(height: 15),
//             Stack(
//               children: [
//                 Image.asset("images/fire-removebg.png"),
//                 Container(
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 0), // 좌, 상, 우, 하 순서로 여백 지정
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         '훈연옥수수를 뜨겁게!',
//                         style: TextStyle(
//                             color: Colors.red,
//                             fontSize: 30,
//                             fontFamily: "PaperlogySemiBold"
//                       )),
//                       Text(
//                         '옥수수 fighting!!!!',
//                         style: TextStyle(
//                             color: Colors.red,
//                             fontSize: 30,
//                             fontFamily: "PaperlogySemiBold"
//                       )),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.fromLTRB(16.0, 180.0, 16.0, 0), // 좌, 상, 우, 하 순서로 여백 지정
//               child: Row(
//                 children: [
//                   Text(
//                     '방문자 수 : ',
//                     style: TextStyle(
//                         color: Colors.black45,
//                         fontSize: 30,
//                         fontFamily: "PaperlogySemiBold"
//                     ),
//                   ),
//                   Text(
//                     '$_counter',
//                     style: TextStyle(
//                         color: Colors.black45,
//                         fontSize: 30,
//                         fontFamily: "PaperlogySemiBold"
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

/*********** 스크롤 되는 코드 *************/

import 'package:flutter/material.dart';
import 'member.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '훈연옥수수의 홈페이지'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // 게이지 바의 단계는 0에서 6까지 설정
  double _getProgress() {
    return (_counter >= 6) ? 1.0 : _counter / 6;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFefae7),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: const TextStyle(
            fontFamily: "PaperlogySemiBold",
            fontSize: 24,
            color: Colors.black45,
          ),
        ),
      ),
      body: SingleChildScrollView( // 스크롤 가능하게 설정
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 15),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '훈연옥수수를',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PaperlogyExtraBold",
                      ),
                    ),
                    Text(
                      '소개합니다',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PaperlogyExtraBold",
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '훈연옥수수를 뜨겁게!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: "PaperlogySemiBold",
                      ),
                    ),
                    Text(
                      '옥수수 fighting!!!!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontFamily: "PaperlogySemiBold",
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 30),
              Image.network(
                "https://img.freepik.com/premium-photo/cooking-delicious-fresh-corn-cobs-grilling-grate-oven-with-burning-firewood-closeup_495423-37942.jpg?w=996",
                width: 430,
                height: 300,
                fit: BoxFit.cover, // 이미지가 잘리지 않도록
              ),
              SizedBox(height: 25),
              const Text(
                '팀원 소개',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                  fontFamily: "PaperlogySemiBold",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      print("수민옥수수를 클릭했습니다.");
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => MemberPage(name: "수민"))
                      );
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text("수민옥수수를 클릭했습니다."),
                      //       duration: Duration(seconds: 2), // 스낵바가 표시되는 시간
                      //     )
                      // );
                    },
                    child: Image.asset("images/수민옥수수-removebg.png", width:
                    MediaQuery.of(context).size.width / 6, height: 120),
                  ),
                  InkWell( // InkWell은 자식 위젯에 터치 이벤트 등이 발생하였을 때 어떻게 처리할 지(위젯 변화, 페이지 전환 등)를 설정하는 위젯
                    onTap: () {
                      print("수연옥수수를 클릭했습니다.");
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => MemberPage(name: "수연"))
                      );
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text("수연옥수수를 클릭했습니다."),
                      //       duration: Duration(seconds: 2), // 스낵바가 표시되는 시간
                      //     )
                      // );
                    },
                    child: Image.asset("images/수연옥수수-removebg.png", width: MediaQuery.of(context).size.width / 6, height: 120),
                  ),
                  InkWell(
                    onTap: () {
                      print("언지옥수수를 클릭했습니다.");
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => MemberPage(name: "언지"))
                      );
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text("언지옥수수를 클릭했습니다."),
                      //       duration: Duration(seconds: 2), // 스낵바가 표시되는 시간
                      //     )
                      // );
                    },
                    child: Image.asset("images/언지옥수수-removebg.png", width: MediaQuery.of(context).size.width / 6, height: 120),
                  ),
                  InkWell(
                    onTap: () {
                      print("은수옥수수를 클릭했습니다.");
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => MemberPage(name: "은수"))
                      );
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text("은수옥수수를 클릭했습니다."),
                      //       duration: Duration(seconds: 2), // 스낵바가 표시되는 시간
                      //     )
                      // );
                    },
                    child: Image.asset("images/은수옥수수-removebg.png", width: MediaQuery.of(context).size.width / 6, height: 120),
                  ),
                  InkWell(
                    onTap: () {
                      print("지훈옥수수를 클릭했습니다");
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => MemberPage(name: "지훈"))
                      );
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text("지훈옥수수를 클릭했습니다."),
                      //       duration: Duration(seconds: 2), // 스낵바가 표시되는 시간
                      //     )
                      // );
                    },
                    child: Image.asset("images/지훈옥수수-removebg.png", width: MediaQuery.of(context).size.width / 6, height: 120),
                  ),
                  InkWell(
                    onTap: () {
                      print("현아옥수수를 클릭했습니다");
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => MemberPage(name: "현아"))
                      );
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(
                      //       content: Text("현아옥수수를 클릭했습니다."),
                      //       duration: Duration(seconds: 2), // 스낵바가 표시되는 시간
                      //     )
                      // );
                    },
                    child: Image.asset("images/현아옥수수-removebg.png", width: MediaQuery.of(context).size.width / 6, height: 120),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  //Image.asset("images/fire-removebg.png"),
                  //Image.network('https://cdn.pixabay.com/animation/2024/02/25/18/29/18-29-54-480_512.gif'),
                  Image.network('https://cdn.pixabay.com/animation/2024/05/07/23/55/23-55-47-279_512.gif'),
                ],
              ),

              Column(
                children: [
                  // count가 6 미만일 때 표시되는 부분
                  if (_counter < 6) ...[
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Image.asset(
                        "images/popcorn.png",
                        width: 500,
                        height: 400,
                        fit: BoxFit.cover, // 이미지가 잘리지 않도록
                      ),
                    ),
                    Text(
                      '----- 팝콘이 튀겨지고 있습니다 -----',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 25,
                        fontFamily: "PaperlogySemiBold",
                      ),
                    ),
                    // 그라데이션 게이지 바
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white, // 게이지 바의 배경색을 흰색으로 설정
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: [
                              // 그라데이션 배경을 적용한 위젯
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.green,
                                      Colors.yellow,
                                      Colors.orange,
                                      Colors.red,
                                    ],
                                    stops: [0.0, 0.3, 0.5, 0.7], // 그라데이션 위치 조정
                                  ),
                                ),
                                width: MediaQuery.of(context).size.width * _getProgress(), // 프로그레스에 따라 너비 설정
                              ),
                              // 실제 게이지 바
                              LinearProgressIndicator(
                                value: _getProgress(), // 0.0 ~ 1.0 범위의 값
                                backgroundColor: Colors.transparent, // 배경은 투명하게 설정
                                valueColor: AlwaysStoppedAnimation<Color>(Colors.transparent), // 실제 진행 색상은 투명
                                minHeight: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ] else ...[
                    SizedBox(height: 15),
                    Stack(
                      alignment: Alignment.center, // 중앙 정렬
                      children: [
                        // GIF 이미지
                        Image.network(
                          'https://media0.giphy.com/media/2wVDGnufVLii5bL75L/giphy.webp?cid=ecf05e4778cikijwxvw5t9srrqn0exb99jszyn670efl1sjp&ep=v1_gifs_search&rid=giphy.webp&ct=g',
                          fit: BoxFit.cover, // GIF가 잘리지 않도록
                          width: double.infinity, // 전체 너비를 사용
                          height: 300, // 높이 설정
                        ),
                        // 팝콘 이미지
                        Image.asset(
                          "images/popcorn-removebg.png",
                          width: 200, // 너비 조정
                          height: 200, // 높이 조정
                          fit: BoxFit.cover, // 이미지가 잘리지 않도록
                        ),
                        // 텍스트
                        Positioned(
                          bottom: 20, // 텍스트 위치 조정
                          left: 0,
                          right: 0,
                          child: Text(
                            '2025년에는 꽃피우는 우리 모두 되기를!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontFamily: "PaperlogySemiBold",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),



              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 50.0, 16.0, 0),
                child: Row(
                  children: [
                    const Text(
                      '방문자 수 : ',
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 20,
                        fontFamily: "PaperlogySemiBold",
                      ),
                    ),
                    Text(
                      '$_counter',
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 20,
                        fontFamily: "PaperlogySemiBold",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

