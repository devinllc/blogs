part of 'widget_imports.dart';

class OnboardThird extends StatelessWidget {
  const OnboardThird({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/onboard3.png',
          height: 333.h,
          width: 333.w,
        ),
        'Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community'
            .text
            .size(15.sp)
            .align(TextAlign.center)
            .fontWeight(FontWeight.w500)
            .color(Colors.black)
            .make(),
      ],
    );
  }
}
