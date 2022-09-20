import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:raizak_aplikasi_restoran/local_resto.dart';

class TampilanList extends StatelessWidget {
  const TampilanList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildList(context),
    );
  }

  Widget _buildList(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('aset/local_restaurant.json'),
      builder: (context, snapshot) {
        final List<Restaurant> resto = parseRestaurant(snapshot.data);
        return ListView.builder(
          itemCount: resto.length,
          itemBuilder: (context, index) {
            return _buildRestoItem(context, resto[index]);
          },
        );
      },
    );
  }

  Widget _buildRestoItem(BuildContext context, Restaurant resto) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.only(right: 40.0, top: 50.0),
          child: Text(
            "Restaurant",
            style: TextStyle(
                fontSize: 30.0
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
                "recomendation restauran for you"
            )
        ),
      ],
    );
  }
}