import 'package:flutter/material.dart';

class TalalaPage extends StatefulWidget {
  @override
  _TalalaPageState createState() => _TalalaPageState();
}

class _TalalaPageState extends State<TalalaPage>
with SingleTickerProviderStateMixin {
  

  @override
  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        
        title: new Text("Talala"),
        elevation: 0.7,
        centerTitle: true,
        
         actions: <Widget>[
                IconButton(
                  onPressed: (){Navigator.of(context).pushNamed("/AccountPage");},
                  icon: Icon(Icons.person_outline, color: Colors.white,),
                )
              ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.blueGrey,
                    Colors.blueGrey
                  ])
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Material(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      elevation: 10,
                      child: Padding(padding: EdgeInsets.all(8.0),
                      child: Image.asset('images/logo.png',width:80, height: 80,),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8.0),child: Text('Talala',style:TextStyle(color: Colors.white,fontSize:20.0),),)
                  ],
                ),
              ),
            ),
            CustomListTile(Icons.notifications,'Notifcation',()=>{}),
             CustomListTile(Icons.phone,'About us',()=>{}),
            CustomListTile(Icons.notifications,'Notifcation',()=>{}),
            CustomListTile(Icons.settings,'Setting',()=>{}),

          ],
        ),
      ),
        body:contentBuilder(context),
                    bottomNavigationBar: BottomNavigationBar(
                      type: BottomNavigationBarType.fixed,
                      currentIndex: 0,
                      items: [
                        BottomNavigationBarItem(
                          title: Text(''),
                          icon: Icon(Icons.home, color: Colors.grey,)
                        ),
                        BottomNavigationBarItem(
                            title: Text(''),
                            icon: Icon(Icons.search, color: Colors.grey),
                             onPressed: () {
                
                              }
                        ),
                        BottomNavigationBarItem(
                            title: Text(''),
                            icon: Icon(Icons.shopping_cart, color: Colors.grey)
                        ),BottomNavigationBarItem(
                            title: Text(''),
                            icon: Icon(Icons.view_list, color: Colors.grey)
                        ),
                      ],
            
            ),
    );
  }
        
          contentBuilder(BuildContext context) {}
}
class CustomListTile extends StatelessWidget {

  final IconData icon;
  final String text;
  final Function onTap;

  CustomListTile(this.icon,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
     child:Container(
       decoration: BoxDecoration(
         border: Border(bottom: BorderSide(color:Colors.grey))
       ),
     
      child: InkWell(
        splashColor: Colors.blueGrey,
        onTap: ()=>{},
        child: Container(
          height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(text,style:TextStyle(
                    fontSize: 16.0
                  ),),
                ),
              ],
            ),
            Icon(Icons.arrow_right)
          ],
        ),
      
      ),
    ),
     )
     );
     
  }
}