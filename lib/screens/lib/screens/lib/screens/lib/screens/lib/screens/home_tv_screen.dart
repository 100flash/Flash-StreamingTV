import 'package:flutter/material.dart';

class HomeTvScreen extends StatelessWidget {
  final categorias = ["EN VIVO HOY", "PELÍCULAS ESTRENOS", "SERIES"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0A0A),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Icon(Icons.play_circle_fill, color: Color(0xFFE50914)),
            SizedBox(width: 10),
            Text("FLASH STREAMING", style: TextStyle(fontWeight: FontWeight.w900)),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            color: Colors.grey[900],
            child: Center(child: Text("BOCA vs RIVER - EN VIVO AHORA", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold))),
          ),
          for (var cat in categorias) ...[
            Padding(
              padding: EdgeInsets.fromLTRB(16, 20, 16, 10),
              child: Text(cat, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1)),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (c, i) => FocusableCard(title: "$cat ${i+1}"),
              ),
            ),
          ]
        ],
      ),
    );
  }
}

class FocusableCard extends StatefulWidget {
  final String title;
  FocusableCard({required this.title});
  @override
  State<FocusableCard> createState() => _FocusableCardState();
}

class _FocusableCardState extends State<FocusableCard> {
  bool focused = false;
  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (f) => setState(() => focused = f),
      child: Container(
        margin: EdgeInsets.all(8),
        width: 220,
        decoration: BoxDecoration(
          color: Color(0xFF141414),
          border: Border.all(color: focused ? Color(0xFFE50914) : Colors.transparent, width: 3),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold))),
      ),
    );
  }
}
