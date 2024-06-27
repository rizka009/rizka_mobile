import 'package:flutter/material.dart';
import '../../utils/session_manager.dart';

class PageBottomNavigationBar extends StatefulWidget {
  const PageBottomNavigationBar({Key? key});

  @override
  State<PageBottomNavigationBar> createState() =>
      _PageBottomNavigationBarState();
}

class _PageBottomNavigationBarState extends State<PageBottomNavigationBar>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late SessionManager sessionManager;
  int _currentPage = 0;
  final PageController _topCoursesPageController = PageController();
  final PageController _popularBlogsPageController = PageController();

  @override
  void initState() {
    super.initState();
    sessionManager = SessionManager();
    sessionManager.getSession();
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    tabController.dispose();
    _topCoursesPageController.dispose();
    _popularBlogsPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your App"),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tampilkan tampilan pencarian
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Slideshow iklan
          Container(
            height: 200,
            child: PageView(
              controller: _topCoursesPageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                _buildRoundedImage('gambar/image1.jpg'),
                _buildRoundedImage('gambar/image2.jpg'),
                _buildRoundedImage('gambar/image3.jpg'),
                _buildRoundedImage('gambar/image4.jpg'),
                // Tambahkan gambar iklan lainnya di sini
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(
              4, // Ganti dengan jumlah gambar iklan yang Anda miliki
                  (int index) {
                return AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: _currentPage == index ? 12.0 : 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? Colors.blue
                        : Colors.grey.shade400,
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: PageView(
              controller: _popularBlogsPageController,
              children: List.generate(
                10, // Jumlah halaman Popular Blogs
                    (index) => _buildPopularBlogsPage(index),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _topCoursesPageController,
              children: List.generate(
                10, // Jumlah halaman Top Courses
                    (index) => _buildTopCoursesPage(index),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.blue, // Ubah warna bottom navigation bar di sini
        ),
        child: BottomNavigationBar(
          currentIndex: tabController.index,
          onTap: (index) {
            tabController.animateTo(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home), // Ikon untuk Beranda
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book), // Ikon untuk My Courses
              label: 'My Courses',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home), // Ikon untuk My Courses
              label: 'My Courses',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book), // Ikon untuk My Courses
              label: 'My Courses',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoundedImage(String imagePath) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }

  Widget _buildTopCoursesPage(int index) {
    return Center(
      child: Text("Top Courses Page $index"),
    );
  }

  Widget _buildPopularBlogsPage(int index) {
    return Center(
      child: Text("Popular Blogs Page $index"),
    );
  }


}