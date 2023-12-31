import 'package:flutter/material.dart';


class LayoutBuilderWidget extends StatefulWidget {
  const LayoutBuilderWidget({super.key});

  @override
  State<LayoutBuilderWidget> createState() => _LayoutBuilderWidgetState();
}

class _LayoutBuilderWidgetState extends State<LayoutBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LayoutBuilder Example"),
      ),
      body: Center(
        child: Container(
          color: Colors.amber,
          width: 150,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints){
            if (constraints.maxWidth >200){
            return Text("Wide Layout");
           } else {
           return Text("Narrow Layout");
          }
  }
          ),
        ),
      ),
    );
  }
}
