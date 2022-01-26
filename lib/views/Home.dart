import 'package:app_aprenda_ingles/views/Bichos.dart';
import 'package:app_aprenda_ingles/views/Numeros.dart';
import 'package:app_aprenda_ingles/views/Vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 3,
        vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda inglês"),
        backgroundColor: Color(0xff795548),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          // labelColor: Colors.white,
          // unselectedLabelColor: Colors.red,
          controller: _tabController,
          tabs: [
            Tab(text: "Bichos",),
            Tab(text: "Números",),
            Tab(text: "Vogais",),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Bichos(),
          Numeros(),
          Vogais(),
        ],
      ),
    );
  }
}
