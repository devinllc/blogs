part of 'home_imports.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Image.asset(MyAssets.assetsImagesNetflix).cornerRadius(20),
            20.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                'Latest Posts'.text.size(16.sp).make(),
                'See All'.text.size(16.sp).make(),
              ],
            ),
            10.h.heightBox,
            ListView.separated(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => SizedBox(
                      height: 20.h,
                    ),
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      GestureDetector(
                        onTap: ()=>AutoRouter.of(context).push(const HomeDetailsRoute()),
                        child: Image.asset(
                          MyAssets.assetsImagesNetflix,
                          height: 120.h,
                          width: 180.w,
                          fit: BoxFit.cover,
                        ).cornerRadius(20.r),
                      ),
                      10.w.widthBox,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'Space Falcon ghg Strat sjskj asj  '
                              .text
                              .size(16.sp)
                              .bold
                              .maxLines(2)
                              .make(),
                          6.h.heightBox,
                          Row(
                            children: [
                              const Icon(FeatherIcons.clock),
                              5.w.widthBox,
                              '6 Months Ago'.text.make(),
                            ],
                          ),
                          6.h.heightBox,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              '69 Views'.text.make(),
                              const Icon(FeatherIcons.bookmark),
                            ],
                          ),
                        ],
                      ).expand(),
                    ],
                  );
                }),
          ],
        ),
      ),
    ));
  }
}
