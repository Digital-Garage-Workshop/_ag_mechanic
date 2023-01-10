import 'package:flutter/material.dart';

import '/models/job_history.dart';

class JobHistoryItem extends StatelessWidget {
  const JobHistoryItem({super.key, required this.history});

  final JobHistory history;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Row(
            //   children: [
            //     Container(
            //       padding: const EdgeInsets.symmetric(
            //         horizontal: 8,
            //         vertical: 2,
            //       ),
            //       decoration: const ShapeDecoration(
            //         color: Colors.blue,
            //         shape: StadiumBorder(),
            //       ),
            //       child: Text(
            //         '${history.vehicle.manufacturer}/${history.vehicle.model}, ${history.vehicle.mileage}${history.vehicle.mileageUnit}',
            //         style: const TextStyle(color: Colors.white),
            //       ),
            //     )
            //   ],
            // ),
            // const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.location_pin, color: Theme.of(context).primaryColor),
                const SizedBox(width: 8),
                Text('${history.organization}, ${history.service}'),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.calendar_month,
                    color: Theme.of(context).primaryColor),
                const SizedBox(width: 8),
                Text(
                  '${history.date.year}-${history.date.month}-${history.date.day}',
                )
              ],
            ),
            // const SizedBox(height: 8),
            // Row(
            //   children: [
            //     Text(history.job),
            //   ],
            // ),
            const SizedBox(height: 8),
            Row(
              children: [
                Icon(Icons.edit_note, color: Theme.of(context).primaryColor),
                const SizedBox(width: 8),
                Text(history.memo),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
