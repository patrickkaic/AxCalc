import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleSwitchs extends StatelessWidget {
  final String title;
  final List<String> labels;
  final Function(int? index) onToggle;
  final int selectedIndex;

  const ToggleSwitchs({
    super.key,
    required this.title,
    required this.labels,
    required this.onToggle,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(
                fontSize: 14, color: Color.fromARGB(255, 169, 167, 167))),
        ToggleSwitch(
          initialLabelIndex: selectedIndex,
          minWidth: 180,
          minHeight: 40,
          cornerRadius: 90,
          fontSize: 17,
          activeBorders: [
            Border.all(
              color: const Color.fromARGB(255, 82, 139, 238),
              width: 2.0,
            ),
          ],
          activeBgColors: const [
            [Color.fromARGB(255, 155, 201, 237)],
            [Color.fromARGB(255, 155, 201, 237)]
          ],
          borderColor: const [Color.fromARGB(255, 233, 230, 230)],
          borderWidth: 2.0,
          activeFgColor: Colors.black,
          inactiveBgColor: Colors.white,
          inactiveFgColor: const Color.fromARGB(255, 146, 144, 144),
          totalSwitches: labels.length,
          labels: labels,
          onToggle: onToggle,
        ),
      ],
    );
  }
}
