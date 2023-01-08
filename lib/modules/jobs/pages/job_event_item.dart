import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '/models/job.dart';

class JobEventItem extends StatelessWidget {
  const JobEventItem({super.key, required this.data});

  final Job data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: data.status.color,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        onTap: () => context.push('/jobs/${data.id}'),
        leading: Text(
          data.plateNumber,
          style: TextStyle(color: data.status.color),
        ),
        trailing: Icon(
          data.status.icon,
          color: data.status.color,
        ),
        subtitle: Text(
          '${data.startTime} - ${data.endTime}',
          style: TextStyle(color: data.status.color),
        ),
        title: Text(
          DateFormat('yyyy/MM/dd').format(data.date),
          style: TextStyle(color: data.status.color),
        ),
      ),
    );
  }
}
