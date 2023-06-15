/* www.panelinha.com.br/receita/ravioli-de-ricota-e-molho-de-tomate */
import 'package:flutter/material.dart';
import 'package:receitas/launcher_intends.dart';

class Ravioli extends StatelessWidget {
  const Ravioli({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri(
        scheme: 'https',
        host: 'www.panelinha.com.br',
        path: '/receita/ravioli-de-ricota-e-molho-de-tomate');

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
          title: Text('Receita Ravioli'),
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
              'https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcQrlAWOf8Qhiro6UlacQ66bN8XHJnUWFv3p37LdNMQbxxe_q4x02TSHWM6MtohPMrkx',
              width: 200,
              height: altucont - 30,
            ),
            Text('RAVIÓLI DE RICOTA'),
            Container(
              width: largcont / 2,
              height: altucont - 100,
              child: Text(
                'Pense num ravióli leve. A massa é quase transparente, elegante. O recheio é todo delicado, para preservar o sabor da ricota. O molho de tomate arremata esse preparo que tem aquela simplicidade elegante tão especial. Um clássico.',
              ),
            ),
            Container(
              width: largcont,
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
              height: altura - 200,
              child: Center(
                  child: Column(
                children: [
                  Text('PARA A MASSA BÁSICA'),
                  Row(
                    children: [
                      Text('INGREDIENTES'),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('280 g de farinha de trigo')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('120 g de sêmola de grano duro')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('4 ovos')),
                    ],
                  ),
                  Text('MODO DE PREPARO'),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.one_k),
                      Expanded(
                          child: Text(
                              'Numa tigela grande, misture as farinhas e reserve uma porção (cerca de ⅓ de xícara) – a quantidade total de farinha pode variar de acordo com o tamanho dos ovos.')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.two_k),
                      Expanded(
                          child: Text(
                              'Numa tigela pequena, quebre um ovo de cada vez e transfira para outra tigela. Bata os ovos com um garfo apenas para misturar as claras com as gemas.')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.three_k),
                      Expanded(
                          child: Text(
                              'Abra um buraco no centro da farinha, como se fosse um “vulcão”. Adicione os ovos batidos no centro e comece misturando com um garfo, do centro para as bordas, adicionando a farinha aos poucos. Amasse com as mãos até a farinha incorporar os ovos. Vá adicionando a farinha reservada caso necessário. Transfira a massa para a bancada e sove até que fique bem lisa.')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.four_k),
                      Expanded(
                          child: Text(
                              'Embale a massa com filme e deixe descansar por 20 minutos. Enquanto isso, prepare o recheio. ')),
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
