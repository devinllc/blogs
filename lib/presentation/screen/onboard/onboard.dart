part of 'onboard_imports.dart';

@RoutePage()
class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  OnboardViewModel onboardViewModel = OnboardViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Image.asset(
                    MyAssets.assetsImagesJournoLogo,
                    color: MyColors.prmaryColor,
                    height: 42.h,
                    width: 139.w,
                  ),
                  63.heightBox,
                  PageView(
                    controller: onboardViewModel.pageController,
                    children: const [
                      OnBoardFirst(),
                      onboardSecond(),
                      OnboardThird(),
                    ],
                  ).expand(),
                  // 61.h.heightBox,
                  PrimaryButton(
                      title: 'Get Started',
                      onPressed: () =>
                          AutoRouter.of(context).push(const AuthRoute()),
                      ),
                       PrimaryButton(
                      title: 'Get Request',
                      // onPressed: () =>
                      //     AutoRouter.of(context).push(const AuthRoute()),
                      onPressed: () {
                        TagsRepos().getAllTags();
                      }),
                       PrimaryButton(
                      title: 'Post Request',
                      // onPressed: () =>
                      //     AutoRouter.of(context).push(const AuthRoute()),
                      onPressed: () {
                        ApiClient().postResponse(path: ApiEndpointUrls.addTags, body: null);
                      }),
                  61.h.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      'Skip'
                          .text
                          .size(16.sp)
                          .fontWeight(FontWeight.w700)
                          .color(MyColors.prmaryColor)
                          .make(),
                      SmoothPageIndicator(
                          controller:
                              onboardViewModel.pageController, // PageController
                          count: 3,
                          effect: const WormEffect(
                              activeDotColor: MyColors.prmaryColor,
                              dotHeight: 12.0,
                              dotWidth: 12.0), // your preferred effect
                          onDotClicked: (index) {}),
                      'Next'
                          .text
                          .size(16.sp)
                          .fontWeight(FontWeight.w700)
                          .color(MyColors.prmaryColor)
                          .make()
                    ],
                  ),
                  20.h.heightBox
                ],
              ),
            ),
          ),
        ));
  }
}
