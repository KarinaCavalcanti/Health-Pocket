import 'package:flutter/material.dart';
import 'package:health_pocket_app/classes/appRoutes.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController =
      PageController(initialPage: 0, keepPage: false);

  int index = 0;

  List<String> titles = [
    'Dicas para a sua saúde física',
    'Dicas para a sua saúde mental',
    'Mais qualidade na sua vida: Aproveite!',
  ];

  List<String> desc = [
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus turpis purus, cursus ut cursus in, rhoncus dapibus elit.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus turpis purus, cursus ut cursus in, rhoncus dapibus elit.',
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus turpis purus, cursus ut cursus in, rhoncus dapibus elit.',
    // 'Utilizando o Health Pocket você poderá ter acesso a dicas de como manter seu corpo saudável',
    // 'Além de dicas para manter sua mente sempre saudável nesse momento tão difícil que estamos passando',
    // 'Aproveite as dicas e não se esqueça: #FiqueEmCasa',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                onPageChanged: (val) {
                  setState(() {
                    index = val;
                  });
                },
                controller: _pageController,
                itemCount: titles.length,
                itemBuilder: (BuildContext context, position) {
                  return Container(
                    padding: EdgeInsets.all(15.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${titles[position]}',
                            style: TextStyle(
                              color: Color(0XFF505759),
                              fontFamily: 'Sansita Swashed',
                              fontWeight: FontWeight.bold,
                              fontSize: 26.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20.0),
                          Image(
                            image: AssetImage(
                              'assets/images/c${position + 1}.jpg',
                            ),
                            width: 250.0,
                            height: 250.0,
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            '${desc[position]}',
                            style: TextStyle(
                              color: Color(0XFF75787B),
                              fontFamily: 'Roboto',
                              fontSize: 15.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: Offset(2.0, 3.0),
              blurRadius: 10.0,
            ),
          ],
          color: Color(0xFF279989),
        ),
        padding: EdgeInsets.only(left: 40.0, right: 40.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            index > 0
                ? FlatButton(
                    onPressed: () => _pageController.previousPage(
                      duration: Duration(milliseconds: 10),
                      curve: Curves.linear,
                    ),
                    child: Text(
                      'ANTERIOR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                : SizedBox(),
            index < 2
                ? FlatButton(
                    onPressed: () => _pageController.nextPage(
                      duration: Duration(milliseconds: 10),
                      curve: Curves.linear,
                    ),
                    child: Text(
                      'PRÓXIMO',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                : FlatButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.PRINCIPAL_PAGE);
                    },
                    child: Text(
                      'COMEÇAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
