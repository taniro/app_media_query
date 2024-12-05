import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    print("${largura} x ${altura}");

    var orientacao = MediaQuery.of(context).orientation;
    if (orientacao == Orientation.portrait) {
      print('Modo retrato');
    } else {
      print('Modo paisagem');
    }

    var dpr = MediaQuery.of(context).devicePixelRatio;
    print('Densidade de pixels: $dpr');

    var paddingTop = MediaQuery.of(context).padding.top;
    print('Padding superior: $paddingTop');

    var tecladoAltura = MediaQuery.of(context).viewInsets.bottom;
    print('Altura do teclado: $tecladoAltura');

    var escalaTexto = MediaQuery.of(context).textScaler.scale(2);
    print('Escala de texto: $escalaTexto');

    var largura2 = MediaQuery.sizeOf(context).width;
    print("Largura 2 ${largura2}");


    return Scaffold(
      appBar: AppBar(
        title: Text("Media Query"),
      ),
      body: Column(
        children: [
          Text(
            'Largura da tela: ${mediaQuery.size.width}',
            style: TextStyle(fontSize: 18 * escalaTexto),
          ),
          TextFormField(),
          largura < 600
              ? Column(children: [Text('Layout Compacto')])
              : Row(children: [Text('Layout Expandido')])
        ],
      ),
    );
  }
}


/*
void main() => runApp(const LayoutBuilderExampleApp());

class LayoutBuilderExampleApp extends StatelessWidget {
  const LayoutBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LayoutBuilderExample(),
    );
  }
}

@override
Widget build(BuildContext context) {
  var escalaTexto = MediaQuery.of(context).textScaleFactor;
  return Text(
    'Texto escalável',
    style: TextStyle(fontSize: 16 * escalaTexto),
  );
}





class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LayoutBuilder Example')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
*/