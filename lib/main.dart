import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {

  Widget _getChip(String value,int background){

    return Chip(

      label: Text('${value} Kg' , style: TextStyle(
          color: Colors.white
      ),),
      backgroundColor: background==0 ?  Colors.amber.shade300 : Colors.purple.shade900,
    );
  }

  Widget _getContainer(BuildContext context, IconData iconData, String text, int border){
    return Container(
      margin: EdgeInsets.all(3),
      child: ClipRRect(

        borderRadius: border==1 ? BorderRadius.only(
          topLeft:  Radius.circular(5) ,
          bottomLeft:Radius.circular((5)) ,

        ): border==2 ? BorderRadius.only(
          topRight: Radius.circular(5) ,
          bottomRight: Radius.circular((5)) ,

        ):BorderRadius.only(
          topRight: Radius.circular(0) ,
          bottomRight:Radius.circular((0))

        ),
        child: Container(
//        margin: EdgeInsets.all(2),
          height: MediaQuery.of(context).size.height*0.1,
          width: MediaQuery.of(context).size.width * 0.27,
          decoration: BoxDecoration(
              color: Colors.black38
          ),

          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Icon(iconData,size: 40,color: Colors.white38,),
                  Text(text,style: TextStyle(color: Colors.white,fontSize: 20),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade900,
    appBar: AppBar(

      title: Text("Flutter Layout"),
    ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(

      crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Text("Fruits Cake", style: TextStyle(
                color: Colors.white,
                fontSize: 30,




              ), ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.center,
              child: Text("Strawbery & Kiwi Special", style: TextStyle(
                color: Colors.amber.shade500,
                fontSize: 15,




              ), ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                this._getChip("1",0),
                this._getChip("2",1),
                this._getChip("3",1),
                this._getChip("4",1),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),

                      ),

                      child: Image.asset('Asset/Image/photo-1504674900247-0877df9cc836.jpg',fit: BoxFit.fill,)  ),

                  Container(
                    child: Column(
                      children: [
                    Icon(Icons.add,color: Colors.white,size: 30,),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.08,

                          decoration: BoxDecoration(
                            color: Colors.amber.shade500,
                            borderRadius: BorderRadius.circular(100)
                          ),
                          child: Center(
                            child: Text("1",style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),),
                          ),
                        ),
                        Icon(Icons.minimize,color: Colors.white,size: 30,),

                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("\$84", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                Text(".99",style: TextStyle(
                  color: Colors.white,
                  fontSize: 10
                ),),

              ],
            ),
        SizedBox(
              height: 4,
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             this._getContainer(context, Icons.eco_outlined, "Eggs",1),
                this._getContainer(context, Icons.eco_outlined, "Eggs",0),
                this._getContainer(context, Icons.eco_outlined, "Eggs",2),

              ],
            ),
            SizedBox(height:5 ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(

                  child: Icon(Icons.ballot,size:MediaQuery.of(context).size.height*0.2,color: Colors.white38,),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("DELIVERY", style: TextStyle(color: Colors.white),),
                    Text("45, Amarlands",style: TextStyle(color: Colors.white)),
                    Text("Nr , Hamor Road , London",style: TextStyle(color: Colors.white)),

                  ],
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}
