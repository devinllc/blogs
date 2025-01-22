part of 'login_imports.dart';

@RoutePage()
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.prmaryColor,
      body: FadedScaleAnimation(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 65.h),
                child: Image.asset(
                  MyAssets.assetsImagesJournoLogo,
                  height: 42.h,
                  width: 139.w,
                ).centered(),
              ),
              100.h.heightBox,
              Container(
                height: MediaQuery.sizeOf(context).height,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                    color: MyColors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      50.h.heightBox,
                      'Login'
                          .text
                          .size(18.sp)
                          .color(MyColors.prmaryColor)
                          .fontWeight(FontWeight.w700)
                          .makeCentered(),
                      48.h.heightBox,
                      'Email'.text.make(),
                      8.h.heightBox,
                      const VxTextField(
                        fillColor: Colors.transparent,
                        borderColor: MyColors.prmaryColor,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10,
                        hint: 'demo@gmail.com',
                        prefixIcon: Icon(Icons.email),
                      ),
                      20.h.heightBox,
                      'Password'.text.make(),
                      8.h.heightBox,
                      const VxTextField(
                        fillColor: Colors.transparent,
                        isPassword: true,
                        obscureText: true,
                        borderColor: MyColors.prmaryColor,
                        borderType: VxTextFieldBorderType.roundLine,
                        borderRadius: 10,
                        prefixIcon: Icon(Icons.lock),
                      ),
                      10.h.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 200.w,
                            child: CheckboxListTile(
                              value: false,
                              onChanged: (value) {},
                              title: 'Remember Me'
                                  .text
                                  .color(MyColors.prmaryColor)
                                  .size(14.sp)
                                  .make(),
                              contentPadding: EdgeInsets.zero,
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ),
                          'Forgot Password'
                              .text
                              .size(12.sp)
                              .color(MyColors.prmaryColor)
                              .fontWeight(FontWeight.w700)
                              .makeCentered(),
                        ],
                      ),
                      60.h.heightBox,
                      PrimaryButton(title: 'Login', onPressed: ()=>
                            AutoRouter.of(context).push(const GeneralRoute()),
                      ),
                      20.h.heightBox,
                      'Dont have an Account?'
                          .richText
                          .size(14.sp)
                          .semiBold
                          .color(MyColors.prmaryColor)
                          .withTextSpanChildren([
                         TextSpan(
                            text: ' Sign Up',
                             recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  AutoRouter.of(context).push(const SignupRoute()),
                            style: const TextStyle(fontWeight: FontWeight.w700))
                      ]).makeCentered(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
