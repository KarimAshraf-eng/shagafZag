import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:shagaf_zag/Core/Barrel/imports.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: pages[currentIndex],
      floatingActionButton: CircleAvatar(
        backgroundColor: ShagafColors.primaryColor.withOpacity(0.59),
        radius: 30,
        child: Image.asset(
          logo,
          width: 24.w,
          height: 40.25.h,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 65.h,
        child: AnimatedBottomNavigationBar.builder(
          itemCount: iconList.length,
          tabBuilder: (int index, bool isActive) {
            final color = isActive ? ShagafColors.primaryColor : const Color(0xff5E5F60);
            return Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SvgPicture.asset(
                  iconList[index],
                  width: 24.w,
                  height: 24.h,
                  // ignore: deprecated_member_use
                  color: color,
                ),
                4.verticalSpace,
                Text(
                  labels[index],
                  style: TextStyle(
                    color: color,
                    fontSize: 12,
                  ),
                ),
                5.verticalSpace
              ],
            );
          },
          elevation: 0,
          activeIndex: currentIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.smoothEdge,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
