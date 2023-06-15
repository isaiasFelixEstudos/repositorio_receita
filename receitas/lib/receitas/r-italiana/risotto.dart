/* https://www.panelinha.com.br/receita/risoto-abobora-assada-para-um */
import 'package:flutter/material.dart';
import 'package:receitas/launcher_intends.dart';

class Risotto extends StatelessWidget {
  const Risotto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri(
        scheme: 'https',
        host: 'www.panelinha.com.br',
        path: '/receita/risoto-abobora-assada-para-um');

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
          title: Text('Receita Risotto'),
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
        body: SingleChildScrollView(
          child: Column(children: [
            Image.network(
              'https://hips.hearstapps.com/hmg-prod/images/delish-191112-risotto-rice-0151-landscape-pf-1574723947.jpg?crop=0.668xw:1.00xh;0.151xw,0&resize=1200:*',
              width: 200,
              height: altucont - 30,
            ),
            Text('RISOTO DE ABÓBORA ASSADA PARA UM'),
            Container(
              width: largcont / 2,
              height: altucont - 100,
              child: Text(
                'Risotto para uma pessoa só compensa? Ô se compensa! O truque é substituir o caldo caseiro por um bom refogado e seguir as proporções indicadas nesta receita.',
              ),
            ),
            Container(
              width: largcont,
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
              height: altura - 200,
              child: Center(
                  child: Column(
                children: [
                  Row(
                    children: [
                      Text('INGREDIENTES'),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(
                          child: Text('½ xícara (chá) de arroz para risoto')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(
                          child: Text(
                              '200 g de abóbora japonesa (cerca de 1½ xícara [chá]) cortada em cubos de 2 cm)')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('¼ de cebola')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(
                          child:
                              Text('2 colheres (sopa) de cenoura ralada fino')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(
                          child: Text('1 colher (sopa) de salsão picado fino')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('1 dente de alho')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('1 folha de louro')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('2 ramos de tomilho')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(
                          child: Text('2 colheres (sopa) de vinho branco')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('2 xícaras (chá) de água fervente')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('Azeite')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('1 colher (sopa) de manteiga')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(
                          child: Text(
                              '¼ de xícara (chá) de queijo parmesão ralado')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(
                          child: Text(
                              'sal e pimenta-do-reino moída na hora a gosto')),
                    ],
                  ),
                ],
              )),
            ),
            ElevatedButton(
              onPressed: () {
                lauchInBrowser(url);
              },
              child: Text('Acessar site'),
            )
          ]),
        ));
  }
}
