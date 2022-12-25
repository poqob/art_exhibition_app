import 'package:art_exhibition_app/utils/Todo.dart';
import 'package:flutter/material.dart';

@Todo('''
Avatars sinifinin yapici metodu db'den gelecek olan avatar id ve avatar linklerini barindiracak.
Avatars ustune tiklandiginda ic avaatarin radyusu degisecek.
gecici bir yerde id'si saklanacak signUp butonuna basilinca diger alanlardaki verilerle birlikte db'ye kayit olmak uzere yollanacak.
''')
class Avatars extends StatelessWidget {
  const Avatars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: CircleAvatar(
        backgroundColor: Colors.redAccent,
        radius: 35.0,
        child: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          backgroundImage: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlqrDlqPwLD8UimMwm4dauux4LVd4xN9SZ1A&usqp=CAU")
              .image,
          radius: 30.0,
        ),
      ),
    );
  }
}

class SelectAvatarRow extends StatefulWidget {
  const SelectAvatarRow({Key? key}) : super(key: key);

  @override
  State<SelectAvatarRow> createState() => _SelectAvatarRowState();
}

class _SelectAvatarRowState extends State<SelectAvatarRow> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: 85.0, maxWidth: MediaQuery.of(context).size.width),
      child: ListView.builder(
        itemCount: 11,
        itemBuilder: (context, index) => const Avatars(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
