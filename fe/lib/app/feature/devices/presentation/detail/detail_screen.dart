import 'package:auto_size_text/auto_size_text.dart';
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

import '../../../../core/widget/app_button.dart';
import '../../../../utils/session_manager.dart';
import '../../domain/model/device_status_extension.dart';
import '../../domain/model/office_extension.dart';
import 'detail_cubit.dart';
import 'detail_state.dart';

class DeviceDetailScreen extends StatelessWidget {
  const DeviceDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceDetailCubit, DeviceDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: _buildAppBar(context, state),
          body: state.map(
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (v) => _buildBody(context, v),
          ),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, LoadedDeviceDetailState state) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildKeyValueRow(
            context: context,
            key: 'IMEI: ',
            value: state.device.udid,
          ),
          _buildKeyValueRow(
            context: context,
            key: 'Location: ',
            value: state.device.location.translate(),
          ),
          _buildKeyValueRow(
            context: context,
            key: 'Status: ',
            value: state.device.status.translate(),
            keyColor: state.device.status.statusColor,
          ),
          _buildKeyValueRow(
            context: context,
            key: 'OS Version: ',
            value: state.device.osVersion,
          ),
          _buildKeyValueRow(
            context: context,
            key: 'PIN: ',
            value: state.device.pin,
          ),
          _buildKeyValueRow(
            context: context,
            key: 'Account: ',
            value: state.device.accountEmail,
          ),
          _buildKeyValueRow(
            context: context,
            key: 'Password: ',
            value: state.device.accountPassword,
          ),
          const SizedBox(height: 60),
          AppButton.icon(
            onPressed: context.read<DeviceDetailCubit>().onDeviceButtonTap,
            icon: state.device.status.statusIcon,
            backgroundColor: state.device.status.statusColor,
            overlayColor: state.device.status.statusColorAccent,
            textColor: Colors.white,
            child: Text(state.device.status.statusButtonText),
          ),
          const SizedBox(height: 20),
          AppButton.icon(
            onPressed: context.read<DeviceDetailCubit>().goToHistory,
            icon: CommunityMaterialIcons.history,
            backgroundColor: Colors.white,
            overlayColor: state.device.status.statusColorAccent,
            textColor: Colors.black,
            child: const Text('Visualizza storico utilizzi'),
          ),
        ],
      ),
    );
  }

  Widget _buildKeyValueRow({
    required BuildContext context,
    required String key,
    String? value,
    Color? keyColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            key,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Flexible(
            child: AutoSizeText(
              value ?? '-',
              maxLines: 1,
              minFontSize: 18,
              maxFontSize: 24,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: keyColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    DeviceDetailState state,
  ) {
    final DeviceDetailCubit cubit = context.read<DeviceDetailCubit>();

    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Hero(
        tag: 'app_bar',
        child: AppBar(
          elevation: 0,
          backgroundColor: state.map(
            loading: (_) => Colors.blue,
            loaded: (v) => v.device.status.statusColor,
          ),
          leading: const BackButton(color: Colors.white),
          centerTitle: false,
          titleSpacing: 0,
          title: Text(
            state.deviceName,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          actions: !SessionManager().isAdmin && state is! LoadedDeviceDetailState
              ? []
              : [
                  IconButton(
                    icon: const Icon(
                      CommunityMaterialIcons.square_edit_outline,
                      color: Colors.white,
                    ),
                    onPressed: cubit.onEditTap,
                  ),
                  IconButton(
                    icon: const Icon(
                      CommunityMaterialIcons.delete,
                      color: Colors.white,
                    ),
                    onPressed: cubit.onDeleteTap,
                  ),
                  if (state is LoadedDeviceDetailState)
                    state.device.status != DeviceStatus.notAvailable
                        ? IconButton(
                            icon: const Icon(
                              CommunityMaterialIcons.alert_decagram,
                              color: Colors.white,
                            ),
                            onPressed: cubit.onCrashTap,
                          )
                        : IconButton(
                            icon: const Icon(
                              CommunityMaterialIcons.shield_check,
                              color: Colors.white,
                            ),
                            onPressed: cubit.onRepairTap,
                          ),
                ],
        ),
      ),
    );
  }
}
