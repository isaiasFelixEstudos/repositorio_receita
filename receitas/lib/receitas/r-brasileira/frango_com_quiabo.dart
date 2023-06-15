/* https://www.panelinha.com.br/receita/Frango-com-quiabo */
import 'package:flutter/material.dart';
import 'package:receitas/launcher_intends.dart';

class FrangoComQuiabo extends StatelessWidget {
  const FrangoComQuiabo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri(
        scheme: 'https',
        host: 'www.panelinha.com.br',
        path: '/receita/Frango-com-quiabo');

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
              'data:image/jpeg;base64,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',
              width: 200,
              height: altucont - 30,
            ),
            Text('FRANGO COM QUIABO'),
            Container(
              width: largcont / 2,
              height: altucont - 100,
              child: Text(
                'A clássica receita com todos aqueles detalhes que fazem a diferença. As coxas e sobrecoxas são braseadas, cozinham com pouco líquido, para que a carne fique úmida e a pele dourada.',
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
                          child: Text('4 coxas de frango com pele e osso')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(
                          child:
                              Text('4 sobrecoxas de frango com pele e osso')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(
                          child:
                              Text('200 g de quiabo (cerca de 20 unidades)')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('1 pimentão amarelo')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('1 tomate italiano maduro')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('1 cebola')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('2 dentes de alho')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('caldo de 2 limões')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('1 colher (chá) de cominho em pó')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('1 colher (chá) de colorau')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('2 ½ xícaras (chá) de água')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('azeite a gosto')),
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
