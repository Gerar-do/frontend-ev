import 'package:flutter/material.dart';
import 'package:demo_integrador/widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  // Lista de URLs de imágenes para el ListView
  final List<String> imageUrls = [
    'https://images.imagenmia.com/model_version/e14877b49936ab73eb9e26b78cf70d36e50fff33d21a44fcd72254bca11c7713/1723814521633-output.jpg',
    'https://images.unsplash.com/photo-1693469529831-d47348d2d20b?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://plus.unsplash.com/premium_photo-1667861381644-3a29c049b6ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),

      endDrawer: Drawer(        // aqui empieza mi menu desplegable
        child: ListView(
          padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                  accountName:
                  const Text("Luis miguel"), // se moestara nombre del usuario
                  accountEmail:
                  const Text("Luismi@gmail.com"), // se moestara correo del usuario
                currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(  // se moestara imagen de perfil del usuario por s3
                    'https://images.imagenmia.com/model_version/e14877b49936ab73eb9e26b78cf70d36e50fff33d21a44fcd72254bca11c7713/1723814521633-output.jpg',
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/foondoN.jpg',
                      ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

               const ListTile(  // list del nav
                leading: Icon(
                  Icons.person,
                ),
                 title: Text("Perfil"),
              ),
              const ListTile(
                leading: Icon(
                  Icons.assistant,
                  color: Colors.indigo,
                ),
                title: Text("Boot EV"),
              ),
              const ListTile(
                leading: Icon(
                    Icons.exit_to_app,
                  color: Colors.red,
                ),
                title: Text("Cerrar sesión"),
              ),
            ],
        ),
      ),



      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 196,
                      child: ListView.builder(
                        itemCount: imageUrls.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              width: 155,
                              padding: const EdgeInsets.all(20),
                              margin: const EdgeInsets.only(left: 15),
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0xFF3F3E41),
                                    blurRadius: 4,
                                  )
                                ],
                                image: DecorationImage(
                                  image: NetworkImage(imageUrls[index]),
                                  fit: BoxFit.cover,
                                  opacity: 0.7,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
