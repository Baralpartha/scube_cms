import 'package:flutter/material.dart';
import 'package:scube_cms/features/dashboard/Datadetails/widgets/custom_app_bar.dart';
import 'package:scube_cms/features/dashboard/Datadetails/widgets/energy_chart_container.dart';
import 'package:scube_cms/features/dashboard/Datadetails/widgets/main_pill_tab.dart';
import 'package:scube_cms/features/dashboard/Datadetails/widgets/power_gauge_widget.dart';
import 'package:scube_cms/features/dashboard/Datadetails/widgets/sub_tab_view.dart';
class DataDetailScreen extends StatelessWidget {
  const DataDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'SCM'), // Using Custom AppBar
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Top Tabs (Data View / Revenue View)
            MainTabView(), // Imported Widget
            // 2. Main Power Gauge
            const SizedBox(height: 24),
            PowerGaugeWidget(), // Imported Widget
            const SizedBox(height: 32),
            // 3. Sub Tabs (Today Data / Custom Date Data)
            SubTabView(), // Imported Widget
            // 4. Energy Chart Container
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: EnergyChartContainer(), // Imported Widget
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}