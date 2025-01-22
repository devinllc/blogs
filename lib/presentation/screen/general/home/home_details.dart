part of 'home_imports.dart';

@RoutePage()
class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            'Space Falcon ghg Strat Sjskj asj sdjbjkjkd'.text.ellipsis.make(),
      ),
      body: ListView(
        children: [
          Image.asset(MyAssets.assetsImagesNetflix),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                10.h.heightBox,
                'Space Falcon ghg Strat Sjskjasj sdjbjkjkd'
                    .text
                    .bold
                    .xl2
                    .make(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(FeatherIcons.eye),
                    8.w.widthBox,
                    '147 Views'.text.make(),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.thumbsUp,
                          color: MyColors.secondryColor,
                        )),
                    '0'.text.make(),
                    8.w.widthBox,
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.thumbsDown,
                          color: Colors.red,
                        )),
                    '0'.text.make(),
                    8.w.widthBox,
                  ],
                ),
                """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo in libero. Vestibulum mollis mauris enim. Morbi euismod magna ac lorem rutrum elementum. Donec viverra auctor lobortis. Pellentesque eu est a nulla placerat dignissim. Morbi a enim in magna semper bibendum. Etiam scelerisque, nunc ac egestas consequat, odio nibh euismod nulla.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta. Sed nec diam eu diam mattis viverra. Nulla fringilla, orci ac euismod semper, magna diam porttitor mauris, quis sollicitudin sapien justo in libero. Vestibulum mollis mauris enim. Morbi euismod magna ac lorem rutrum elementum. Donec viverra auctor lobortis. Pellentesque eu est a nulla placerat dignissim. Morbi a enim in magna semper bibendum. Etiam scelerisque, nunc ac egestas consequat, odio nibh euismod nulla."""
                    .text
                    .make(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
