import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stock_management_system/Routes/Routes_name.dart';
import 'package:stock_management_system/Utils/Function/Navigation.dart';
import 'package:stock_management_system/Utils/Theme/App_colors.dart';
import 'package:stock_management_system/Utils/Widgets/app_bar.dart';
import 'package:stock_management_system/Utils/Widgets/button.dart';

class ShowCategoryView extends StatefulWidget {
  const ShowCategoryView({super.key});

  @override
  State<ShowCategoryView> createState() => _ShowCategoryViewState();
}

class _ShowCategoryViewState extends State<ShowCategoryView> {
  final List<dynamic> categories = [
    {
      'title': 'iphone 11',
      'subtitle':
          '6.1-inch (15 cm) IPS LCD with a resolution of 1792 × 828 pixels (1.4 megapixels) at a pixel density of 326 PPI with a maximum brightness of 625 nits and a 1400:1 contrast ratio',
      'price': '20000 pkr',
      'Brand': 'Apple',
      'route': 'show_product'
    },
    {
      'title': 'Samsung Galaxy S21',
      'subtitle':
          '6.2-inch Dynamic AMOLED 2X with a resolution of 2400 × 1080 pixels at a pixel density of 421 PPI with a maximum brightness of 1300 nits',
      'price': '18000 pkr',
      'Brand': 'Samsung',
      'route': 'show_product'
    },
    {
      'title': 'Google Pixel 5',
      'subtitle':
          '6.0-inch OLED with a resolution of 2340 × 1080 pixels at a pixel density of 432 PPI with a maximum brightness of 700 nits',
      'price': '17000 pkr',
      'Brand': 'Google',
      'route': 'show_product'
    },
    {
      'title': 'OnePlus 9',
      'subtitle':
          '6.55-inch Fluid AMOLED with a resolution of 2400 × 1080 pixels at a pixel density of 402 PPI with a maximum brightness of 1100 nits',
      'price': '22000 pkr',
      'Brand': 'OnePlus',
      'route': 'show_product'
    },
    {
      'title': 'Huawei P40',
      'subtitle':
          '6.1-inch OLED with a resolution of 2340 × 1080 pixels at a pixel density of 422 PPI with a maximum brightness of 600 nits',
      'price': '21000 pkr',
      'Brand': 'Huawei',
      'route': 'show_product'
    },
    {
      'title': 'Xiaomi Mi 11',
      'subtitle':
          '6.81-inch AMOLED with a resolution of 3200 × 1440 pixels at a pixel density of 515 PPI with a maximum brightness of 1500 nits',
      'price': '19000 pkr',
      'Brand': 'Xiaomi',
      'route': 'show_product'
    },
    {
      'title': 'Sony Xperia 5 II',
      'subtitle':
          '6.1-inch OLED with a resolution of 2520 × 1080 pixels at a pixel density of 449 PPI with a maximum brightness of 700 nits',
      'price': '25000 pkr',
      'Brand': 'Sony',
      'route': 'show_product'
    },
    {
      'title': 'LG Velvet',
      'subtitle':
          '6.8-inch P-OLED with a resolution of 2460 × 1080 pixels at a pixel density of 395 PPI with a maximum brightness of 600 nits',
      'price': '16000 pkr',
      'Brand': 'LG',
      'route': 'show_product'
    },
    {
      'title': 'Nokia 8.3',
      'subtitle':
          '6.81-inch IPS LCD with a resolution of 2400 × 1080 pixels at a pixel density of 386 PPI with a maximum brightness of 600 nits',
      'price': '15000 pkr',
      'Brand': 'Nokia',
      'route': 'show_product'
    },
    {
      'title': 'Asus ROG Phone 5',
      'subtitle':
          '6.78-inch AMOLED with a resolution of 2448 × 1080 pixels at a pixel density of 395 PPI with a maximum brightness of 1200 nits',
      'price': '30000 pkr',
      'Brand': 'Asus',
      'route': 'show_product'
    },
    {
      'title': 'Motorola Edge Plus',
      'subtitle':
          '6.7-inch OLED with a resolution of 2340 × 1080 pixels at a pixel density of 385 PPI with a maximum brightness of 700 nits',
      'price': '24000 pkr',
      'Brand': 'Motorola',
      'route': 'show_product'
    },
    {
      'title': 'Realme GT',
      'subtitle':
          '6.43-inch Super AMOLED with a resolution of 2400 × 1080 pixels at a pixel density of 409 PPI with a maximum brightness of 1000 nits',
      'price': '14000 pkr',
      'Brand': 'Realme',
      'route': 'show_product'
    },
    {
      'title': 'Oppo Find X3 Pro',
      'subtitle':
          '6.7-inch LTPO AMOLED with a resolution of 3216 × 1440 pixels at a pixel density of 525 PPI with a maximum brightness of 1300 nits',
      'price': '27000 pkr',
      'Brand': 'Oppo',
      'route': 'show_product'
    },
    {
      'title': 'Vivo X60 Pro',
      'subtitle':
          '6.56-inch AMOLED with a resolution of 2376 × 1080 pixels at a pixel density of 398 PPI with a maximum brightness of 1300 nits',
      'price': '23000 pkr',
      'Brand': 'Vivo',
      'route': 'show_product'
    },
    {
      'title': 'ZTE Axon 30 Ultra',
      'subtitle':
          '6.67-inch AMOLED with a resolution of 2400 × 1080 pixels at a pixel density of 395 PPI with a maximum brightness of 800 nits',
      'price': '26000 pkr',
      'Brand': 'ZTE',
      'route': 'show_product'
    },
    {
      'title': 'Lenovo Legion Phone Duel',
      'subtitle':
          '6.65-inch AMOLED with a resolution of 2340 × 1080 pixels at a pixel density of 388 PPI with a maximum brightness of 800 nits',
      'price': '28000 pkr',
      'Brand': 'Lenovo',
      'route': 'show_product'
    },
    {
      'title': 'TCL 10 Pro',
      'subtitle':
          '6.47-inch AMOLED with a resolution of 2340 × 1080 pixels at a pixel density of 398 PPI with a maximum brightness of 600 nits',
      'price': '13000 pkr',
      'Brand': 'TCL',
      'route': 'show_product'
    },
    {
      'title': 'Microsoft Surface Duo',
      'subtitle':
          '8.1-inch AMOLED with a resolution of 2700 × 1800 pixels at a pixel density of 401 PPI with a maximum brightness of 800 nits',
      'price': '32000 pkr',
      'Brand': 'Microsoft',
      'route': 'show_product'
    },
    {
      'title': 'Honor 50',
      'subtitle':
          '6.57-inch OLED with a resolution of 2340 × 1080 pixels at a pixel density of 392 PPI with a maximum brightness of 800 nits',
      'price': '12000 pkr',
      'Brand': 'Honor',
      'route': 'show_product'
    },
    {
      'title': 'BlackBerry Key2',
      'subtitle':
          '4.5-inch IPS LCD with a resolution of 1620 × 1080 pixels at a pixel density of 434 PPI with a maximum brightness of 500 nits',
      'price': '11000 pkr',
      'Brand': 'BlackBerry',
      'route': 'show_product'
    }
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBarWidget(
        title: 'All Categories',
        leadingIcon: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Iconsax.arrow_left_2_copy,
              color: AppColors.whiteColor),
        ),
        action: [
          IconButton(
            icon: const Icon(
              Iconsax.search_normal_copy,
              color: AppColors.whiteColor,
            ),
            onPressed: () {
              print('hello');
            },
          ),
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Categories',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                AppButtons.ContainerButton(
                    width: 120,
                    height: 30,
                    context: context,
                    text: 'Add Category',
                    onTab: () {
                      Navigate.NextView(
                          context: context,
                          route: RoutesName.add_category_view);
                    })
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 3, bottom: 3),
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.greyColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                        title: Text(
                          categories[index]['title'].toString(),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 4,
                            ),
                            Text(categories[index]['subtitle'],
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: AppColors.greyTextColor)),
                            const SizedBox(
                              height: 6,
                            ),
                            Text("Brand : " + categories[index]['Brand'],
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: AppColors.greyTextColor)),
                            const SizedBox(
                              height: 2,
                            ),
                            Text("Price : " + categories[index]['price'],
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(color: AppColors.greyTextColor)),
                          ],
                        ),
                        trailing: const Icon(
                          Iconsax.arrow_circle_right_copy,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
