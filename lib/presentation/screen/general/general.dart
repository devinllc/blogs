part of 'general_imports.dart';

@RoutePage()
class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
  List<TabItem> items = [
    const TabItem(
      icon: FeatherIcons.home,
      // title: 'Home',
    ),
    const TabItem(
      icon: FeatherIcons.tag,
      // title: 'Shop',
    ),
    const TabItem(
      icon: FeatherIcons.plus,
      // title: 'Wishlist',
    ),
    const TabItem(
      icon: FeatherIcons.hash,
      // title: 'Cart',
    ),
    const TabItem(
      icon: FeatherIcons.user,
      // title: 'profile',
    ),
  ];
  int visit = 0;

  List<Widget> pages = [
    const Home(),
    const Categories(),
    const AddPost(),
    const Tags(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(visit),
      bottomNavigationBar: BottomBarCreative(
        items: items,
        backgroundColor: MyColors.white,
        color: MyColors.prmaryColor.withOpacity(0.5),
        colorSelected: MyColors.prmaryColor,
        indexSelected: visit,
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
