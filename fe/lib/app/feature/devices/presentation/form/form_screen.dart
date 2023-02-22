// ignore_for_file: inference_failure_on_function_invocation

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

import '../../../../core/router/app_navigator.dart';
import '../../../../core/widget/app_button.dart';
import '../../../../core/widget/app_dropdown.dart';
import '../../../../core/widget/app_text_field.dart';
import '../../domain/model/office_extension.dart';
import '../../domain/model/os_extension.dart';
import 'form_cubit.dart';
import 'form_state.dart';

class DeviceFormScreen extends StatelessWidget {
  const DeviceFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeviceFormCubit, DeviceFormState>(
      builder: (context, state) {
        return Scaffold(
          appBar: _buildAppBar(context, state),
          body: _buildBody(context, state),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, DeviceFormState state) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: _buildForm(context, state),
            ),
            AppButton(
              onPressed: context.read<DeviceFormCubit>().onSaveTap,
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context, DeviceFormState state) {
    final DeviceFormCubit cubit = context.read<DeviceFormCubit>();
    const double separator = 12;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Form(
        key: cubit.formKey,
        child: Column(
          children: [
            AppTextField(
              controller: cubit.imeiTEC,
              focusNode: cubit.imeiFN,
              label: 'Imei',
              validator: cubit.imeiValidator,
              maxLength: 15,
            ),
            const SizedBox(height: separator),
            AppTextField(
              controller: cubit.modelTEC,
              focusNode: cubit.modelFN,
              label: 'Model',
              validator: cubit.modelValidator,
            ),
            const SizedBox(height: separator),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: AppDropdown<Os>(
                    value: state.map(create: (v) => v.osType, edit: (v) => v.device.osType),
                    items: Os.values,
                    onChanged: cubit.onOsChanged,
                    valueShownBuilder: (v) => v.translate(),
                    label: 'OS',
                    validator: cubit.osValidator,
                  ),
                ),
                const SizedBox(width: 16),
                Flexible(
                  flex: 3,
                  child: AppTextField(
                    controller: cubit.osVersionTEC,
                    focusNode: cubit.osVersionFN,
                    label: 'OS version',
                    validator: cubit.osVersionValidator,
                  ),
                ),
              ],
            ),
            const SizedBox(height: separator),
            AppTextField(
              controller: cubit.pinTEC,
              focusNode: cubit.pinFN,
              label: 'Pin',
              validator: cubit.pinValidator,
            ),
            const SizedBox(height: separator),
            AppTextField(
              controller: cubit.accountEmailTEC,
              focusNode: cubit.accountEmailFN,
              label: "Account's email",
              validator: cubit.accountEmailValidator,
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: separator),
            AppTextField(
              controller: cubit.accountPswTEC,
              focusNode: cubit.accountPswFN,
              label: "Account's password",
              validator: cubit.accountPswValidator,
            ),
            const SizedBox(height: separator),
            AppDropdown<Office>(
              value: state.map(create: (v) => v.location, edit: (v) => v.device.location),
              items: Office.values,
              onChanged: cubit.onLocationChanged,
              valueShownBuilder: (v) => v.translate(),
              label: 'Office',
              validator: cubit.locationValidator,
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(
    BuildContext context,
    DeviceFormState state,
  ) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Hero(
        tag: 'app_bar',
        child: AppBar(
          elevation: 0,
          leading: Container(),
          leadingWidth: 0,
          centerTitle: false,
          title: Text(
            state.map(
              create: (_) => 'New device',
              edit: (v) => v.device.name,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => AppNavigator().pop(),
            )
          ],
        ),
      ),
    );
  }
}
