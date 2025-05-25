import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:srocksmusic/home_screen/model/music_service_model.dart';
import 'package:srocksmusic/home_screen/view/detail_screen.dart';
import 'package:srocksmusic/home_screen/view_model/home_viewmodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomeViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 291.sp,
                      padding: EdgeInsets.only(top: 25.sp, bottom: 10.sp),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFA90140), Color(0xFF550120)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15.sp),
                          bottomRight: Radius.circular(15.sp),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 13.sp, left: 13.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 288.sp,
                                  height: 44.sp,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFF2F2F39),
                                      borderRadius:
                                          BorderRadius.circular(10.sp),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          12.sp, 11.sp, 12.sp, 11.sp),
                                      child: Row(
                                        // !textfield
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.search,
                                            color: Colors.white,
                                            size: 20.sp,
                                          ),
                                          SizedBox(
                                            width: 190.sp,
                                            child: Expanded(
                                              child: TextField(
                                                onTapOutside: (event) {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                },
                                                decoration: InputDecoration(
                                                  hintText:
                                                      'Search "Punjabi Lyrics"',
                                                  hintStyle: GoogleFonts.syne(
                                                    textStyle: TextStyle(
                                                        color:
                                                            Color(0xFF61616B),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14.sp),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsets.only(
                                                    left: 10.sp,
                                                    top: 1.sp,
                                                    bottom: 1.sp,
                                                  ),
                                                  isDense: true,
                                                  filled: true,
                                                  fillColor: Color(0xFF2F2F39),
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.sp),
                                                    borderSide: BorderSide.none,
                                                  ),
                                                ),
                                                style: const TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          VerticalDivider(
                                              color: Color(0xFF45454F)),
                                          Icon(
                                            Icons.mic,
                                            color: Colors.white,
                                            size: 20.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 34.sp,
                                  width: 34.sp,
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xFFEADDFF),
                                    child: Image.asset(
                                      height: 21.79.sp,
                                      width: 23.96.sp,
                                      'assets/home/avatar.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      0.sp, 22.sp, 0.sp, 0.sp),
                                  child: Text(
                                    'Claim your',
                                    style: GoogleFonts.syne(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Free Demo',
                                  style: GoogleFonts.lobster(
                                    textStyle: TextStyle(
                                      fontSize: 45.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Text(
                                  'for custom Music Production',
                                  style: GoogleFonts.syne(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      13.sp, 7.sp, 13.sp, 7.sp),
                                  child: SizedBox(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.sp),
                                        ),
                                      ),
                                      child: Text(
                                        'Book Now',
                                        style: GoogleFonts.syne(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 13.sp)),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: -47.sp,
                      bottom: 17.65.sp,
                      child: Image.asset(
                        'assets/home/piano.png',
                        width: 134.sp,
                        height: 119.17.sp,
                      ),
                    ),
                    Positioned(
                      left: -32.sp,
                      bottom: 18.sp,
                      child: Image.asset(
                        'assets/home/cd.png',
                        width: 110.sp,
                        height: 110.sp,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: 30.sp, left: 30.sp, top: 24.sp),
                  child: Text(
                    'Hire hand-picked Pros for popular music services',
                    style: GoogleFonts.syne(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 335.sp,
                  width: 390.sp,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.sp, right: 30.sp),
                    child: ListView.builder(
                      itemCount: viewModel.services.length,
                      itemBuilder: (context, index) {
                        final service = viewModel.services[index];
                        return _buildServiceCard(context, service);
                      },
                    ),
                  ),
                ),
              ],
            ),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  BottomNavigationBar _bottomNavBar() {
    final iconSize = 25.sp;
    return BottomNavigationBar(
      onTap: (value) => setState(() {
        selectedIndex = value;
      }),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.black,
      selectedLabelStyle: GoogleFonts.syne(
        fontSize: 11.sp,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      unselectedLabelStyle: GoogleFonts.syne(
          fontSize: 11.sp,
          fontWeight: FontWeight.w400,
          color: Color(0xFF61616B)),
      items: [
        _buildNavItem(
            icon: Image.asset('assets/home/home_nav.png',
                height: iconSize, width: iconSize),
            label: 'Home',
            index: 0),
        _buildNavItem(
            icon: Image.asset('assets/home/news_nav.png',
                height: iconSize, width: iconSize),
            label: 'News',
            index: 1),
        _buildNavItem(
            icon: Image.asset('assets/home/track_nav.png',
                height: iconSize, width: iconSize),
            label: 'TrackBox',
            index: 2),
        _buildNavItem(
            icon: Image.asset('assets/home/projects_nav.png',
                height: iconSize, width: iconSize),
            label: 'Projects',
            index: 3),
      ],
    );
  }
}

BottomNavigationBarItem _buildNavItem(
    {required Widget icon, required int index, String? label}) {
  final bool isSelected = selectedIndex == index;

  return BottomNavigationBarItem(
    label: label ?? '',
    icon: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isSelected)
          Container(
            width: 14.sp,
            height: 7.sp,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(7.sp),
                bottomRight: Radius.circular(7.sp),
              ),
            ),
          )
        else
          SizedBox(height: 8.sp),
        SizedBox(height: 4.sp),
        icon,
      ],
    ),
  );
}

Widget _buildServiceCard(BuildContext context, ServiceModel service) {
  return Padding(
    padding: EdgeInsets.only(top: 5.sp),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ServiceDetailsScreen(serviceTitle: service.title),
          ),
        );
      },
      child: SizedBox(
        height: 74.sp,
        width: 330.sp,
        child: Card(
          color: const Color(0xFF1E1E1E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.sp),
            side: BorderSide(
              color: const Color(0xFF2F2F39),
              width: 1.sp,
            ),
          ),
          child: ListTile(
            leading: Image.asset(service.icon, width: 47.sp, height: 47.sp),
            title: Text(
              service.title,
              style: GoogleFonts.syne(
                  textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 15.sp,
              )),
            ),
            subtitle: Text(
              service.description,
              style: GoogleFonts.syne(
                  textStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13.sp,
              )),
            ),
            trailing: Image.asset('assets/home/arrow.png',
                width: 6.88.sp, height: 13.75.sp),
          ),
        ),
      ),
    ),
  );
}
