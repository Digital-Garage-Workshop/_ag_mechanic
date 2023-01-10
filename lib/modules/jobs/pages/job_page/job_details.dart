import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '/models/job.dart';
import 'job_detail_item.dart';
import 'job_history_list.dart';

class JobDetails extends StatelessWidget {
  const JobDetails({super.key, required this.data});

  final Job data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            ...[
              const JobDetailItemData(
                icon: Icons.phone,
                subtitle: "99505251",
                title: "Утас",
              ),
              const JobDetailItemData(
                icon: Icons.email,
                subtitle: "tuugii.eclips@yahoo.com",
                title: "И-мэйл",
              ),
              JobDetailItemData(
                icon: Icons.access_time_filled,
                subtitle:
                    '${DateFormat("yyyy/MM/dd").format(data.date)} ${data.startTime} - ${data.endTime}',
                title: "Цаг захиалга",
              ),
              JobDetailItemData(
                icon: Icons.directions_car,
                subtitle: 'Toyota / Prius (${data.plateNumber})',
                title: "Машин",
              ),
              const JobDetailItemData(
                icon: Icons.settings,
                subtitle: "Бензин - Цахилгаан / 1797",
                title: "Хөдөлгүүр",
              )
            ].map((data) => JobDetailItem(data: data)).toList(),
            ElevatedButton(
              onPressed: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) => JobHistoryList(jid: data.id),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.car_repair),
                  SizedBox(width: 8),
                  Text('Машины засварын түүх')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
