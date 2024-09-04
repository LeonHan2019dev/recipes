import 'package:flutter/material.dart';
import 'recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //2
    final ThemeData theme = ThemeData();
    //3
    return MaterialApp(
      //4
      title: 'Recipe Calculator',
      //5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
          ),
      ),
      //6
      home: const MyHomePage(title: 'Recipe Calculator'),
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // 3
      body: SafeArea(
        // TODO: Replace child: Container()
        // 4
        child: ListView.builder(
        // 5
        itemCount: Recipe.samples.length,
        // 6
        itemBuilder: (BuildContext context, int index) {
          // 7
          // TODO: Update to return Recipe card
          // return Text(Recipe.samples[index].label);
          // TODO: Add GestureDetector
          return buildRecipeCard(Recipe.samples[index]);
        },
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    // 1
    return Card(
      // 2
        child: Column(
          // 3
          children: <Widget>[
            // 4
            Image(image: AssetImage(recipe.imageUrl)),
            // 5
            Text(recipe.label),
          ],
        ), 
    );
  }
}

