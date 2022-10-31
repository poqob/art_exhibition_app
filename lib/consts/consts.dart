import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

///temporarirly created
NetworkImage img({int num = 0}) {
  const List<String> imgLinks = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRcb6ttZeCtn6fQLbkh_H0ElEN8WGZMcpLAbQ&usqp=CAU",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Calco_della_testa_di_satiro_attr._al_buonarroti_e_rubato_dal_bargello_nel_1944.JPG/394px-Calco_della_testa_di_satiro_attr._al_buonarroti_e_rubato_dal_bargello_nel_1944.JPG"
  ];
  return NetworkImage(imgLinks[num]);
}
