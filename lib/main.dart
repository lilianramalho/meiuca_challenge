import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meiuca_challenge/src/components/buttons/button_primary.dart';
import 'package:meiuca_challenge/src/components/shape/shape.dart';
import 'package:meiuca_challenge/src/components/texts/heading_small.dart';
import 'package:meiuca_challenge/src/components/texts/paragraph.dart';
import 'package:meiuca_challenge/src/components/texts/subtitle_small.dart';
import 'package:meiuca_challenge/src/tokens/spacing/spacing_stack.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Shape(
                content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget> [
                HeadingSmall(
                  text: "Heading SM",
                ),
                SpacingStack.xxxs,
                SubtitleSmall(text: "Subtitle SM"),
                SpacingStack.xxs,
                Paragraph(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "),
                SpacingStack.sm,
                ButtonPrimary(text: "label button")
              ],
            ))
          ],
        ),
      ),
    );
  }
}
