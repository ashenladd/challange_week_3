import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const TabBar(
                tabs: [Tab(text: "About Motion"), Tab(text: "About Me")]),
          ),
          body: const TabBarView(
            children: [
              AboutMotion(),
              AboutMe(),
            ],
          ),
        ),
      ),
    );
  }
}

const TextStyle fontBigBig = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Color(0xFF000000),
);

const TextStyle fontBig = TextStyle(
    fontSize: 14, fontFamily: 'Poppins-SemiBold.ttf', color: Color(0xFF000000));

const TextStyle fontSmall = TextStyle(
    fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xFFEF4637));

class AboutMotion extends StatelessWidget {
  const AboutMotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(children: [
        Center(
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 36, 0, 10),
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    color: const Color.fromRGBO(239, 70, 55, 0.1), width: 10),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 4, color: Color.fromRGBO(239, 70, 55, 0.1))
                ]),
            child: const CircleAvatar(
              backgroundImage: AssetImage('images/motionLab.png'),
            ),
          ),
        ),
        const Center(
          child: Text(
            "Motion Lab",
            style: fontBigBig,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "About:",
                style: fontBigBig,
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(239, 70, 55, 0.1),
                    borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  'Mobile Innovation Laboratory atau disingkat Motion Lab adalah Lab yang berfokus pada mobile app development',
                  textAlign: TextAlign.justify,
                  style: fontBig,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Division:",
                style: fontBigBig,
              ),
              const SizedBox(
                height: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color.fromRGBO(239, 70, 55, 0.3)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.computer,
                              color: Colors.red[300],
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text('Mobile Programming'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color.fromRGBO(239, 70, 55, 0.3)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.analytics_outlined,
                              color: Colors.blue[300],
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text('Business Analyst'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: const Color.fromRGBO(239, 70, 55, 0.3)),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.design_services_outlined,
                              color: Colors.green[300],
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text('UI/UX'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Location:",
                style: fontBigBig,
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    color: Colors.red,
                  ),
                  Text(
                    'TULT-06-24',
                    style: fontBig,
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: ListView(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 48),
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(239, 70, 55, 0.1),
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.white, width: 5),
                          boxShadow: const [
                            BoxShadow(blurRadius: 4, color: Colors.white)
                          ]),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: AssetImage('images/Me.jpg'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Akif Rachmat Hidayah",
                      textAlign: TextAlign.center,
                      style: fontBigBig,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Nama:",
                      style: fontBig,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Akif Rachmat Hidayah",
                      style: fontSmall,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Jurusan:",
                      style: fontBig,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Informatika",
                      style: fontSmall,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Kelas:",
                      style: fontBig,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "IF4507",
                      style: fontSmall,
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      "Angkatan:",
                      style: fontBig,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "2021",
                      style: fontSmall,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 21),
          child: Column(
            children: [
              Column(
                children: [
                  const Text(
                    "About Me:",
                    style: fontBig,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(color: Colors.grey, blurRadius: 4),
                            ],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ReadMoreText(
                              "Pertama kali saya tertarik dengan programming adalah ketika SMK, saya memutuskan untuk memulainya dengan menonton video youtube mengenai python. Masuk kuliah saya mulai tertarik dengan mobile programming dan mulai belajar melalui dicoding. Masuk ke Motion Lab adalah langkah saya selanjutnya untuk belajar lebih dalam mengenai Flutter",
                              style: fontBig,
                              colorClickableText: Colors.red,
                              trimLines: 2,
                              trimMode: TrimMode.Length,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: ' show less',
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              Column(
                children: [
                  const Text(
                    "What I've Learned:",
                    style: fontBig,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.grey, blurRadius: 4),
                              ],
                              borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ReadMoreText(
                              "Dalam beberapa minggu di motion lab, saya belajar banyak mengenai Flutter, seperti widget-widget dasar yaitu Scaffold, row, column, container, dan widget-widget lainnya. Dan yang baru-baru ini juga cara import images, flutter packages, dan terakhir adalah navigation",
                              style: fontBig,
                              colorClickableText: Colors.red,
                              trimLines: 2,
                              trimMode: TrimMode.Length,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: ' show less',
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 21,
              ),
              Column(
                children: [
                  const Text(
                    "My View on Motion Lab:",
                    style: fontBig,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(color: Colors.grey, blurRadius: 4),
                              ],
                              borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: ReadMoreText(
                              "Saya melihat Motion Lab sebagai wadah yang tepat bagi mereka yang ingin belajar mengenai mobile development baik bagi yang sudah memiliki pengalaman maupun baru belajar, karena di Motion Lab kita benar-benar diajari dari awal. Apalagi mentor-mentornya yang baik sehingga jika misalkan ada yang ingin ditanyakan, kita tinggal bertanya",
                              style: fontBig,
                              colorClickableText: Colors.red,
                              trimLines: 2,
                              trimMode: TrimMode.Length,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: ' show less',
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
