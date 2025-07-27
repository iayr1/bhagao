import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class DeliveryHomeScreen extends StatelessWidget {
  const DeliveryHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header with profile
                _buildHeader(),
                const SizedBox(height: 20),
                
                // Package promotion card
                _buildPromotionCard(),
                const SizedBox(height: 24),
                
                // Service grid
                _buildServiceGrid(),
                const SizedBox(height: 32),
                
                // Location input section
                _buildLocationSection(),
                const SizedBox(height: 24),
                
                // Around you section
                _buildAroundYouSection(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '9:41',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          children: [
            Container(
              width: 18,
              height: 12,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(2),
              ),
              child: Container(
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ),
            const SizedBox(width: 5),
            const Icon(Icons.wifi, size: 15),
            const SizedBox(width: 5),
            const Icon(Icons.signal_cellular_4_bar, size: 15),
          ],
        ),
      ],
    );
  }

  Widget _buildPromotionCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFFFD54F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Leave something at\nhome?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Text(
                      'Send a package',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              color: Color(0xFF8D6E63),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.card_giftcard,
              color: Colors.white,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceGrid() {
    final services = [
      {'icon': Icons.directions_car, 'label': 'Ride', 'color': Colors.grey[100]!},
      {'icon': Icons.restaurant, 'label': 'Food', 'color': Colors.grey[100]!},
      {'icon': Icons.inventory_2, 'label': 'Package', 'color': Colors.grey[100]!},
      {'icon': Icons.schedule, 'label': 'Reserve', 'color': Colors.grey[100]!},
      {'icon': Icons.shopping_cart, 'label': 'Grocery', 'color': Colors.grey[100]!},
      {'icon': Icons.access_time, 'label': 'Hourly', 'color': Colors.grey[100]!},
      {'icon': Icons.car_rental, 'label': 'Rent', 'color': Colors.grey[100]!},
      {'icon': Icons.more_horiz, 'label': 'More', 'color': Colors.grey[100]!},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1,
      ),
      itemCount: services.length,
      itemBuilder: (context, index) {
        final service = services[index];
        return _buildServiceItem(
          service['icon'] as IconData,
          service['label'] as String,
          service['color'] as Color,
        );
      },
    );
  }

  Widget _buildServiceItem(IconData icon, String label, Color backgroundColor) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(
            icon,
            size: 28,
            color: Colors.black54,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildLocationSection() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Where to?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Row(
                children: [
                  Icon(Icons.access_time, size: 20),
                  SizedBox(width: 8),
                  Text('Now'),
                  SizedBox(width: 8),
                  Icon(Icons.keyboard_arrow_down, size: 20),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        _buildLocationOption(Icons.star_border, 'Choose a saved place'),
        const SizedBox(height: 16),
        _buildLocationOption(Icons.location_on_outlined, 'Set destination on map'),
      ],
    );
  }

  Widget _buildLocationOption(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.black54),
        const SizedBox(width: 16),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildAroundYouSection() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Around you',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black54,
          ),
        ),
        SizedBox(height: 16),
        // Add your around you content here
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Activity',
          ),
        ],
      ),
    );
  }
}

// Usage in your main app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'SF Pro Display', // iOS-like font
      ),
      home: const DeliveryHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

