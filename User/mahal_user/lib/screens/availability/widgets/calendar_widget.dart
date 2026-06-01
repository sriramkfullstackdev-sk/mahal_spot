import 'package:flutter/material.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  static const monthNames = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  int selectedMonthIndex = 0;
  int selectedYear = 2027;
  String? selectedDay;

  List<String> _buildDaysForMonth(int month, int year) {
    final monthNumber = month + 1;
    final daysInMonth = DateTime(year, monthNumber + 1, 0).day;
    final firstWeekday = DateTime(year, monthNumber, 1).weekday;
    final blanks = firstWeekday % 7;
    final list = List<String>.filled(blanks, '', growable: true);
    list.addAll(List<String>.generate(daysInMonth, (index) => '${index + 1}'));
    return list;
  }

  void _changeMonth(int offset) {
    setState(() {
      selectedMonthIndex = (selectedMonthIndex + offset) % 12;
      if (selectedMonthIndex < 0) selectedMonthIndex += 12;
      selectedDay = null;
    });
  }

  void _showMonthPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, sheetSetState) {
            return SizedBox(
              height: 360,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => sheetSetState(() {
                            selectedYear -= 1;
                            selectedDay = null;
                          }),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.deepPurple,
                          ),
                        ),
                        Text(
                          '$selectedYear',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () => sheetSetState(() {
                            selectedYear += 1;
                            selectedDay = null;
                          }),
                          icon: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: GridView.builder(
                        itemCount: monthNames.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 2.5,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                            ),
                        itemBuilder: (context, index) {
                          final isSelectedMonth = index == selectedMonthIndex;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedMonthIndex = index;
                                selectedDay = null;
                              });
                              Navigator.pop(context);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: isSelectedMonth
                                    ? Colors.deepPurple
                                    : Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Text(
                                monthNames[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: isSelectedMonth
                                      ? Colors.white
                                      : Colors.black,
                                  fontWeight: isSelectedMonth
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final days = _buildDaysForMonth(selectedMonthIndex, selectedYear);

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.pink.shade100),
      ),
      child: Column(
        children: [
          /// HEADER
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.menu, color: Colors.deepPurple),
              Row(
                children: [
                  IconButton(
                    onPressed: () => _changeMonth(-1),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Text(
                    '${monthNames[selectedMonthIndex]} $selectedYear',
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () => _changeMonth(1),
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () => _showMonthPicker(context),
                icon: const Icon(
                  Icons.calendar_month_outlined,
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),

          const SizedBox(height: 15),

          /// WEEK DAYS
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('SUN', style: TextStyle(color: Colors.white)),
                Text('MON', style: TextStyle(color: Colors.white)),
                Text('TUE', style: TextStyle(color: Colors.white)),
                Text('WED', style: TextStyle(color: Colors.white)),
                Text('THU', style: TextStyle(color: Colors.white)),
                Text('FRI', style: TextStyle(color: Colors.white)),
                Text('SAT', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),

          /// CALENDAR GRID
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: days.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              final day = days[index];
              final isSelected = day.isNotEmpty && day == selectedDay;

              return GestureDetector(
                onTap: day.isEmpty
                    ? null
                    : () {
                        setState(() {
                          selectedDay = day;
                        });
                      },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.deepPurple : Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isSelected
                          ? Colors.deepPurple
                          : Colors.grey.shade200,
                    ),
                  ),
                  child: day.isEmpty
                      ? const SizedBox()
                      : Text(
                          day,
                          style: TextStyle(
                            fontSize: 20,
                            color: isSelected ? Colors.white : Colors.black,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
