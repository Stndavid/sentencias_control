import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Control Statements',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ejemplos de Control"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Selecciona un ejemplo para ver",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const IfExampleScreen()),
                );
              },
              child: const Text("Ejemplo IF"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ForExampleScreen()),
                );
              },
              child: const Text("Ejemplo FOR"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WhileExampleScreen()),
                );
              },
              child: const Text("Ejemplo WHILE"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DoWhileExampleScreen()),
                );
              },
              child: const Text("Ejemplo DO-WHILE"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SwitchExampleScreen()),
                );
              },
              child: const Text("Ejemplo SWITCH"),
            ),
          ],
        ),
      ),
    );
  }
}

// Pantalla para el ejemplo IF
class IfExampleScreen extends StatefulWidget {
  const IfExampleScreen({super.key});

  @override
  State<IfExampleScreen> createState() => _IfExampleScreenState();
}

class _IfExampleScreenState extends State<IfExampleScreen> {
  final TextEditingController _controller = TextEditingController();
  String _result = "";

  void _processIf() {
    int age = int.tryParse(_controller.text) ?? 0;
    if (age >= 18) {
      setState(() => _result = "Eres mayor de edad.");
    } else {
      setState(() => _result = "Eres menor de edad.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ejemplo IF")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ingresa tu edad:"),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Edad",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: _processIf, child: const Text("Procesar")),
            const SizedBox(height: 10),
            Text(_result, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

// Pantalla para el ejemplo FOR
class ForExampleScreen extends StatefulWidget {
  const ForExampleScreen({super.key});

  @override
  State<ForExampleScreen> createState() => _ForExampleScreenState();
}

class _ForExampleScreenState extends State<ForExampleScreen> {
  final TextEditingController _controller = TextEditingController();
  String _result = "";

  void _processFor() {
    int n = int.tryParse(_controller.text) ?? 0;
    setState(() {
      _result = "Cuadrados de los números hasta $n: ";
      for (int i = 1; i <= n; i++) {
        _result += "${i * i} ";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ejemplo FOR")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ingresa un número para calcular sus cuadrados:"),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Número",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: _processFor, child: const Text("Procesar")),
            const SizedBox(height: 10),
            Text(_result, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

// Pantalla para el ejemplo WHILE
class WhileExampleScreen extends StatefulWidget {
  const WhileExampleScreen({super.key});

  @override
  State<WhileExampleScreen> createState() => _WhileExampleScreenState();
}

class _WhileExampleScreenState extends State<WhileExampleScreen> {
  final TextEditingController _controller = TextEditingController();
  String _result = "";

  void _processWhile() {
    int n = int.tryParse(_controller.text) ?? 0;
    int i = 1;
    String tempResult = "";
    while (i <= n) {
      tempResult += "$i ";
      i++;
    }
    setState(() {
      _result = "Contando hasta $n: $tempResult";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ejemplo WHILE")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ingresa un número para contar:"),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Número",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: _processWhile, child: const Text("Procesar")),
            const SizedBox(height: 10),
            Text(_result, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

// Pantalla para el ejemplo DO-WHILE
class DoWhileExampleScreen extends StatefulWidget {
  const DoWhileExampleScreen({super.key});

  @override
  State<DoWhileExampleScreen> createState() => _DoWhileExampleScreenState();
}

class _DoWhileExampleScreenState extends State<DoWhileExampleScreen> {
  final TextEditingController _controller = TextEditingController();
  String _result = "";

  void _processDoWhile() {
    int n = int.tryParse(_controller.text) ?? 0;
    int sum = 0;
    int i = 1;
    String tempResult = "";
    do {
      sum += i;
      tempResult += "$i ";
      i++;
    } while (i <= n);
    setState(() {
      _result = "Suma acumulada hasta $n: $tempResult\nSuma total: $sum";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ejemplo DO-WHILE")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ingresa un número para sumar acumuladamente:"),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Número",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: _processDoWhile, child: const Text("Procesar")),
            const SizedBox(height: 10),
            Text(_result, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

// Pantalla para el ejemplo SWITCH
class SwitchExampleScreen extends StatefulWidget {
  const SwitchExampleScreen({super.key});

  @override
  State<SwitchExampleScreen> createState() => _SwitchExampleScreenState();
}

class _SwitchExampleScreenState extends State<SwitchExampleScreen> {
  final TextEditingController _controller = TextEditingController();
  String _result = "";

  void _processSwitch() {
    int day = int.tryParse(_controller.text) ?? 0;
    switch (day) {
      case 1:
        setState(() => _result = "Lunes");
        break;
      case 2:
        setState(() => _result = "Martes");
        break;
      case 3:
        setState(() => _result = "Miércoles");
        break;
      case 4:
        setState(() => _result = "Jueves");
        break;
      case 5:
        setState(() => _result = "Viernes");
        break;
      case 6:
        setState(() => _result = "Sábado");
        break;
      case 7:
        setState(() => _result = "Domingo");
        break;
      default:
        setState(() => _result = "Día inválido");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ejemplo SWITCH")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Ingresa un número del 1 al 7 para el día de la semana:"),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Número del día",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: _processSwitch, child: const Text("Procesar")),
            const SizedBox(height: 10),
            Text(_result, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}

