import 'package:flutter/material.dart';

class MyHaderDrawer extends StatefulWidget {
  const MyHaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHaderDrawerState createState() => _MyHaderDrawerState();
}

class _MyHaderDrawerState extends State<MyHaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade700,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 70,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://scontent.fdac27-1.fna.fbcdn.net/v/t39.30808-6/271130834_3006376209676034_2589065860373323262_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGOfiEZTl4E5XeBLc87y-Lt-9PL44ACcOP708vjgAJw4zaAQcek7Uf4yoxpf2huDTJGuCQ-s7mfs39VxeDZV7jG&_nc_ohc=P9N3qjpuw-UAX97eKXN&_nc_oc=AQnUDLuPmbVX5RSA6WuTv8OOhnyJ22l1E1iZGtY1zGqHCG6Jnf4kITyaC9FgEsNHUTk&_nc_ht=scontent.fdac27-1.fna&oh=00_AT9Feqe99mlxy46BIV0tB5y6Xni08pLtFEV9ZTsC4rD1QQ&oe=61E95B68"))),
          ),
          const Text(
            "Md Ashrafuzzaman",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "assrafuzzamans@gmail.com",
            style: TextStyle(color: Colors.grey.shade400, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
