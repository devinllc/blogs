part of 'profile_imports.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MyColors.prmaryColor,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.logOut))
              .pOnly(right: 10),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 450.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
                color: MyColors.prmaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(MyAssets.assetsImagesFive),
                ),
                10.h.heightBox,
                'Mario'.text.bold.xl2.white.make(),
                'mario69@gmail.com'.text.xl.white.make(),
                20.h.heightBox,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus luctus urna sed urna ultricies ac tempor dui sagittis. In condimentum facilisis porta.'
                    .text
                    .xl
                    .center
                    .white
                    .make()
                    .pSymmetric(h: 20),
                30.h.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        '69'.text.xl3.white.bold.make(),
                        'Posts'.text.xl.white.bold.make(),
                      ],
                    ),
                    Column(
                      children: [
                        '6'.text.xl3.white.bold.make(),
                        'Following'.text.xl.white.bold.make(),
                      ],
                    ),
                    Column(
                      children: [
                        '9'.text.xl3.white.bold.make(),
                        'Follows'.text.xl.white.bold.make(),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          20.h.heightBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                'My Posts'.text.xl3.bold.make(),
                5.h.heightBox,
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: true,
                    
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          
                            crossAxisCount: 2, crossAxisSpacing: 10,mainAxisSpacing: 10,),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(MyAssets.assetsImagesNetflix).cornerRadius(10),
                          6.h.heightBox,
                          Row(
                           
                            children: [
                             'Space Falcon ghg Strat Sjskjasj sdjbjkjkd'
                                  .text
                                  .maxLines(2)
                                  .medium
                                  .make().expand(),
                                  IconButton(onPressed: (){}, icon: const Icon(FeatherIcons.moreVertical))
                          ],)
                        ],
                      );
                    })
              ],
            ),
          ),
        ],
      ),
    );
  }
}
