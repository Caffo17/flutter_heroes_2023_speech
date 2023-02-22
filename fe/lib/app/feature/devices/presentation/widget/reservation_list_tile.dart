import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/model/reservation.dart';

class ReservationListTile extends StatelessWidget {
  const ReservationListTile({
    super.key,
    required this.data,
  });

  final Reservation data;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      title: Text(
        data.userEmail,
        style: Theme.of(context).textTheme.headline6?.copyWith(
              color: Colors.black,
            ),
      ),
      subtitle: Text(
        '${DateFormat.yMd('it').format(data.startedAt)} - ${data.map(completed: (v) => DateFormat.yMd('it').format(v.finishedAt), ongoing: (_) => 'In corso')}',
        style: Theme.of(context).textTheme.headline6?.copyWith(
              color: Colors.black,
            ),
      ),
    );
  }
}
