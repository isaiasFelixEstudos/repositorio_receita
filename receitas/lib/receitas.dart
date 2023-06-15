import 'package:flutter/material.dart';

class Receita extends StatelessWidget {
  const Receita({Key? key}) : super(key: key);

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
        title: Text('App de receitas'),
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
                          Navigator.of(context).pushNamed('/receita/italiana');
                        },
                        child: Column(
                          children: [
                            Image.network(
                              'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALkAAAB7CAMAAAAfU9HRAAAAFVBMVEX///8AkkbOKzcAjTp1tYrdfoPMGShCny0MAAAAeUlEQVR4nO3OSQEAIAADoHn2j2yIPYUEZBTWTuPcWYi5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ufmX8wfrgV8jP5GHWwAAAABJRU5ErkJggg==',
                              height: altucont - 20,
                              width: largcont,
                            ),
                            Text('Italiana')
                          ],
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    width: (largcont),
                    height: (altucont),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed('/receita/brasileira');
                        },
                        child: Column(
                          children: [
                            Image.network(
                              'data:image/png;base64,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',
                              height: altucont - 20,
                              width: largcont,
                            ),
                            Text('Brasileira')
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
