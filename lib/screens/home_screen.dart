import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:utspemrogaman/widgets/home_bottom_bar.dart';
import 'package:utspemrogaman/widgets/item_widget.dart';
=======
import 'package:coffee_app/widgets/home_bottom_bar.dart';
import 'package:coffee_app/widgets/item_widget.dart';
>>>>>>> 809a7a1 (consume api)

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
<<<<<<< HEAD
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSlection);
    super.initState();
  }

  _handleTabSlection() {
=======

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
>>>>>>> 809a7a1 (consume api)
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 15),
<<<<<<< HEAD
          child: ListView(
=======
          child: Column(
>>>>>>> 809a7a1 (consume api)
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.sort_rounded,
                        color: Colors.white.withOpacity(0.5),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
<<<<<<< HEAD
                  "It's a Great Day for Coffe",
=======
                  "It's a Great Day for Coffee",
>>>>>>> 809a7a1 (consume api)
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 50, 54, 56),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
<<<<<<< HEAD
                    hintText: "Find You Coffe",
=======
                    hintText: "Find Your Coffee",
>>>>>>> 809a7a1 (consume api)
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              TabBar(
                controller: _tabController,
                labelColor: Color(0xFFE57734),
                unselectedLabelColor: Colors.white.withOpacity(0.5),
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 3,
                    color: Color(0xFFE57734),
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 16),
                ),
                labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
<<<<<<< HEAD
                  Tab(
                    text: "Hot Coffe",
                  ),
                  Tab(
                    text: "Cold Coffe",
                  ),
                  Tab(
                    text: "Cappuiccino",
                  ),
                  Tab(
                    text: "Americano",
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: [
                  ItemWidget(),
                  ItemWidget(),
                  ItemWidget(),
                  ItemWidget(),
                ][_tabController.index],
              )
=======
                  Tab(text: "Hot Coffee"),
                  Tab(text: "Cold Coffee"),
                  Tab(text: "Cappuccino"),
                  Tab(text: "Americano"),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    ItemWidget(categoryId: 1), // Hot Coffee
                    ItemWidget(categoryId: 2), // Cold Coffee
                    ItemWidget(categoryId: 3), // Cappuccino
                    ItemWidget(categoryId: 4), // Americano
                  ],
                ),
              ),
>>>>>>> 809a7a1 (consume api)
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomBar(),
    );
  }
}
