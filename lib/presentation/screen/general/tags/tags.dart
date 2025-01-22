part of 'tags_imports.dart';
class Tags extends StatefulWidget {
  const Tags({super.key});

  @override
  State<Tags> createState() => _TagsState();
}

class _TagsState extends State<Tags> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.prmaryColor,
        title: 'Tags'.text.size(16).make(),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(FeatherIcons.plus)),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: MyColors.white,
              child: ListTile(
                leading: '${index + 1}'.text.size(16).make(),
                title: 'Tags'.text.size(16).make(),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FeatherIcons.edit2,
                            color: MyColors.secondryColor,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FeatherIcons.trash,
                            color: Colors.red,
                          )),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                height: 10,
              ),
          itemCount: 13),
    );
  }
}