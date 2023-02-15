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
              JobDetailItemData(
                icon: Icons.person,
                subtitle: data.booking.customer.name,
                title: 'Нэр',
              ),
              JobDetailItemData(
                icon: Icons.phone,
                subtitle: data.booking.customer.phone,
                title: 'Утас',
              ),
              JobDetailItemData(
                icon: Icons.email,
                subtitle: data.booking.customer.email,
                title: 'И-мэйл',
              ),
              JobDetailItemData(
                icon: Icons.access_time_filled,
                subtitle:
                    '${DateFormat('yyyy/MM/dd HH:mm').format(data.bookedStart)} - ${data.bookedEnd.hour.toString().padLeft(2, '0')}:${data.bookedEnd.minute.toString().padLeft(2, '0')}',
                title: 'Цаг захиалга',
              ),
              JobDetailItemData(
                icon: Icons.directions_car,
                subtitle:
                    '${data.booking.vehicle.manufacturer} / ${data.booking.vehicle.model} (${data.booking.vehicle.plateNumber})',
                title: 'Машин',
              ),
              JobDetailItemData(
                icon: Icons.settings,
                subtitle:
                    '${data.booking.vehicle.fuelType ?? '?'} / ${data.booking.vehicle.engineSize}',
                title: 'Хөдөлгүүр',
              )
            ].map((data) => JobDetailItem(data: data)).toList(),
            ElevatedButton(
              onPressed: () {
                showMaterialModalBottomSheet(
                  context: context,
                  builder: (context) =>
                      JobHistoryList(vin: data.booking.vehicle.vin),
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
