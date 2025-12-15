import 'package:flutter/material.dart';
import 'package:scube_cms/features/dashboard/widgets/data_view_card.dart';
import 'package:scube_cms/features/dashboard/widgets/grid_action_button.dart';
import 'package:scube_cms/features/dashboard/widgets/power_gauge.dart';
import 'package:scube_cms/features/dashboard/widgets/source_load_switch.dart';
import 'package:scube_cms/features/dashboard/widgets/top_tab_bar.dart';

import '../../core/constants/dashbord_color.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Section: Tabs, Electricity, Power Gauge
            _buildTopSection(),
            // Main Content Below Power Gauge
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  // Source/Load Switch (Imported Widget)
                  const SourceLoadSwitch(),
                  const SizedBox(height: 16),
                  // Data View Cards (Imported Widgets)
                  _buildDataViewCards(),
                  const SizedBox(height: 24),
                  // Bottom Grid Buttons (Imported Widget)
                  _buildBottomGridButtons(),
                  const SizedBox(height: 24), // Extra space at the bottom
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- 1. AppBar Widget ---

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back, color: kInactiveGrey),
        onPressed: () {
          // Handle back button press
        },
      ),
      title: const Text(
        'SCM',
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_none, color: kInactiveGrey),
          onPressed: () {
            // Handle notification button press
          },
        ),
      ],
    );
  }

  // --- 2. Top Section Widgets (Combining Imported Widgets) ---

  Widget _buildTopSection() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          // Tab Bar (Imported Widget)
          const TopTabBar(),
          const Divider(height: 1, thickness: 1, color: Color(0xFFE0E0E0)),
          const SizedBox(height: 16),
          // Electricity Title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Electricity',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: kInactiveGrey,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Total Power Gauge (Imported Widget)
          const PowerGauge(),
        ],
      ),
    );
  }

  // --- 3. Data View Cards ---

  Widget _buildDataViewCards() {
    return const Column(
      children: [
        DataViewCard(
          title: 'Data View',
          data1: '55505.63',
          data2: '58805.63',
          icon: Icons.wb_sunny_outlined,
          color: Colors.blue,
          isActive: true,
        ),
        SizedBox(height: 8),
        DataViewCard(
          title: 'Data Type 2',
          data1: '55505.63',
          data2: '58805.63',
          icon: Icons.battery_charging_full,
          color: Colors.deepOrange,
          isActive: true,
        ),
        SizedBox(height: 8),
        DataViewCard(
          title: 'Data Type 3',
          data1: '55505.63',
          data2: '58805.63',
          icon: Icons.electrical_services,
          color: Colors.red,
          isActive: false,
        ),
      ],
    );
  }

  // --- 4. Bottom Grid Buttons ---

  Widget _buildBottomGridButtons() {
    final List<Map<String, dynamic>> buttons = [
      {'title': 'Analysis Pro', 'icon': Icons.analytics_outlined},
      {'title': 'G. Generator', 'icon': Icons.power_outlined},
      {'title': 'Plant Summery', 'icon': Icons.factory_outlined},
      {'title': 'Natural Gas', 'icon': Icons.local_gas_station_outlined},
      {'title': 'D. Generator', 'icon': Icons.power_rounded},
      {'title': 'Water Process', 'icon': Icons.water_drop_outlined},
    ];

    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // Enforce the 148px width / 42px height ratio
        childAspectRatio: 148 / 42,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: buttons.length,
      itemBuilder: (context, index) {
        final item = buttons[index];
        return GridActionButton(title: item['title'] as String, icon: item['icon'] as IconData);
      },
    );
  }
}