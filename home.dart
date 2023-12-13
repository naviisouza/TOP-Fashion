import 'package:flutter/material.dart';
import 'package:trabalho/pages/SaibaMais.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: ButtonNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 114, 189, 204),
            ),
          ),
          Container(
            height: 40,
            child: TextButton(
              child: Text(
                "Enviar sugestão",
                textAlign: TextAlign.center,
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SaibaMais(),
                  ),
                )
              },
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 47, 172, 197),
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/menu.png"),
                    ),
                  ),
                  Text("Welcome world \nof fashion!!!",
                      style: Theme.of(context).textTheme.displaySmall),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        icon: Image.asset("assets/pesquisar.png"),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Recommended Clothing",
                          imagens: "assets/roupas.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Recommended Accessories",
                          imagens: "assets/acessories.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Recommended Shoes",
                          imagens: "assets/shoes.png",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Recommended Bags",
                          imagens: "assets/bags.png",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonNavBar extends StatelessWidget {
  const ButtonNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottonNavItem(
            title1: "Shopping List",
            imagens1: "assets/lista.png",
            press1: () {},
          ),
          BottonNavItem(
            title1: "Ideas",
            imagens1: "assets/ideas.png",
            press1: () {},
          ),
          BottonNavItem(
            title1: "Settings",
            imagens1: "assets/config.png",
            press1: () {},
          ),
        ],
      ),
    );
  }
}

class BottonNavItem extends StatelessWidget {
  final String imagens1;
  final String title1;
  final Function press1;
  final bool ideas;

  const BottonNavItem({
    super.key,
    required this.imagens1,
    required this.title1,
    required this.press1,
    this.ideas = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(imagens1),
          Text(title1),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imagens;
  final String title;
  final Function press;

  const CategoryCard({
    super.key,
    required this.imagens,
    required this.title,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Image.asset(imagens),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
