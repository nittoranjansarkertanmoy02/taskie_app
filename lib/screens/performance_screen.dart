import 'package:flutter/material.dart';
import 'package:taskie_app/screens/drawer_screen.dart';
import 'package:taskie_app/widgets/custom_text.dart';
import 'package:velocity_x/velocity_x.dart';

class PerformanceScreen extends StatefulWidget {
  const PerformanceScreen({super.key});

  @override
  State<PerformanceScreen> createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  DateTime focusdateTime = DateTime.now();
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    selectedDate = focusdateTime;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        title: titleItem(),
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            5.heightBox,
            // MonthlySummary(
            //   datasets: events.cast(),
            //   startDate: selectedDate!.,
            // ),
          ],
        ),
      )),
    );
  }

  Widget titleItem() {
    return const Row(
      children: [
        CustomText(
          text: 'PERFORMANCE CALENDAR',
        ),
      ],
    );
  }
}
