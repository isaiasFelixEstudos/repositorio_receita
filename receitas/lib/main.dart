import 'package:flutter/material.dart';
/* -|---------------------------------------|- */
import 'package:receitas/receitas.dart';
/* -|---------------------------------------|- */
import 'package:receitas/culianarias/italiana.dart';
import 'package:receitas/culianarias/brasileira.dart';
/* -|---------------------------------------|- */
import 'package:receitas/receitas/r-italiana/ravioli.dart';
import 'package:receitas/receitas/r-italiana/risotto.dart';
import 'package:receitas/receitas/r-brasileira/feijoada.dart';
import 'package:receitas/receitas/r-brasileira/frango_com_quiabo.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/receitas',
    routes: {
      '/receitas': (_) => Receita(),
      /* -|---------------------------------------|- */
      '/receita/italiana': (_) => Italiana(),
      '/receita/brasileira': (_) => Brasileira(),
      /* -|---------------------------------------|- */
      '/receita/italiana/ravioli': (_) => Ravioli(),
      '/receita/italiana/risotto': (_) => Risotto(),
      /* -|---------------------------------------|- */
      '/receita/brasileira/feijoada': (_) => Feijoada(),
      '/receita/brasileira/frangocomquiabo': (_) => FrangoComQuiabo(),
    },
  ));
}
