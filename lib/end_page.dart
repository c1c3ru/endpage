import 'package:flutter/material.dart';

class EndPage extends StatelessWidget {
  const EndPage({Key? key}) : super(key: key);

  exitButton(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return GestureDetector(
      onTap: () => {},
      child: Row(
        children: [
          SizedBox(
            width: mediaQuery.size.width * 0.80,
          ),
          SizedBox(
            height: mediaQuery.size.height * 0.08,
            width: mediaQuery.size.width * 0.16,
            child: Image.asset(
              'assets/images/button-close.png',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }

  chest(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: mediaQuery.size.height * 0.20,
        width: mediaQuery.size.width * 0.45,
        child: Image.asset(
          'assets/images/grana-logo.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  openChest(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SizedBox(
      height: mediaQuery.size.height * 0.20,
      width: mediaQuery.size.width * 0.40,
      child: Image.asset(
        'assets/images/open-chest-icon.png',
        fit: BoxFit.fill,
      ),
    );
  }

  coinLeft(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Positioned(
      left: 0,
      child: SizedBox(
        height: mediaQuery.size.height * 0.15,
        width: mediaQuery.size.width * 0.30,
        child: Image.asset(
          'assets/images/decorative-coin3.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  coinRight(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Positioned(
      right: 0,
      child: SizedBox(
        height: mediaQuery.size.height * 0.15,
        width: mediaQuery.size.width * 0.30,
        child: Image.asset(
          'assets/images/decorative-coin1.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }

   doubleCoin(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return SizedBox(
      height: mediaQuery.size.height * 0.40,
      width: mediaQuery.size.width * 0.80,
      child: Image.asset(
        'assets/images/decorative-coins.png',
        fit: BoxFit.fill,
      ),
    );
  }

   whiteBoxBackground(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Stack(
      children: [
        SizedBox(
          height: mediaQuery.size.height * 0.50,
          width: mediaQuery.size.width * 0.80,
          child: Image.asset(
            'assets/images/white-box-background.png',
            fit: BoxFit.fill,
          ),
        ),
        coinLeft(context),
        coinRight(context),
        Positioned(
          bottom: -100,
          child: doubleCoin(context),
        ),
        Positioned(
          left: 20,
          top: mediaQuery.size.height * 0.10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'parabens você finalisou o grana!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 60),
              Text(
                'Número de acertos: ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ), Text(
                'Número de erros: ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ), Text(
                'Valor acumulado: ',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  buildBackground(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background-award.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          buildBackground(context),
          Column(
            children: [
              SizedBox(
                height: mediaQuery.size.height * 0.07,
              ),
              chest(context),
              whiteBoxBackground(context),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: mediaQuery.size.height * 0.02,
              ),
              exitButton(context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: mediaQuery.size.height * 0.80,
                  ),
                  openChest(context),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
