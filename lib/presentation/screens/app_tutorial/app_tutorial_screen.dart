import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

final slides = <SlideInfo>[
  SlideInfo(
    title: 'Busca la comida',
    caption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    imageUrl: 'assets/Images/1.png',
  ),
  SlideInfo(
    title: 'Entrega rápida',
    caption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    imageUrl: 'assets/Images/2.png',
  ),
  SlideInfo(
    title: 'Disfruta la comida',
    caption: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    imageUrl: 'assets/Images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const String name = 'app_tutorial_screen';
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;
      if (!isLastPage && page >= (slides.length - 1.5)) {
        setState(() {
          isLastPage = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              ...slides.map((slideData) => _Slide(slideData: slideData)),
            ],
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {},
              child: TextButton(
                onPressed: () => context.pop(),
                child: const Text('Saltar'),
              ),
            ),
          ),
          isLastPage
              ? Positioned(
                  bottom: 20,
                  right: 20,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(milliseconds: 500),
                    child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Empezar'),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final SlideInfo slideData;
  const _Slide({required this.slideData});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyMedium;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(slideData.imageUrl),
            const SizedBox(height: 20),
            Text(slideData.title, style: titleStyle),
            const SizedBox(height: 10),
            Text(slideData.caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
