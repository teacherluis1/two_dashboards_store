import 'package:flutter/material.dart';

class Grid3 extends StatefulWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const Grid3({
    super.key,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  State<Grid3> createState() => _Grid3State();
}

class _Grid3State extends State<Grid3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ITLA Dashboard",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: [
          // Switch para cambiar el tema
          Switch(
            value: widget.isDarkMode,
            
            onChanged: widget.onThemeChanged, // Llama a la función del tema
            activeColor: Colors.white,
            
          ),
        ],
      ),
     
      body: SingleChildScrollView(
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            //resumen rapido
            const Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 1),
            child: Text("RESUMEN RÁPIDO",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
            ),




            Container(height: 200,
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(crossAxisCount: 2,
            childAspectRatio: 1.4, // leer mas acerca de esta
            physics: const NeverScrollableScrollPhysics(),// para desactivarlo

            children: [




              //CUADRO ROJO 1
              Card(
                color: Colors.red[500],
                child: Padding(padding: const EdgeInsets.fromLTRB(15, 6, 4, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    

                    //circulo que va en el primer cuadro
                    Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: const Icon(Icons.inventory, color: Colors.red, size: 50),                        
                        ),
                    const SizedBox(height: 22),
                    const Text("4",
                  
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                      ],
                    ),


                    const Text("Artículos en almacén",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                  ],
                ),
                ),
              ),


              //CUADRO ROJO 2
              Card(
                color: Colors.red[500],
                child: Padding(padding: const EdgeInsets.fromLTRB(15, 6, 4, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    

                    //circulo que va en el segundo cuadro
                    Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          child: const Icon(Icons.money_sharp, color: Colors.red, size: 50),                        
                        ),
                    const SizedBox(height: 22),
                    const Text("RD\$1,587.00",
                  
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                      ],
                    ),


                    const Text("Total en inventario",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                  ],
                ),
                ),
              ),







              
               
            ],          
            
            ),

            ),
            const SizedBox(height: 20),




            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 180,
              width: 3000,
              child: Card(
                color: Colors.red[500],
                child: Padding(padding: const EdgeInsets.fromLTRB(15, 6, 4, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
              
                    //circulo que va en el tercer cuadro
                    Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle
                              ),
                              child: const Icon(Icons.trending_down, color: Colors.red, size: 50),                        
                              
                            ),

                           
                            Container(
                              margin: const EdgeInsets.only(left: 100),
                              
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black,
                              ),                              
                              child: const Text("1 artículo",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                              ),),
                            )
                          ],
                        ),

                        
                    const SizedBox(height: 22),
                    const Text("Productos con bajo inventario",
                    
                  
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                      ],
                    ),              
                    const Text("Ver todos los productos con inventario bajo",
                    style: TextStyle(fontSize: 20, color: Colors.white70),
                    ),
                  ],
                ),
                ),
              ),
            ),

            const SizedBox(height: 20),


            const Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 1),
            child: Text("ARTÍCULOS RECIENTES",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
            ),
            const SizedBox(height: 5),

            // LOS ULTIMOS 4 CONTAINERS
            Container(height: 200,

              padding: const EdgeInsets.all(2.0),
              child: GridView.count(crossAxisCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Card(
                  color: Colors.red[500],
                  child: Column(
                    
                    children: [
                      Container(
                        width: double.infinity,
                      
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          
                        ),            
                                                
                      ),
                      Container(padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        borderRadius: BorderRadius.circular(4)

                      ),
                      
                        child: const Icon(Icons.insert_drive_file, color: Colors.red, size: 40,)),

                      const SizedBox(height: 10),                      
                      const Text("Artículo #3",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                      const Text("18 Unidades",
                      style: TextStyle(color: Colors.white70, fontSize: 10),),                     
                    ],
                  ),               
                ),
                

//este es el segundo card
                Card(
                  color: Colors.red[500],
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                      
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          
                        ),            
                                                
                      ),
                      Container(padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        borderRadius: BorderRadius.circular(4)

                      ),
                      
                        child: const Icon(Icons.insert_drive_file, color: Colors.red, size: 40,)),

                      const SizedBox(height: 10),                      
                      const Text("Artículo #2",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                      const Text("28 Unidades",
                      style: TextStyle(color: Colors.white70, fontSize: 10),),                     
                    ],
                  ),               
                ),
            
//este es el tercer card


                Card(
                  color: Colors.red[500],
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                      
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          
                        ),            
                                                
                      ),
                      Container(padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        borderRadius: BorderRadius.circular(4)

                      ),
                      
                        child: const Icon(Icons.insert_drive_file, color: Colors.red, size: 40,)),

                      const SizedBox(height: 10),                      
                      // ignore: prefer_const_constructors
                      Text("Artículo #1",
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                      const Text("3 Unidades",
                      style: TextStyle(color: Colors.white70, fontSize: 10),),                     
                    ],
                  ),               
                ),
//este es el ultimo card

                Card(
                  color: Colors.red[500],
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                      
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          
                        ),            
                                                
                      ),
                      Container(padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.white, 
                        borderRadius: BorderRadius.circular(4)

                      ),
                      
                        child: const Icon(Icons.insert_drive_file, color: Colors.red, size: 40,)),

                      const SizedBox(height: 10),                      
                      const Text("Artículo #4",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                      const Text("26 Unidades",
                      style: TextStyle(color: Colors.white70, fontSize: 10),),                     
                    ],
                  ),               
                ),
                const SizedBox(width: 10),

              ],     
     
              ),
            ),
            





            ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Dashboard",
          ),
                    BottomNavigationBarItem(
            icon: Icon(Icons.inventory),
            label: "Inventory",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),







      ],
      
      ),

    );
  }
}

