import 'package:flutter/material.dart';
void main(){
  runApp(
    myApp()
  );
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.teal,
      //theme: ThemeData(primarySwatch: Colors.red),
      //darkTheme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      title: 'Basic App',
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  mySnackbar(message,context){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  myAlertDialogue(context){
    showDialog(
      context: context, // Make sure to pass the context from the build method
      builder: (context) {
        return AlertDialog(
          title: Text('Hello'),
          content: Text('Are you Efty?'),
          actions: [
            TextButton(onPressed: (){
              mySnackbar('Ok, Thanks', context);
              Navigator.of(context).pop();
              }, child: Text('YES')),
            TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text('NO')),

          ],
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
          length: 8,
          child: Scaffold(
            appBar: AppBar(
              //leading: IconButton(icon: Icon(Icons.add),onPressed: (){mySnackbar('I do addition', context);},),
              actions: [
                IconButton(onPressed: (){mySnackbar('I am person', context);}, icon: Icon(Icons.person)),
                IconButton(onPressed: (){mySnackbar('I am home', context);}, icon: Icon(Icons.home)),
                IconButton(onPressed: (){mySnackbar('I am message', context);}, icon: Icon(Icons.message)),
              ],
              title: Text(
                  'Simple App'
              ),
              //titleSpacing: 20,
              //centerTitle: true,
              //toolbarHeight: 100,
              //toolbarOpacity: 0.5,
              elevation: 10,
              /*bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.home),text: "Home",),
                  Tab(icon: Icon(Icons.home),text: "Home",),
                  Tab(icon: Icon(Icons.home),text: "Home",),
                  Tab(icon: Icon(Icons.home),text: "Home",),
                  Tab(icon: Icon(Icons.home),text: "Home",),
                  Tab(icon: Icon(Icons.home),text: "Home",),
                  Tab(icon: Icon(Icons.home),text: "Home",),
                  Tab(icon: Icon(Icons.home),text: "Home",),
                ],
              ),*/
            ),

            floatingActionButton: FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){mySnackbar('I do addition', context);},
            ),
            bottomNavigationBar: BottomNavigationBar(
              //currentIndex: 1,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.contact_page),label: 'Contact'),
                BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
              ],
              onTap: (int index){
                if(index==0)
                {
                  mySnackbar('I am home', context);
                }
                else if(index==1)
                {
                  mySnackbar('I am contact', context);
                }
                else if(index==2)
                {
                  mySnackbar('I am message', context);
                }
              },
            ),
            drawer: Drawer(

              child: ListView(
                children: [

                  ListTile(leading: Icon(Icons.message),title: Text('Message'),onTap: (){mySnackbar("I am message", context);},),
                  ListTile(leading: Icon(Icons.home),title: Text('Home'),onTap: (){mySnackbar("I am home", context);},),
                  ListTile(leading: Icon(Icons.person),title: Text('Person'),onTap: (){mySnackbar("I am person", context);},),
                ],
              ),
            ),
            endDrawer: Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                    padding: EdgeInsets.all(0),
                    child: UserAccountsDrawerHeader(
                      decoration: BoxDecoration(color: Colors.blueAccent),
                      accountName: Text('Efty Shikder'),
                      accountEmail: Text('eftyshikder111@gmail.com'),
                      currentAccountPicture: Image.network("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                    ),
                  ),
                  ListTile(leading: Icon(Icons.message),title: Text('Message'),onTap: (){mySnackbar("I am message", context);},),
                  ListTile(leading: Icon(Icons.home),title: Text('Home'),onTap: (){mySnackbar("I am home", context);},),
                  ListTile(leading: Icon(Icons.person),title: Text('Person'),onTap: (){mySnackbar("I am person", context);},),
                ],
              ),
            ),

            //Container widget
            /*body: Center(
            child: Container(
              height: 250,
              width: 250,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 20),
                color: Colors.green
              ),
              child: Image.network("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
            ),
          ),*/

            //Buttons
            /*body: Center(
            child: ElevatedButton(
              child: Icon(Icons.add),
              onPressed: (){mySnackbar("I did addition", context);},
            ),
          ),*/


            //Calliing alert dialogue
            /*body: Center(
            child: ElevatedButton(
              child: Text('Introduction'),
              onPressed: () {
                myAlertDialogue(context);
              },
            ),
          ),*/

            //Text Field
            /*body: Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First Name',
                  ),
          ),
        )*/

            //Tabbarview
            /*body: TabBarView(
              children: [
                Center(child: Text('1',style: TextStyle(fontSize: 50),),),
                Center(child: Text('2',style: TextStyle(fontSize: 50),),),
                Center(child: Text('3',style: TextStyle(fontSize: 50),),),
                Center(child: Text('4',style: TextStyle(fontSize: 50),),),
                Center(child: Text('5',style: TextStyle(fontSize: 50),),),
                Center(child: Text('6',style: TextStyle(fontSize: 50),),),
                Center(child: Text('7',style: TextStyle(fontSize: 50),),),
                Center(child: Text('8',style: TextStyle(fontSize: 50),),),
              ],
            ),*/

            //Navigating between page 2,3
            /*body: Center(
              child: ElevatedButton(
                child: Text('Page 2'),
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
                },
              ),
            ),*/

            //card
            /*body: Center(
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                color: Colors.blue,
                elevation: 100,
                child: Container(
                  height: 200,
                  width: 200,
                  child: Center(child: Text('Hello'),),
                ),
              ),
            ),*/

            //CircularProgressIndicator
            /*body: Center(
              child: CircularProgressIndicator(

              ),
            ),*/

            //LinearProgressIndicator
            /*body: Center(
              child: LinearProgressIndicator(
                semanticsLabel: "Efty",
              ),
            ),*/

            //Aspect Ratio
            /*body: Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red
                ),
                alignment: Alignment.center,
                child: AspectRatio(
                  aspectRatio: 16/9,
                  child: Container(
                    color: Colors.blue,
                  ),

                ),
              ),
            ),*/

            //Fractionally SizedBox
            /*body: Padding(
              padding: EdgeInsets.all(20),
              child: FractionallySizedBox(
                widthFactor: 0.5,
                heightFactor: 0.3,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            )*/

            //Layout Builder
            /*body: LayoutBuilder(
              builder: (BuildContext context,BoxConstraints constraints) {
                if(constraints.maxWidth>600){
                       return Container(
                         height: 200,
                         width: 300,
                         color: Colors.blue,
                       );
                }
                else{
                    return Container(
                    height: 200,
                    width: 300,
                    color: Colors.pink,
                  );
                }
              },
            ),*/

            //SingleChildScrollView
            /*body: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(height: 200,width: 200,color: Colors.blue,),
                    Container(height: 200,width: 200,color: Colors.pink,),
                    Container(height: 200,width: 200,color: Colors.blue,),
                    Container(height: 200,width: 200,color: Colors.pink,),
                    Container(height: 200,width: 200,color: Colors.blue,),
                    Container(height: 200,width: 200,color: Colors.pink,),
                    Container(height: 200,width: 200,color: Colors.blue,),
                    Container(height: 200,width: 200,color: Colors.pink,),
                    Container(height: 200,width: 200,color: Colors.blue,),
                    Container(height: 200,width: 200,color: Colors.pink,),
                  ],
                ),
              ),
            ),*/

            //Expanded
            /*body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(flex:4,child: Container(color: Colors.black),),
                Expanded(flex:3,child: Container(color: Colors.yellow,),),
                Expanded(flex:3,child: Container(),),
                Expanded(flex:4,child: Container(color: Colors.cyan,),),
              ],
            ),*/



          ),
        )
    );


  }
}

/*class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello, this is Page 2 content.'),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
            }, child: Text('Page 3'))
          ],
        )
      ),
    );
  }
}*/

/*class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
          child: Column(
            children: [
              Text('Hello, this is Page 3 content.'),

            ],
          )
      ),
    );
  }
}*/

