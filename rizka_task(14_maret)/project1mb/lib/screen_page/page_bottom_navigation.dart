import 'package:flutter/material.dart';
import 'package:project1mb/screen_page/page_column.dart';
import 'package:project1mb/screen_page/page_custome_grid.dart';
import 'package:project1mb/screen_page/page_form_register.dart';
import 'package:project1mb/screen_page/page_passing_data.dart';
import 'package:project1mb/screen_page/page_search_list.dart';



class PageBottomNavigationBar extends StatefulWidget {
  const PageBottomNavigationBar({super.key});

  @override
  State<PageBottomNavigationBar> createState() => _PageBottomNavigationBarState();
}

class _PageBottomNavigationBarState extends  State<PageBottomNavigationBar> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: TabBarView(
        controller: tabController,
        children: const[
          PageFormRegister(),
          PageCustomeGrid(),
          PageSearchList()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: TabBar(
          isScrollable: true,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          controller: tabController,
          tabs: const[
            Tab(
              text: "Form Registrasi",
              icon: Icon(Icons.input),
            ),
            Tab(
              text: "Costum Grid",
              icon: Icon(Icons.grid_3x3),
            ),
            Tab(
              text: "Search List",
              icon: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}