import 'package:flutter/material.dart';

class Italiana extends StatelessWidget {
  const Italiana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;

    final largcont = (largura) / 1.2;
    final altucont = (altura) / 4;
    print(altura);
    print(largura);
    print(largcont);
    print(altucont);

    return Scaffold(
      appBar: AppBar(
        title: Text('Culianaria Italiana'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              if (value == '/italiana') {
                Navigator.of(context).pushNamed('/receita/italiana');
              } else if (value == '/brasileira') {
                Navigator.of(context).pushNamed('/receita/brasileira');
              } else if (value == '/home') {
                Navigator.popUntil(context, ModalRoute.withName('/receitas'));
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Home'),
                value: '/home',
              ),
              PopupMenuItem(
                child: Text('Italiana'),
                value: '/italiana',
              ),
              PopupMenuItem(
                child: Text('Brasileira'),
                value: '/brasileira',
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Scrollbar(
              isAlwaysShown: true,
              thickness: 10,
              radius: Radius.circular(20),
              scrollbarOrientation: ScrollbarOrientation.left,
              child: Center(
                  child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    width: (largcont),
                    height: (altucont),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/receita/italiana/ravioli');
                        },
                        child: Column(
                          children: [
                            Image.network(
                              'https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQrlAWOf8Qhiro6UlacQ66bN8XHJnUWFv3p37LdNMQbxxe_q4x02TSHWM6MtohPMrkx',
                              height: altucont - 20,
                              width: largcont,
                            ),
                            Text('Ravioli')
                          ],
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    width: (largcont),
                    height: (altucont),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/receita/italiana/risotto');
                        },
                        child: Column(
                          children: [
                            Image.network(
                              'https://hips.hearstapps.com/hmg-prod/images/delish-191112-risotto-rice-0151-landscape-pf-1574723947.jpg?crop=0.668xw:1.00xh;0.151xw,0&resize=1200:*',
                              height: altucont - 20,
                              width: largcont,
                            ),
                            Text('Risotto')
                          ],
                        )),
                  ),
                ],
              )))
        ],
      ),
    );
  }
}
