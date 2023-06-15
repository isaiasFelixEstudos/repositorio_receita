/* https://www.panelinha.com.br/receita/Feijoada */
import 'package:flutter/material.dart';
import 'package:receitas/launcher_intends.dart';

class Feijoada extends StatelessWidget {
  const Feijoada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri(
        scheme: 'https',
        host: 'www.panelinha.com.br',
        path: '/receita/Feijoada');

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
          title: Text('Receita Feijoada'),
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
              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFBgVFRUZGRgZGx0cHBsaGxsaIh4eHRsdIhodIxsdIy0kGyMpJBsaJTcmKS4wNDQ0HSM5PzkyPi0yNDABCwsLEA8QHhISHjUpIykyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMv/AABEIAMIBAwMBIgACEQEDEQH/xAAbAAACAgMBAAAAAAAAAAAAAAAEBQMGAAIHAf/EAEAQAAIBAgQDBQUGBQMDBQEAAAECEQADBBIhMQVBUQYTImFxMoGRobEUI0JSwdEHYnLh8BWC8TOiwkOSstLiU//EABoBAAMBAQEBAAAAAAAAAAAAAAECAwQABQb/xAAsEQACAgICAgIBAwQCAwAAAAAAAQIRAyESMQRBE1FhFCIycYGx0aHBIzNC/9oADAMBAAIRAxEAPwDaz2Bxh9o21/3E/QVPb7H8QT2XUf0uwrq1eRWX40jb+syHL7eC4rakAMy89VYH3GqtxHO9wlhkfmsZflXestL8fwa1dDZ7aksIJgT8aEsbkuy2Lz+MrlFHEsDxPEYZ81t2U8xMqfUbGum9l+1yYoZHhLoGq8m81/aqvx/sw+HzN7drqdxVTv22turKSOakVGMpY3TNuTFi8mPKPf2MO38/aGYE6NNIU4kLi5XMMOc0y4tjjf8AE3tka+Z61V72EfPopjzgfWtD4yVmHFzxz4+0Nrdw9anv4u4y5S2lL8NgrnX4Sac4C81uQVR1bdXUEfHcVilFcj101KPWxeHIH96z7QeUz5GmGK7tmkIiD8qlz9TUIW2OfwH96BOWOUvdI0fFOAdSDWi4lyNAQpMTrrRT31KZC0r0yr9ZmtLdxQMoYhemUfvXJKjpwm3+16IxfYsLYBk8qsPCrFm9bZXbIw0BLRJ6UhVbYIIYyNjH/wCqKw15EIIyMQZ8aN+5pZQT6dCY4ZYqm9EFnh1xrmWyrMyncTHrO1OrvDrduLmPxEsNramSfIxQ2K4pfuDIlxUXpbKoPmAfnSDE8FuElmYnzIJ/7lJFWhx9glja6Qy4z2se4vc4de6sjSBufU0ntEjmfjWLgXGwB9CD8t6iaQYII8iI+tGTvoMFx2zrv8L3LIZO1dCU1R/4YYQphy5/Eau01rxqoo8bypcsjZ67hQSTAGpJqoYriL4xilslbAMFhoX9Oi/Wou0PEGxN77JbJCLrdYc/5PTrTfDYdUUKogAaUkp8nS6K48SxpSl2+vwa4fDhFAUQBUeNxdu0ue44UDqa04rxK3Ytl3PoOZPQVy3j9zEX3z3AQC0KDoB5VOeRR0UpVym6Q+432oN1JtSBJykb9JPShMCi3LZzvqTrH60Fw/Am3rcAiOes+gG9NL5VsvdqqA7RpPrWCeZ8rR5c/I/8nKP9hJicJbS4VDE+Z0+dG4NmK3WzIUUQDmgj061HxjCOyDxavoukxG5kbUuuolq0LRliDLQIHvauT5bff0TyZJZHcmSoC3/TvO3OGBA9zbVrxviN1lULmBgSQelQJjfCqsD4RAA0Gu017grkubdzRWiHH4fdzo01K66JcaYAMZc53DWVbV7IWm179DP8rVlU5RO4/g7NWVgFYzAAkmANSTpXpm49ivTVJ49/ETD2ibdhTffbw6ID/V+L/bNU3iWPx+LXNfud1Z/LORY/p9pvfU3kS62Xx+LOe3pfkvvaTtRgkRrb3A7RGRPGfQxoPea5RfxWfwIhIzErm1IHIQtQnF4ezOUd83VhlQe7c0txXGLj6SFX8qAKPgN/fUZtz7PSwxjhWmxhcLKPEwX+UEA/Aa/GgjiQNqWte860N2l+NlH5CXQxbHHka1OJPWlxu1nfU3xi/qWH99Wd5QAv16LtH4hf1F+xgHFSJdpYt2txdocArMOExA6CiBdtncRSNblSC5QodTb9lmwtmxc3bL76PTgw/wDSvEH1/WqYt0g70VbxrDnRXH2guUvTLTf4biFMQl0egbb50HeTL/1LTpPMAlf/AGvp86GwPaC5bIKsQRVis9trjLFxFcc9B9DINHhB9OgfJNdpMM4F2quWlVE7u6g2X/puP0PzqwYntrbNpgFZL2U5UcRJ8m2NV1F4biyAWGHuRAIGQe8ao3yNLuL4G/g2VDcS8jyVB8Ugfyn2fca584rTtEfjwzntU/8AP/Raux+BK2y7znckknfeiuKdpMPYkPclhuq6n4VSeHcWC6W7jWH5o5zWzPzT/Na94qMthlNgJccj7zNnVx5PrlJ8/jSKdKkHLhbnb9gPHOJtiXF0/wDTJISDsB9DR2Htm5hwHuKERs2rAsfI1TgLlubbyM8HL5dff5VmF4gVcwNBsTyqMsTk7PG8zJKcuL6Wi74nE27KFll8yCM8eET5UDgXS5bNyTo8KN50lvSqt9pNxsksRzimVnNaTKiOwzFtOsRvUpYtU+zJWhraxouXsq3SogmIgAjYedC4rFNcVg4AAP8AhpS2NuIVYplb8xHxFSd4Wlw3kR1rpY/YrCGwSuujqBpruaY8MwSrbkLmaZkmoBw5rYzqAWdZyjWBzqAO4UbwxiknbVJjIbX+MOrFRlUDYSDFZQn+gO2udBPImYrKHLH9hs6t2m7WYfBL42zXCPDbWCx8z+UeZrm/EsfjuJat93YJ0QHKkdWO7/TyqLhXAVg4jGkszaw5M+rE7+lKe0Pahmm1ZIVAIldPcOgr1W3Ls9zHihj32/sNuY/D4HS195eiCx2HoOX1qs8V43dvsTccnyGg+FKXuzURuVygGeYma5WmeoS9S2cM7xA0MwTtpvrsKooGeWU87ysL1uloc/lUl0D8Igf5rR0hOcmTYPAlyZOWADEawQSDHMbfGp1wYZgkDVSZ/WgsNimRgwJkEQfSjMLj2W93gIzFufs66ER01oe9FYuLjvsGxPCnXVASOms+tDLZYTI5aCr/AGMMSPEUYwxKWlgmdhmGgHnI99KrmGFy6UtI9t0EsHI5fy8/dTKX2JKC9MqqPG4ipEuco6a/Wjr+C1AuSOUjX5UI9jKxX4T+3KhJ0Koy+zZrwPKDpEeQr2zigJleXXY/rWr2o3qO4oXnvrpSrfodylH2TLiROoMc6MQ2ztcj+oEUqidq2QmhxQyzSXscNYYGJBkToQdPdWI5HlS1LpBBGhBmRofiKY2uJsx+8Af1AzcvxDU7Rr1pHjReHkv2glL/AF1oqzdOmVpjXKf2OlRhMPcAKXDbc/hubf8AvX9fjUV7C3E3E9CIIPSCNKRxlE1Qywloc8U4sLyjvLSLcH40GWREQV50Nw7jFyyYVsyHdG1U+6lovnY17oalKTbs0Riqr0W+1aw2LWLcW7m+RvZJ/lP4arPFeFvaZvuz5qRqPP8AmHmPlUKPGxg8jVr4Nx9LkWsWocfhc7r/ALhqPWimn2YfK8OM1df7KvgcQuQl8g5CBBp3g8XaRfEzholeY+FTdp+xrJN/DnMp1I019RsD5jQ8451x7sIucEMJgRHx86nlxbv7PBy4XB7LNj7rd2q5lurcGbLk8Q6jTWq2yrGitLHQCdF84o/g3F3CkJ4WiA08uetG2LMr95dyeg399QtxdP8AyTom4JiO4tPiHUgEFLakzqd2g8qr1vGtDZTmQtOsaf3p1xG0bqIVuBzbWMk7+fw5UJwkKUdAFDlfYZRBM9eRp04tHMjtoSAe8OtZU7YMKYgCPOsqQOIl7Q9oLmIYiSqcl/eq8717daoUUsYHOvYhE9rJkrRqz1NhcG9zUA5RuYn3eteFVXbxHmeQ8h1pjwnFG2xgj0Jj51TozRuT2Spw0gSAR50PeDiEJ8I2AEDXcwKvWE4paZRbuFCzDQgA/TaPOqhxS4Ll0i37IkZusbkVPdmpxhx62QYbC5yACNdKNs8Au3AYXUTodNt9ak4Fw1XdEa4qFtQDImdhI1G1Xfj2F7lxcDAgqgjxEgwF8PIjSaVqtlMeKLpM5zxHgl21bFxgCjGMwMgHoelLbWIykkCZEGenP0rrWHZLtt7TKBnBBUaA67wZgfGKruN7Eq0mySrrqygyI5ehowmvYubxpR2hRwnjSKRAKnSYOmnv59KbMM+IUtcM7qDlDGCfDnG2/PcVU79hrbFbiSw1zKcp9ZGh94qZOMXO7a2xO0AMJHz2PnVFTM7l+C1XksDw3HDsrFsqRJH5WjSqxdtoWNxVVQ5JCgzlE7Ryr3gfEBYctc9ll9Z/zWt8bZLKlzxILrv4m08AIytrzMn1ihJNhTSYL3hDBg2WJ1ADbqRsSOtG8G4bayd5e1E6ATJ0+EUsVp8OuSSQDvPWn9y7bFtIzZoGmgA019aC1pDwgnbZYOGYPDYu21sKEyMCDoGynz92sVXOM8MXDXSoJZCJjms7Zvzc9R1qy9nsMjKt1ZUjdANGiNGNH3befEG5cVB4YUHWIOh1570wJUmcteBMe6tcxESCJ286edqOGv3rOq+BjoQNNo91G4vgP3Iuu+XImihZ105zQSVEW9lctuaJwnELluSjROhkAgg7ggioWmtI0pbKUxl9qtsCX8DxplBgnp/LWgeN6VsYrZL52nSpzxp9GjF5Mo6fQ3V62VqCs3ZH6UQjzWeUWuz08eWM1aLVwPtAy5bVwk29tenQ9RTXtLwKbZu4YiN9QGjyM7r0PL02ooNXHsZx3KwsXNVbQT58vfTQknpmby/HU42kVSy7KfvlCcpUAQfNRRnDRYuO/e3SFA0A0k+lPe2PAMnjQeB/Z58pyHzHLqNOQrm2IXK2+o5mh8PJu9M+ey4nF/gtuGe3buEhs2h0M/DSh3x6htBudY8zVesXSzxmkRvTjDYFVDE3Br1pJYVH+TJXRJinuZ2159RWUHc4fcJJ7xayuqH2gcgDDYFrkx7I9pjECg8Tp4UMqOcRPn1pxj8SoUWrXsDcndz1Pl0FLGga16Cl9HoSi3tkKbRBqZ1WEjeDmWCIIYwZJ1kR8K3sSTtFGogjUTQlIeCfYIrETl0JEE9PTpQytlamDrpQd5D766MhpWNuzjq11Q/4jHug6zy1rqHBbquGw17xMvitMx8W2wb3ae+uPYC+EuKwkAc+cxv8avXBMX38IzlXtgm3cXQlf7H5elc+6NWL90W/oL4pbNqbnsldWA5gn210nQ6EcqFxHaruvB4SHUMGG6t10Ox3il3FOP3HZs2UOpKkxl2kEnkJ59ar+FwDls+XPbEy6RHwO0bxU1AvPykkk1YVcU3Lxu50EnxBpKnbNA1+FacbFjMvdCAqwx18R6iakx9s27YyABn9orqMojSdpJ105RNAOVuFRlKoIBgk8oza9d6pTo8+clKbroI4RhZm41tXVBorbGj+K427dv8AdXSFCxlVdgCARv5Gp+ChCz2i692h8VycoKnkM0HryqPtDg2F57yeJHAyOsMJECJG2xovoWPFSIMdw7wLcVTmRstyBAgiUeB7xRHD7au6hmVVBMkmNI5DrTbA8ct28NLp94RlIPMCYY9RrVYS4hcmZJ6fSBypG66LRfaLDhsebFx1VgyEjKRygRIG0mtcTx+SY1J3mPhSnESntIYAk6aQdjPSlb4goQ+ZTmEwI012I5UEpMRtJja7xa4pzG42nLXf02NB/wCo95m7y6wiIV8zT+gjzozA93iPEbarl3LaIeoPQweVF4/hODibaseU5wvKJhtflTxil/ISXJ9IXYThty8fukLr+fVV/wC79KYYvsneVMyw5GpVdfh1p5a4xcthF+ytlyj2WXbkY0pxhuKoyFiGSdg4Cn3TXcVegXKjlmIwNxfaRl9RFBMpFdW4lg0vooYaMfCV1Pu/4pa/ZK3nQG2zLJzfeAaZT021j40ONDU32c6t3SDI3oqxfPOrDxLscwztbaACxVT0BMAt1gVULytbYqwKsNwdCK5w5HQyyxu0PkeamRyNQdqTYPE0yR6yTg4uj2MOaOSNo6x2ex6Y7DG1d9oCGPMEey46Hn7qoPafgWXP4YvIT3gGziJDqPMax5HpUvZTiZsX1JPhbwt6HY+41eO22ElLeKXdCFuEfkJ8Lf7W+tVi3JX7Rhz4Y8uL6fX4ZxFL59lVj3URh7VwsI06ltBTLtCnd3O8UDK+n9LD2h6cx5RQDuzkZBpHWm7VpHj5cThJxYbcxCyZuCecKKyhfsx8vga9qdRJcQJH9ay68a/CtO9BYchO9E8W7uUFsbDxbiek9OdalH2b3LRBZcz4jpTOyO8ud3aBYlZgdQDNJMjHyFOeEcV+zqwtoM7aF2Mn0A6e+uaDGX0RhORry7anStmuE67kmSffrU6MCKi7Rdx0AJaGYS2Xzgn5CsLuD4bhEGQRIqS65LBVA16mKkt2SdCII3FUTdWxLa0meWMUFcPcth+epIzGBGbrHzqZsa1xs1xgiaiAIAHQAe6tnshCSFVgVIGYbEjcQdxWmC4XLfhLDYNt/nrpRUkwUxmmHzW5FwopIy22B1Un2zyUc6Hv2AhhfEANSJifXnUGHLPdAuFhlAlQTJjWQRIMQPKjMRjGDBFIdT5AGCAdQI1IpJIpGP2KGZluoYJWRIA3E66VZu0+JRbSWbbZROYhenIadSZ91V9+JJmh1IhtV0iCdh00p5Z7PWsTbNy1cZQT4QYMEEzO09KqrSozzSuwbh3CbmIXSFEfiJ10pK2Fa2zDKwdTpHIg8/Krzw10wyhLl1WYdBB94FbpjsKlxr2dmZhBUCenw2pHS6HTk9kvCXDYXvbwEspzabL0jzIn31RcVbTMSqASdFExvoNab8a48905QuS2NhzJ6mp+I8NVMPZuKssZzSpBJMEzpy2FCUmUxwUnszBcLuC2FzJmJMqN50gTzME6jShsBw64HZwQcqkxMEctRv1mfOrDw+yt+3COyOIOwOkCRvOsD0rbjeDtWree6WYoORykzpGnWuSsrJqOmC2LV25fRbngyRnAJiDqBptOXfzqyqtvMyIBI1MRoDsD6x8q51Y4/c7x7hCnNl0MwMvsR6VfOH4sHDi6N2AOnNjAMxppprTRYs40kGYvC3Cg7oCRGm0TuY9Na3YQAD4mWPEYzHrqIk+VF28UQxLgeKFBAjYfOgmCs0ADTl68qPZOqNMVct92XMwYDDWBpvH6/Guf9rOz5RTdzT4ojUwuy6nf+4q1Yl2tXwLhf7M0ksusEx7XkCPnzrO0WORUNu394XUgEeyAQYJO20kDyrrC4nIwSppvhL0ioOL4B7TZXEHyoXCXCGpZx5RBhyfFOvTLCjV2Ds5dXFYIJc1DoUb6E/rXGsO810/+G9+bTp+V/qB+xrPi1Kj0PKXLHyXopHFsEe7e048VtiD6oYn3gr8Kp2HMNGYrXV+3VkW8Uzxpct5tPzLKk/DWq9gezVzEWhdQI0kgjYgg0VLg3GrMmXAs6Urp0VT7VcH4pryrM3ZC7/8AxPx/vWV3OP1/wQ/QT+0VP7KAamCiolBB1HPzor7KWVjmCnkDzrQIqQOyDatlAAGleEQsBQTzMz8I0HOo7dosdTFc0UjKIdbdPZe5lHoWjrAX96cHgaW0R3dirhiggK+3gYgnQeW+1K8EgtnMFluRbWD1A2n1ox77O2Z2LN1Mn/gVOUkuinYPe4dnaAdB+L+1aLi2QC0YIViZjUzUWI4oNVtjU6Zp89wK3wPDSwVmaAxiZ1PWKMW0v3CqHJ/tPL14kiBK1reQkKE1dgZjlB0HwA0qwYO2lslQp5jQSYPLbQ6b8qHN63bGacjjNDQWgkmJ6EDX3UF1osoL2K8PedACSwyCBAGgJ8Wpjf8AWjOM4u1iMuW2EKCA6AyVHsiPL3mgr+NcmRcBzaHLpz2y1Lw7AXbjyjFQZaV1gidIG3SnjfsnJRXQL/phZ8xLMAJYkGfeDV44Zg8V9mACpbBU5DEMOkqNvWoktd9csln3UqZWDIXQNtJnMOVTdp+0gt/d2m1GhbeI5Dzrna7JSp9IpfFHuISDJcGCT5eu9Tcea2iWe5LS9sNcPn5dOdBvjWZ92UTq2s/2qx4izh3tqDfbOo/G08vynbltRjHW0LKW+yuYDGjK6OuYlfA0mVb9R5VeeFcat4hES4ma4DAUR4oXUmYAB6eVVG+ttCMmVijr4lWATuNduXSphhGCd/bKgFipXOAVbeAdJEGuktD4p8XsuVrhtuwwe3nXP4tSMoI1WSR56Uo7d4lzbQFSA8FpIJDDUKY9flWr8XxFyyMgMIQzcyRzGYCHHz9YqXEvcxeGcXEyne2TALEdRy1ETzBpYqmVyStdlOW2cuYdaunZHHE2WRgYt+/QyR9Kp1i5CsjCDroeXlROBxr2tLembcjmOQiNNzQi2m7KSalFNF+w+PD2x3wVgHjMs+GCQCR5bH1ovE4Vgy3bT5kbR1kERsGE8xpVW4TfIdhmyM8OM4IDgqJ0kCZnUb09weHxCkFHQLJlcukTsdYHrRf4FX5G+GuBVaSTpqDE/wCGl4w1t1K6QGPh9mIiFgaHrNQcddrSi6AGcZQRrGUGdBNVE9oimYhS5dixk7TGgj0+lMnb2JJUtAfbdlOIOXkqg6zJqtroZo7HXjcuG4wjMZIH0re/wq4rCUIVhmU8o5f4aczSCMA810j+Gra3R/Qf/lXM+GV1D+Gls/et5qPgCf1rLVZEem5X49sJ/iLa8WGbqXQ+hy/vVD4wL2EYG3cZBzCk6HcacwRGtdB/iOPu8Oel3/x/tVV4zhResvze3p6py+B+tDI1HITxJvDr0V9e2GMH/qn4D9qykHdmsq/FGX5pGz4hleTt8f8AmjcRZZ0UqvtbFR7Ub7dOlD/ZbnO22UiQcpiOtM8FfuYbOuXxHQTqAYgkRoem9NoRpoV4VMrDMARz/tRJgbfOgGdi/pTFQY5H50k2GGya1MSdKlGKKBirZSVIJ8j67UFfv8lknyoeZXxnxdAfqOQpVHdj36POGYUvcVevTkOZqyXcPvbU+BJMzy9fdSfh2ZCSurZdfQampsMXut3aaTMxOvPWjJtsvD9qpE169GQC5qY8X5YP+b0LdV1UlbltomROvnvvUWKQBiLgIiBMTrrudwY1igsoBPsmDoeo6+lNFE8k09I2e9MEKA2uoGh35cjyonAYpUYnPcU9UyydtJoJkPMf56VqrRB0OsR/amJqRbOJ420LQuJcOfwsNJMzoZGxEeXzpTxayHyX0Ja2+hOvhufjH6ijcHwC5fIuXB3VvcKAZg8hPL1oziuOt92MPaQBFOp5kjn6+ddJ12T7eis2IysC5QmZJBIYbiQNQZoe1hiSMxMc8u+vrzp5wRLTOe8UmRCxyO21GHAsGfJbkL7SZwcoIkMCdY1mSOdd8g6wXt9CTDWlAjxqJkaZtY02I15Uyt4Ui21p7bK2UXIfednYCehG/Kt8HhpLWnZlHNQJIgjqYkdaLx/C3sHOHZ0OouFTKkDwkiTKkEqRy6aUOVuhnjpX6GPZngT2yLovZ7bAwqiJBnQyTEH3yN6XcV4bfuYkhgxtnQETCiNxruN4qbh7uXt3bI1diDbg5QAfEZ2jefWmHbHiz2CLdsgFgSW5gTAjp603KyUo09Fe49wlrWRgWcZcrOd5nSY8tPdSlG5dOcdf1opHuXNTcdlHtZSzETt4elMOH8Buva71JViSoVxpcX0PI+emlK1ZSE3DsWnFnKVIDSsAgQV1mf09Kb8O4/fVVHtxpIB21ADQDO4g0sxJIbxWQpGjL4gD7iTlPoYqThSXC5W2YPR1zAec9fdQRRzT2hycRibgL3LiKg1PiAy+R01P7URheztsqZElgJY+epj1qvY65dFwqPG6STpOWIkhToOtC/67emTcLf1En5bUUl2TlJtUjofDez1kQ7W0ZhscsQOWnM+dR8WwEkRAnrr/AMUs7Odpe8upbKnxyCAT4WAmRP4dDpVovsGHQ+dVjTM8k09nMLOHyO69HYfAxXWewWFyYYMd3Yt7th8hXOXw+e+yLqWePeTr8zXY+F4YW7aINlUD4CssVeRv6PQyPjgUfsrP8Rn8OFTmbs+4AfuKp+Bx+W7mPstIYdQdDTz+IGMzYtEB0tWyx/qbUfRfjVND1LNuRp8aNQRNxPgkXXCqWE6HqCJFZVgwfGyqKCASBWUnzIb9MirWMf3dtrduWZ9GuOZ05qoPsihmbQSQAKjtou7NlETrz9OtRYm4mQOBrPgBYHQHxEr67ela6bZ5fKgm5xci2tpUSAxZyVBL6aA+Q6ddaX3FcAlsy8wNhqelS3uJgrGQTpJgDQCI0+ND38ZcuAzsY5dNtap2Jpf1JMLiNCMsk89o67e6pbaRrFLgTU9vFuqsobRgAeegNK4lo5KWwgY023V0y5lk6z7pG0elHcQxatbJRsgchzbHNuZDAaDQmJ0kUnVFMczRhw6hGLmD+BdJnmx6L9ab0Tu22DWypP3jNGsxqZjTevZ8Ov8Aet2wB7rvRqobKfInY+lDBSxgCuBegprpZfCJCcwIjofITvWYfE93qg8Z/Edcv9PQ+e9HYG+tu29sKS1xcpckQOsCOnnQCoJhSNRrzoXfQK+xrgOI3DJF1+9JEAkkMOmulF4LCXMU2d2hCDNwwo8pJjN00pFdwLqM8SsxmG09D0PrWqXmhUZjkB8InQSdTFBqxk96HeIwL2XUEeYIMg+YPOmeHvLfYLcOS4B4bk5T6BvwnoNjRifZ/suS5dt6FspkFhrI05n0pMuDDLmVxkOzP4R/b0qUoSTtF45E1Ugvg9sWMaFvM2U+IOoDTGoOXXMJ0K0TxLjbrcZltM1t3JQOuSSZClOgjqTMTQN/h1x1bPldVgkgnmDBzRHLcbcxFLr2EdMubMbZ0RmGq6kZT+UzOm3OqLoTt9h2CxtzCPma2yw5OQgwAwMgMNCCCPQge9r2p4f3y9/bIYZBmUEEqN+XPXakWd01cOEMK/SDBH+dKsHD8Slq4LT6ISCGBKyGAKyVMHmPWa6zpY76KXhWFp1YsyiYbIQSy8wAdBV0wfae1cyW7aZFUBV7x5MAQJ0OvnrSTi3BntXHPdd8hkIVJ8HMTAOo929V57Ds8KhBJ0B38qeyNL2dSwzW75IhS6iSuh06idxU9zChRAgekUg7KcAu27ne3XEhCqpO2bqfLWjMLYNpntsQQxLJrDROsjnG00UrElp6EuH4Rdv3XW8CjKCVurpmGwGm+nnMVDf7EMNrinUciKulnYa61vcoUdeio4LEYfDXDbS2FcCO8cwzTEwSNBr8qbXOLDuy2ummu88tefrR13AK5GZQ3mQDSHGWjfvCza1AMSNp5n0FdOXGI+GHyTV9ew7sLww3Lhut7KbHqx/5+ddHu3QiliYAEk+QoDhOBSxbW2vLc9TzNVjt9xcrbFpTq+/9I/c1KK4xtmrI/knS6KhxXGG7dvXdfG8D0/4C0uRqnuaIq+pP+epI91QLWWW2b8dKNEq3SKyoJrKSinJikXZGYkEg6KRoPdtXj2ywLCBz3j3D4/WvcbhSh/lO1R2rcnfzr0lJVaPEeOUXTIGQg6ipS4g6Dap72ILkAkbaEwPnQmKYFjlELppMxprrRWxJVHolR4iRII0pl/pSXERrdzxtoUYgQ0TAPQxANJFnlR/B7atdQOwVJliTsOdHSFU7WyGwwVhm5VLcuNceRqR1M7aftR/FLFp3ZrJCoOpOvmBvFCWLIUjnOoP9qRySHj1Qxw98pYawgGVyGdiNSRyHlUCovl/mlagkyJED3T/at841IEjSJHy+vwqW32XhjRJ9gV4BuBAY/wCNNqktcHa2xKXsrLsfMft+tCorTI2o9L7Ed26EsWJJ1nXlB0FNF0tFJYovtDK7ifuLlu6CHcTmC+EwPDoPr51TrvhNXO1xBbpW1eDAD2SrQNo8VA8RwVt7YfxZcxAOkgg6ieQMaTTcrJSw1/EX3eI96tqyxhRuY1zQco9Jih+HcVezmRhnQyGQmB/zWXuGFCXQi6g33lZ/MBqPUUC2HJ1Gg6bx76e0jNbb2dH7JcQRx9nkGVzofI6Op9D8aa3+CZle2NUfdTpA6g8iNCK5jw3HvYPhbRiM2XQlR+ENyq0cH7XXActwBk1heceup+NB0Uin2LeIYa5Yc2i2dY01OgB0B5SPfQz3TlAadD4T06j0mrlftWMUDcBKsdMrMAfOFk6TUXFeBfdsttAfDoTqZ/TnUtssp8SqfarmbV2BjQ6mdNIj3VO+Ke8FtliWBzBlBJPI67jTpQFq6bZNtlnkQZBHp0NT22a2wdHMCDKgBgRoAQdOR2ooMv3Ow29hsRk8OW8onxCe8HkdZ+vlS04wEsLhdCBKxyYbSCRHrRNniwyFCoDBpW4sggH8IA5c9+dRYl2vEKz5tdC0fX9zR5UDg60SjF3LZQtmV4EAhgxnaCR4gdOtNrPa24i/eICQdeXujrVaxfDmtnKSCRtBkD0P7UVZwZusipby6AQupZuug05UXJLYFBz1RYz2juXQUt28rNABkyZ6AgRVz7McCGHty2rtqx6fy0N2Z7OCyO8uQbh+C+nU+dPMZi1tqWYgAc6RXJ3L+w7aiuEP7v7NcfilRSSYAEk+Vcm4ljjfvNd5TlQH5fvTDtH2gbEt3Vr2Z1PX+1KcSO7Rcp0ghepJ9p/291CbvQ+OPH+pFibuZtNhCj0H7mTUYNRCtlNZ2bI6RlZXlZQGCnQEQRIpVi8CRqkx0qwYzCPbco6FWG4IihytdDI4spkwxyRK2tud6xlFO7+GDeR6ik+JwjqdQSOo1rVjyKR5GbxZQ/KJsFgDcYAEDzJqO4mViJDAEiRz1iahEjr8akDGqMyqiRDFbNcJgf3qAmtVY7/OloeD2HPciY5jp13irDwfh4uhQQpBUxrBkCBPOflVUWDEmPPejLfEchBTSABvXNWtGhSHXE8KbZ7slS0TKnTTU0nfFNm8ZIiCOojaPOvcdiHfKzHMIGsjToD50NcvHWYOYQc2umkEdDQhCuwzytqkHYi5aYIbbnPs0g+1+Yes/KjbmPaFtg+FeXURInrrSjDC2CQxjTwsvWNJrT7Uc2vMR86dITl9lq4IyNipAyh0bw8piY89jSvtLktXiqAagEjlJqfs4S2JtxGjNJ8gpk/Cm/aHgnenOgGcCI6jl6GhWhJ1yEWF4WLtp7hKKUBgLO4EwZJFKbPtr4gOhYwAYMa8qsvBeFXUDJcHgbcZvjSnH8LZbzW7fihcwB3jnHWKP5QnTIV4o0BWQMdixM68v8mrPwTtaykW7y5lkKGXVhyJMaMPPf1qq/Y7gMlWA6FSKizvbbMrEEdCR9KVNNlLtbOpca7N2r2pWG5MND/eqzd7IP4iLpk7SNPfFB8G7TXkPtlwJlHedI0CyJJ3+Iq08N7SWbxyElX+I+PL301Jdi1L0UQ8NK3DaZkR+jHQ/lg85+NbPh7tgjPbIV5Go0cc4P61a+0C2LhNtF71zoMgmP8AdXvBuxdwqouuVQahZk67+SzFTm49R2zTj5VctITcO4ZcxDhLYJUc25A/mPltXROCcCtYZZ3c7sfoOgqW21nC28q5UUczp8+Zqrca7aKJW14j+Y7D0HOgo1uQXJy1FUiy8Z43bsLLnXkvM1zPjfH7mIaNl5KP160rxeMuXXliWY9f80qXDJlMDVvxN+XyHnXNtgqMf6hOFshAZP8AW3/iP1+FBYnEm42blsB0FZir4PgX2Rv5moRSy+imNf8A0yVa3NRA1tNSNFnute0wt+EAFeU/HX9ayjQOaOn4XiWHxii3i1XNHhfYH37o3ltSLjvYW5aOaw3eruF0DAeQ/EKBuWSpMCCNGQiNehHI0y4dxtlAtvLquykkOnmjjUU3KMtS7+zvjnB8sb19f6KXetMrFWBUjcEQR7jULLXU8Fbt8Qz27uQwDlJhbq9NQII8xSjin8Orya2XVx0PhP7GleGS3HaHXlxvjk0zndzBo24jzFA3eHsD4dfkasmO4XdtNluW2Q+Y/XY0GVNCOSUQT8bHPf8Agrt+0wmQRUKtVmPpUV3CW23UfT6VWOde0ZZeC1/FiBa2YCBvPOdt9Ipo3ClOxI+danh7ADUEDaRTrLEm/GmvQRwjhovW3XOQZ0hdJA0ljuPIUkuIQYMyNKt/DrltAqsBHtSFylWAMHTfpNIsdhD3jZPEpMg+vrTc4/ZN4pdUxcgjevY1qf7I/wCU16MM/wCU13NfYfin9DPs1xRLFxnZSxCkKB5wDvttRtnFveuHPcKiCYUkAdF03PrSBcJc3y/Sm3DrLKCCp1Gvryqc5a0yuLE27kh1bsE91FxwrsFhDl0kCem81EvDsQt9hbuZirEKLo0cFgNDuCdKxC8Dwk6Aa6CQZkdDy+NH4bidwDIe7VixJdmLHU8t8vTSkjkaLTwxfoLt4m6CbdzB3Cw37vxj186WcTwuFvA+I2nG4ZCp9CDv7qm4pxW6GCtiWdY17shfdI3oH/UrSaraDN1uEv8ALai8hJeJYnw3Z17j/d52A/EoI+Z2q4cK7GZdbjZQd1Tn6t+1LsN2nuBhmMIPwqoHyqTHdtWIy20jzYz8hpRUuXbG+Nw1Ff3LlhsPasL4VVQNz+7GkXGu2qJK2vG3X8I/+1UbH8Wu3T95cLeWw+G1LixO1NfpCuK7k7GGP4rcuNmdyx+Q9ByoJVZ/IcyazIq+2ZP5RXpJb2vCo5f5vXKPtiyy+kSWzyTbm3M+n71rcv6ZE25nrUL3Z0XRfrXiiuboWEG9s2WpBWi1tNTZpRtNGcLw/e3FTlOvpQQqz9nsL3am4dz/AIK5KzpypWMsZcRXK6aAD5Csqm8Txxe67dT9BFZVqRktnY+2tpc9o5RJBkwJPqedVG+ojbnXlZUcn8meh4v/AK0T29CjDQ6a8/jXS+zlwtaXMSdOZmsrKv43sy+d0g3G2lZDmUH1AP1rjPGrKi48KBryAFeVlL5HYPB6YoKjpWBR0rKysp6Xo8CjpXsVlZRJs8A0pjw20pdZUH3CsrK44ziFtc50Hwr3B2lzDwjfoK8rK4Mug7E6DTT00oG0dayspia6Ib3Oh2UdKysoMddAtwa1sqDoKysooD7I7iDoKHZB0FZWU8SMyLIOgorDoMuw26VlZVUYpg1pBOw+FaYlRI0rKymJrs9VB0FSBB0FZWUrNSPQg6CsCDoK9rKQY3w6DOug3q1XB90fSsrKK7I5Ck3kGY6CsrKyqET/2Q==',
              width: 200,
              height: altucont - 30,
            ),
            Text('FEIJOADA'),
            Container(
              width: largcont / 2,
              height: altucont - 100,
              child: Text(
                'Uma feijoada completa, digna de restaurante, mas feita em casa, com os pertences que você preferir! Na receita tem a nossa sugestão de combinação, mas no fim tem proporção para você escolher. O passo a passo bem detalhado garante a feijoada saborosa e nada pesada.',
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
                          child: Text(
                              '1,1 kg de costela de porco salgada (1 peça com 12 ripas)')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('800 g de carne-seca')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('600 g de lombo de porco salgado')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('1 kg de feijão-preto')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('500 g de paio (4 unidades)')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('3 cebolas')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('5 dentes de alho')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('¼ de xícara (chá) de azeite')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('3 folhas de louro')),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('> '),
                      Expanded(child: Text('1 colher (chá) de cominho em pó')),
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
