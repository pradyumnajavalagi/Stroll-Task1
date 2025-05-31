import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_task1/core/theme.dart';
import 'package:stroll_task1/features/bonfire/widgets/bottom_nav_bar.dart';
import 'package:stroll_task1/features/bonfire/widgets/gradients.dart';
import 'package:stroll_task1/features/bonfire/widgets/option_button.dart';

class BonfireScreen extends StatefulWidget {
  const BonfireScreen({super.key});

  @override
  State<BonfireScreen> createState() => _BonfireScreenState();
}

class _BonfireScreenState extends State<BonfireScreen> {
  int _selectedOption = -1; // -1 means none selected

  void _selectOption(int index) {
    setState(() {
      _selectedOption = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background_video.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const GradientOne(),
          const GradientTwo(),
          const GradientThree(),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 16),
                // TITLE & INFO
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Stroll Bonfire',
                      style: TextStyle(
                        fontSize: 34,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.none,
                        color: AppColors.textPurple,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.4),
                            offset: const Offset(0, 0),
                            blurRadius: 79,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.keyboard_arrow_down_rounded, color: AppColors.textPurple, size: 28),
                  ],
                ),
                const SizedBox(height: 0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/timer.svg', width: 13, height: 15),
                    const Text(' 22h 00m', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white)),
                    const SizedBox(width: 16),
                    SvgPicture.asset('assets/icons/person.svg', width: 10, height: 13),
                    const Text(' 103', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white)),
                  ],
                ),

                // PROFILE AND QUESTION
                SizedBox(height: MediaQuery.of(context).size.height * 0.39),
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.backgroundDark, width: 4.0),
                          ),
                          child: const CircleAvatar(
                            radius: 26,
                            backgroundImage: AssetImage('assets/images/pfp.jpg'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 78.0, top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: AppColors.backgroundDark,
                              border: Border(
                                bottom: BorderSide(
                                  color: AppColors.backgroundDark.withOpacity(0.5),
                                  width: 1.5,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(right: 8, left: 12),
                              child: Text('Angelina, 28', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: Colors.white)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 30),
                            child: Text(
                              "What is your favorite time of the day?",
                              style: TextStyle(height: 1, fontSize: 22, fontWeight: FontWeight.w700, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // USER COMMENT
                const SizedBox(height: 8),
                const Text(
                  "\"Mine is definitely the peace in the morning.\"",
                  style: TextStyle(
                    fontSize: 13,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                    color: AppColors.textPurpleLight,
                  ),
                ),

                // OPTION BUTTONS
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: OptionButton(
                              label: 'A',
                              text: 'The peace in the early mornings',
                              isSelected: _selectedOption == 0,
                              onTap: () => _selectOption(0),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: OptionButton(
                              label: 'B',
                              text: 'The magical golden hours',
                              isSelected: _selectedOption == 1,
                              onTap: () => _selectOption(1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: OptionButton(
                              label: 'C',
                              text: 'Wind-down time after dinners',
                              isSelected: _selectedOption == 2,
                              onTap: () => _selectOption(2),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: OptionButton(
                              label: 'D',
                              text: 'The serenity past midnight',
                              isSelected: _selectedOption == 3,
                              onTap: () => _selectOption(3),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // INSTRUCTIONS + MIC & FORWARD
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                  child: Row(
                    children: [
                      const Text(
                        'Pick your option.\nSee who has a similar mind.',
                        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: AppColors.textLight),
                      ),
                      const Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primary, width: 1.5),
                          shape: BoxShape.circle,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(Icons.keyboard_voice_rounded, color: AppColors.primary, size: 35),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          border: Border.all(color: AppColors.primary, width: 1.5),
                          shape: BoxShape.circle,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(Icons.arrow_forward_rounded, color: Colors.black, size: 35),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const BottomNavBar(),
        ],
      ),
    );
  }
}







