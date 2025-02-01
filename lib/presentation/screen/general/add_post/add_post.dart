part of 'add_post_imports.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _GeneralState();
}

class _GeneralState extends State<AddPost> {
  final QuillController _controller = QuillController.basic();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: MyColors.prmaryColor,
          automaticallyImplyLeading: false,
          title: 'Add Post'.text.white.make(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  FeatherIcons.check,
                  color: MyColors.white,
                )).pOnly(right: 10),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(MyAssets.assetsImagesFive),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      FeatherIcons.camera,
                      color: MyColors.prmaryColor,
                    ))
              ],
            ),
            20.h.heightBox,
            const VxTextField(
              fillColor: Colors.transparent,
              borderColor: MyColors.prmaryColor,
              borderType: VxTextFieldBorderType.roundLine,
              borderRadius: 10,
              hint: 'Title',
            ),
            10.h.heightBox,
            const VxTextField(
              fillColor: Colors.transparent,
              borderColor: MyColors.prmaryColor,
              borderType: VxTextFieldBorderType.roundLine,
              borderRadius: 10,
              hint: 'Slug',
            ),
            20.h.heightBox,
            Container(
              height: 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Tags'.text.make(),
                  const Icon(FeatherIcons.chevronRight),
                ],
              ),
            ),
            20.h.heightBox,
            Container(
              height: 60,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'Categories'.text.make(),
                  const Icon(FeatherIcons.chevronRight),
                ],
              ),
            ),
            20.h.heightBox,
              SizedBox(
              height: 500,
              child: QuillEditor.basic(
                controller: _controller,
                configurations: const QuillEditorConfigurations(),
              ),
            ),
            QuillSimpleToolbar(
              controller: _controller,
              configurations: const QuillSimpleToolbarConfigurations(),
            ),
          
          ],
        ));
  }
}
