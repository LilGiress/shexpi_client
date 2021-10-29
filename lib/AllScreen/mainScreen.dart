import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';



import '../TabsPages/ratingTabPage.dart';
import '../TabsPages/profilTabPage.dart';
import '../TabsPages/homeTabPage.dart';
import '../TabsPages/earningsTabPage.dart';

import 'loginScreen.dart';

class MainScreen extends StatefulWidget {
  static const String idScreen = "mainScreen";
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin
{

  int pageIndex = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  // create all the pages

  final EarningsTabPage _earningsTabPage =  EarningsTabPage();
  final HomeTabPage _homeTabPage = HomeTabPage();
  final RatingTabPage _ratingTabPage = RatingTabPage();
  final ProfilTabPage _profilTabPage = ProfilTabPage();

  Widget _showPage = new HomeTabPage();

  Widget _pageChooser( int? page)
  {
    switch (page)
    {
      case 0:
        return _earningsTabPage;
       // break;
      case 1:
        return _homeTabPage;
       // break;
      case 2:
        return _ratingTabPage;
        //break;
      case 3:
        return _profilTabPage;
        //break;
      default:
        return new Container
          (
          child: new Center(
            child: new Text("No page fund", style: new TextStyle(fontSize: 30.0),),
          ),
        );
    }
  }

 // late TabController tabController;
 //  int selectedIndex = 0;
 //
 //  void onItemClicked(int index)
 //  {
 //    setState(() {
 //      selectedIndex = index;
 //      tabController.index = selectedIndex;
 //    });
 //  }
 //  @override
 //  void initState() {
 //    // TODO: implement initState
 //    super.initState();
 //    tabController = TabController(length: 4, vsync: this);
 //  }
 //
 //  @override
 //  void dispose() {
 //    // TODO: implement dispose
 //    super.dispose();
 //    tabController.dispose();
 //  }


  @override
  Widget build(BuildContext context)
  {

    return Scaffold(
      appBar: AppBar(
          title: Text("SHEXPI"),
      ),
      drawer: Container(
        color: Colors.white,
        width: 255.0,
        child: Drawer(
          child: ListView(
            children: [
              // drawer header - entete
              Container(
                height: 165.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    children: [
                      Image.asset(
                        "images/logo.png",
                        height: 65.0,
                        width: 65.0,
                      ),
                      SizedBox(width: 16.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Profil Name",
                            style: TextStyle(
                                fontSize: 16.0, fontFamily: "bolt-regular"),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text("Visit Profile"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),


              SizedBox(
                height: 12.0,
              ),
              //drawer body controller
              ListTile(
                leading: Icon(Icons.history),
                title: Text(
                  "History",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Visit Profile",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text(
                  "About",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text(
                  "Login",
                  style: TextStyle(fontSize: 15.0),
                ),
                onLongPress: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "LogOut",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ],
          ),
        ),
      ),

      // body: TabBarView(
      //   physics: NeverScrollableScrollPhysics(),
      //   controller: tabController,
      //   children: [
      //   HomeTabPage(),
      //     EarningsTabPage(),
      //     RatingTabPage(),
      //     ProfilTabPage(),
      //   ],
      // ) ,
      //bottomNavigationBar: BottomNavigationBar(
       // items: <BottomNavigationBarItem>[

        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //     label: "Home"
        //   ),
        //
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.credit_card),
        //       label: "Earnings"
        //   ),
        //
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.star),
        //       label: "Rating"
        //   ),
        //
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: "Account"
        //   ),
        //
        // ],
        // unselectedItemColor: Colors.black54,
        // selectedItemColor: Colors.blueAccent,
        // type: BottomNavigationBarType.fixed,
        // selectedLabelStyle: TextStyle(fontSize: 12.0),
        // showUnselectedLabels: true,
        // currentIndex: selectedIndex,
        // onTap: onItemClicked,
      //////////////////////////////////////////////////////////
    bottomNavigationBar: CurvedNavigationBar(
    key: _bottomNavigationKey,
    index: pageIndex=2,
    height: 60.0,
    items: <Widget>[
    Icon(Icons.star, size: 30),
    Icon(Icons.credit_card, size: 30),
    Icon(Icons.home, size: 30),
    Icon(Icons.person, size: 30),
    Icon(Icons.perm_identity, size: 30),
      ],
      color: Colors.blue,
      buttonBackgroundColor: Colors.blueAccent,
      backgroundColor: Colors.white,
      animationCurve: Curves.easeOutCubic,
      animationDuration: Duration(milliseconds: 300),
     onTap: (int tappedIndex) {
       setState(() {
     _showPage = _pageChooser(tappedIndex);
     });
    },
 // letIndexChange: (index) => true,
    ),
  body: Container(
  color: Colors.blueAccent,
  child: Center(
    child: _showPage,
  // child: Column(
  // mainAxisAlignment: MainAxisAlignment.center,
  // children: <Widget>[
  // Text(_page.toString(), textScaleFactor: 10.0),
  //  ElevatedButton(
  //  child: Text('Go To Page of index 1'),
  //  onPressed: () {
  // final CurvedNavigationBarState? navBarState =
  // _bottomNavigationKey.currentState;
  //  navBarState?.setPage(1);
  //  },
  //  ),
  // ],
  // ),
  ),
  )
    );
  }
}
