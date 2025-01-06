import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:redacted/redacted.dart';
import 'package:wischool/presentation/carouselSlider.dart';

import 'Lifecycle of a Stateful Widget/example1/example1.dart';
import 'Lifecycle of a Stateful Widget/home.dart';
import 'api/api_test.dart';
import 'presentation/Hover.dart';
import 'presentation/VelocityX.dart';
import 'presentation/add_icon.dart';
import 'presentation/check_box .dart';
import 'presentation/container.dart';
import 'presentation/container_with_clip.dart';
import 'presentation/copy_share_data.dart';
import 'presentation/file_picker.dart';
import 'presentation/flutter_simple_treeview.dart';
import 'presentation/flutter_speed_dial.dart';
import 'presentation/launch_url.dart';
import 'presentation/liquid_swipe.dart';
import 'presentation/mouse_region.dart';
import 'presentation/pop_up_menu.dart';
import 'presentation/radio_button.dart';
import 'presentation/redact_widget.dart';
import 'presentation/reorderable.dart';
import 'presentation/responsive_hight.dart';
import 'presentation/screen_util.dart';
import 'presentation/scrolling.dart';
import 'presentation/side_menu.dart';
import 'presentation/slidable.dart';
import 'presentation/slider.dart';
import 'presentation/tables.dart';
import 'presentation/tap_to_expand.dart';
import 'presentation/time_line.dart';
import 'presentation/tooltip.dart';
import 'presentation/video_player.dart';
import 'routes/routes.dart';

void main() {
  runApp(const WiSchool());
}

class WiSchool extends StatelessWidget {
  const WiSchool({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: MaterialApp(
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.touch, PointerDeviceKind.mouse},
        ),
        debugShowCheckedModeBanner: false,
        // initialRoute: AppRoutes.home,
        // // routes: AppRoutes.routes,
        // onGenerateRoute: AppRoutes.generateRoute,
        home:
            //  const SideMenuWidget(title: 'easy_sidemenu Demo'),
            //const ScreenUtilWidget(),
            // const Tables2(),
            //TapToExpandWidget(),
            //SpeedDialDemo(),
            //SliderWidget(),
            //RadioButtonPage(),
            // TooltipWidget(),
            //ApiTest(),
            // CarouselSliderWidget(),
            const SlidableWidget(),
        //ContainerClip(),
        //HomeScreen(),
        // Reorderable(),
        // SimpleTreeViewWidget(),
        // MouseRegionExample(),
        // PopupMenuExample(),
        // PopupMenu(),
        // RedactWidget(),
        // CheckboxWidget()
        // ResposiveHight(),
        // HoverEffect(),
        //  TimeLineWidget(),
        // ContainerPage(),
        // CopyAndShareData(),
        // AddIcon(),
        //  TwoListsScrollableScreen(),
        // VideoApp(),
        // LiquidSwipeView(),
        // VelocityDemo(),
        // Tables2(),
        // FilePickerScreen(),
        // HomePage(),
      ),
    );
  }
}
