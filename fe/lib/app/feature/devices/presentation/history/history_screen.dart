import 'package:flutter/material.dart';

import '../../domain/model/device.dart';
import '../../domain/model/device_status_extension.dart';
import '../widget/reservation_list_tile.dart';

class DeviceHistoryParams {
  const DeviceHistoryParams({
    required this.device,
  });

  final Device device;
}

class DeviceHistoryScreen extends StatelessWidget {
  const DeviceHistoryScreen({
    super.key,
    required this.device,
  });

  final Device device;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Builder(
        builder: (context) {
          if (device.useHistory.isEmpty) {
            return _buildEmptyBody(context);
          } else {
            return _buildList();
          }
        },
      ),
    );
  }

  Widget _buildList() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: device.useHistory.length,
      itemBuilder: (context, index) {
        return ReservationListTile(data: device.useHistory[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }

  Widget _buildEmptyBody(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillViewport(
          delegate: SliverChildListDelegate.fixed(
            [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.history, size: 48),
                    const SizedBox(height: 12),
                    Text(
                      'No reservation yet',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    const SizedBox(height: 120),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Hero(
        tag: 'app_bar',
        child: AppBar(
          elevation: 0,
          backgroundColor: device.status.statusColor,
          leading: const BackButton(color: Colors.white),
          centerTitle: false,
          titleSpacing: 0,
          title: Text(
            device.name,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
