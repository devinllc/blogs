part of 'categories_imports.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _GeneralState();
}

class _GeneralState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        backgroundColor: MyColors.prmaryColor,
        title: 'Categories'.text.size(16).make(),
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
                title: 'Enter'.text.size(16).make(),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FeatherIcons.edit,
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
