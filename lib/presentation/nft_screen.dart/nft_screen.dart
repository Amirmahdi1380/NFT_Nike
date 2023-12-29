import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class NftScreen extends StatefulWidget {
  final String imagePath;
  final String titleName;
  final String tag;
  final String time;
  final String price;

  const NftScreen(
      this.imagePath, this.titleName, this.tag, this.time, this.price,
      {super.key});

  @override
  State<NftScreen> createState() => _NftScreenState();
}

class _NftScreenState extends State<NftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/NFT.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: 70,
            ),
            const Header(),
            title(context, widget.titleName),
            const indicator(),
            Hero(
              tag: widget.tag,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.asset(widget.imagePath),
                  ),
                  Positioned(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 122.12,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.black54, Colors.transparent]),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25,
                    left: 20,
                    child: Container(
                      width: 55,
                      height: 55,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF94C706),
                        shape: OvalBorder(),
                      ),
                      child: const Icon(
                        Icons.ios_share,
                        size: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 25,
                    child: Column(
                      children: [
                        Text(
                          'tempo restante',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          widget.time,
                          style: Theme.of(context).textTheme.titleMedium,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    child: GlassContainer.clearGlass(
                      height: 160,
                      width: 350,
                      blur: 14,
                      color: Colors.black12,
                      borderColor: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      child: Column(
                        children: [
                          Text(
                            'Greatest offer',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Text(
                            widget.price,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: const Size(200, 50),
                                backgroundColor: const Color(0xFF94C706),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {},
                            child: Text(
                              'GIVE OFFER',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget title(BuildContext context, String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NFT',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                'TM',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            'Andrey Prokopenko',
            style: Theme.of(context).textTheme.bodySmall,
          )
        ],
      ),
    );
  }
}

class indicator extends StatelessWidget {
  const indicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 2.58,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 30,
            ),
          ),
          const Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
            size: 32,
          )
        ],
      ),
    );
  }
}
