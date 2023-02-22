import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ntt_device_models/ntt_device_models.dart';

import '../../../../utils/session_manager.dart';
import '../../domain/model/device.dart';
import '../../domain/model/os_extension.dart';
import '../widget/device_list_tile.dart';
import '../widget/device_status_legend.dart';
import '../widget/filters_drawer.dart';
import 'list_cubit.dart';
import 'list_state.dart';

class DeviceListScreen extends StatefulWidget {
  const DeviceListScreen({super.key});

  @override
  State<DeviceListScreen> createState() => _DeviceListScreenState();
}

class _DeviceListScreenState extends State<DeviceListScreen> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: context.read<DeviceListCubit>().scaffoldKey,
        appBar: _buildAppBar(context),
        body: BlocBuilder<DeviceListCubit, DeviceListState>(
          builder: _buildBody,
        ),
        drawerEnableOpenDragGesture: false,
        drawer: BlocBuilder<DeviceListCubit, DeviceListState>(
          builder: (context, state) => FiltersDrawer(
            initialFilter: state.filters,
            onFiltersApplied: context.read<DeviceListCubit>().onFiltersChanged,
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, DeviceListState state) {
    return Stack(
      children: <Widget>[
        Column(
          children: [
            ColoredBox(
              color: Colors.blue,
              child: TabBar(
                controller: tabController,
                indicatorColor: Colors.white,
                tabs: const [
                  Tab(
                    icon: Icon(
                      Icons.android,
                      size: 24,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Tab(
                    icon: Icon(
                      CommunityMaterialIcons.apple,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: Os.values
                    .map(
                      (e) => state.map(
                        (v) => _buildDevicesList(context, e, v),
                        loading: (_) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                        error: (_) => _buildErrorPage(context),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
        const Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: DeviceStatusLegend(),
          ),
        ),
      ],
    );
  }

  Widget _buildErrorPage(BuildContext context) {
    final DeviceListCubit cubit = context.read<DeviceListCubit>();

    return RefreshIndicator(
      onRefresh: () async => cubit.fetchDevices(),
      child: CustomScrollView(
        slivers: [
          SliverFillViewport(
            delegate: SliverChildListDelegate.fixed(
              [
                Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline_rounded, size: 48),
                      const SizedBox(height: 12),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'An error occurred\n',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            TextSpan(
                              text: 'Pull to refresh',
                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDevicesList(
    BuildContext context,
    Os os,
    FullDeviceListState state,
  ) {
    final DeviceListCubit cubit = context.read<DeviceListCubit>();
    final List<Device> list = state.devicesMap[os] ?? [];

    if (list.isNotEmpty) {
      return RefreshIndicator(
        onRefresh: () async => cubit.fetchDevices(),
        child: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: list.length,
          itemBuilder: (context, i) => DeviceListTile(
            device: list[i],
            onTap: () => cubit.onDeviceTap(list[i]),
          ),
          separatorBuilder: (context, i) => const Divider(),
        ),
      );
    } else {
      return RefreshIndicator(
        onRefresh: () async => cubit.fetchDevices(),
        child: CustomScrollView(
          slivers: [
            SliverFillViewport(
              delegate: SliverChildListDelegate.fixed(
                [
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.no_cell_outlined, size: 48),
                        const SizedBox(height: 12),
                        Text(
                          'No ${os.translate()} devices',
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
        ),
      );
    }
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Hero(
        tag: 'app_bar',
        child: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
          automaticallyImplyLeading: false,
          title: Text(
            'M&ED Devices',
            style: Theme.of(context).textTheme.headline6,
          ),
          actions: _buildAppBarActions(context),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  List<Widget> _buildAppBarActions(BuildContext context) {
    final DeviceListCubit cubit = context.read<DeviceListCubit>();
    return <Widget>[
      if (SessionManager().isAdmin)
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: cubit.onAddTap,
        ),
      IconButton(
        icon: const Icon(CommunityMaterialIcons.filter_variant),
        onPressed: cubit.onFilterTap,
      ),
      IconButton(
        icon: const Icon(Icons.exit_to_app),
        onPressed: cubit.logout,
      ),
    ];
  }
}
