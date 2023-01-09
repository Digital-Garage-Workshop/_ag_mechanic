import 'package:flutter/material.dart';

class DetailItemData {
  const DetailItemData({
    required this.icon,
    required this.subtitle,
    required this.title,
  });

  final IconData icon;
  final String subtitle;
  final String title;
}

class DetailItem extends StatelessWidget {
  const DetailItem({
    super.key,
    required this.data,
  });

  final DetailItemData data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        data.icon,
        color: Colors.blue,
        size: 32,
      ),
      subtitle: Text(
        data.subtitle,
        // style: TextStyle(color: data.status.color),
      ),
      title: Text(
        data.title,
        // style: TextStyle(color: data.status.color),
      ),
    );
  }
}
