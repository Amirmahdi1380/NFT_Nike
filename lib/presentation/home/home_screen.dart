import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:glass_kit/glass_kit.dart';

import '../widget/button_chip.dart';
import '../widget/container_nft.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      //extendBody: true,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/Fundo.jpg'),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const headerWidget(),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    GlassContainer.clearGlass(
                      height: 40,
                      width: 89,
                      color: const Color(0xff95C706),
                      //blur: 10,
                      borderRadius: BorderRadius.circular(20),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          'assets/images/chip-nike.svg',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    createCustomGlassContainer(
                        context: context, text: 'Photography'),
                    const SizedBox(
                      width: 20,
                    ),
                    createCustomGlassContainer(
                        context: context, text: 'Editorial'),
                    const SizedBox(
                      width: 20,
                    ),
                    createCustomGlassContainer(context: context, text: 'Games'),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    Text(
                      'TRENDING',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 290,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      createCustomCard(
                          context: context,
                          width: 217,
                          title1: 'PICKLE RICK',
                          title2: 'Konstantin Stupa',
                          title3: '0.90 ETH',
                          time: '8h49min',
                          title4: 'oferta atual',
                          imagePath: 'assets/images/Foto.jpg',
                          heroTag: 'foto'),
                      const SizedBox(
                        width: 10,
                      ),
                      createCustomCard(
                          context: context,
                          width: 200,
                          title1: 'SUNLIT',
                          title2: 'Darius Anton',
                          title3: '2.98 ETH',
                          time: '2h23min',
                          title4: 'oferta atual',
                          imagePath: 'assets/images/sunlit.jpg',
                          heroTag: 'sunlit'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    Text(
                      'RECOMMENDED',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  height: 290,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      createCustomCard(
                          context: context,
                          width: 217,
                          title1: 'AVOCADO',
                          title2: 'Andrey Prokopenko',
                          title3: '1.92 ETH',
                          time: '1h49min',
                          title4: 'oferta atual',
                          imagePath: 'assets/images/avocado.jpg',
                          heroTag: 'avocado'),
                      const SizedBox(
                        width: 10,
                      ),
                      createCustomCard(
                          context: context,
                          width: 200,
                          title1: 'GROWING UP',
                          title2: 'Andrey Prokopenko',
                          title3: '3.98 ETH',
                          time: '13min',
                          title4: 'oferta atual',
                          imagePath: 'assets/images/grow.jpg',
                          heroTag: 'grow'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class headerWidget extends StatelessWidget {
  const headerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NFT',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'TM',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
