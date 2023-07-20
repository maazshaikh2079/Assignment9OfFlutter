// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:instaeco/widgets/drawer.dart';
// import "package:instaeco/models/catalog.dart";
// import "package:instaeco/widgets/item_widget.dart";

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

enum ButtonType {
  email,
  person,
  notifications,
  contacts,
  stars,
}

class _HomePageState extends State<HomePage> {
  ButtonType selectedButton = ButtonType.email;

  void selectButton(ButtonType buttonType) {
    setState(() {
      selectedButton = buttonType;
    });
  }

  List<GridItemData> getEmailGridItems() {
    return [
      GridItemData(
        title: 'Canon EOS Rebel',
        image: "https://i.ibb.co/NTpKJfZ/Cannon-Eo-S-Rebel.jpg",
        price: '\$10',
      ),
      GridItemData(
        title: 'Nikon D3500',
        image: "https://i.ibb.co/cFM2jgQ/Nikon-D3500.jpg",
        price: '\$20',
      ),
      GridItemData(
        title: 'Sony Alpha a6000',
        image: "https://i.ibb.co/7Xh4F06/sony-Alpha-a6000.jpg",
        price: '\$30',
      ),
      GridItemData(
        title: 'Panasonic Lumix GH5',
        image: "https://i.ibb.co/2KMnDHj/Panasonic-Lumix-GH5.jpg",
        price: '\$40',
      ),
      GridItemData(
        title: 'Fuji Flim Provia',
        image: 'https://i.ibb.co/C2NfdN9/Fujiflim-Provia.jpg',
        price: '\$50',
      ),
      GridItemData(
        title: 'Kodak Portra',
        image: "https://i.ibb.co/nrx6HKw/Kodak-Portra.jpg",
        price: '\$60',
      ),
      GridItemData(
        title: 'Canon Macro Lens',
        image: "https://i.ibb.co/G3Vjb3S/canon-macro-lens.jpg",
        price: '\$70',
      ),
      GridItemData(
        title: 'Sigma Art Lens',
        image: "https://i.ibb.co/CtMf4D5/sigma-prime-lens.jpg",
        price: '\$80',
      ),
    ];
  }

  List<GridItemData> getPersonGridItems() {
    return [
      GridItemData(
        title: 'Bed 1',
        image: 'https://i.ibb.co/FsbZZsh/b1.jpg',
        price: '\$90',
      ),
      GridItemData(
        title: 'Bed 2',
        image: 'https://i.ibb.co/3TKG5CJ/b2.jpg',
        price: '\$100',
      ),
      GridItemData(
        title: 'Chair 1',
        image: 'https://i.ibb.co/fqLmYS3/ch1.jpg',
        price: '\$110',
      ),
      GridItemData(
        title: 'Chair 2',
        image: 'https://i.ibb.co/wzRGxmr/ch2.jpg',
        price: '\$120',
      ),
      GridItemData(
        title: 'Cupboard 1',
        image: 'https://i.ibb.co/XtRnY7b/cp1.jpg',
        price: '\$130',
      ),
      GridItemData(
        title: 'Cupboard 2',
        image: 'https://i.ibb.co/86xzFdX/cp2.jpg',
        price: '\$140',
      ),
      GridItemData(
        title: 'Sofa 1',
        image: 'https://i.ibb.co/8chYfqC/sofa1.jpg',
        price: '\$150',
      ),
      GridItemData(
        title: 'Sofa 2',
        image: 'https://i.ibb.co/1sw9gvy/sofa2.jpg',
        price: '\$160',
      ),
    ];
  }

  List<GridItemData> getContactsGridItems() {
    return [
      GridItemData(
        title: 'Model- OnePlus 11R',
        image:
            'https://www.91-img.com/pictures/154699-v3-oneplus-11r-256gb-mobile-phone-large-1.jpg',
        price: '\$250',
      ),
      GridItemData(
        title: 'Xiaomi 13 Pro',
        image:
            'https://www.91-img.com/pictures/150934-v4-xiaomi-13-pro-mobile-phone-large-1.jpg',
        price: '\$260',
      ),
      GridItemData(
        title: 'Google Pixel 7 Pro 5g',
        image:
            'https://www.91-img.com/gallery_images_uploads/8/2/82db9639f4d50a58ff4071f64e8d1c5ac89f4a4c.jpg',
        price: '\$270',
      ),
      GridItemData(
        title: 'realme 11 ',
        image:
            'https://cdn-files.kimovil.com/phone_front/0008/73/thumb_772353_phone_front_big.jpg?',
        price: '\$280',
      ),
      GridItemData(
        title: 'Samsung Galaxy M54',
        image:
            'https://www.91-img.com/gallery_images_uploads/8/2/828b5b93c7373277bcfcb2c65ca62e7c7ccbb346.jpg',
        price: '\$290',
      ),
      GridItemData(
        title: 'Samsung Galaxy S23 Ultra 5g',
        image:
            'https://www.91-img.com/pictures/148752-v5-samsung-galaxy-s23-ultra-5g-mobile-phone-large-1.jpg',
        price: '\$300',
      ),
      GridItemData(
        title: 'Xiaomi Redmi K50i 256gb',
        image:
            'https://www.91-img.com/pictures/151843-v5-xiaomi-redmi-k50i-256gb-mobile-phone-large-1.jpg',
        price: '\$310',
      ),
      GridItemData(
        title: 'Asus ROG Phone 5s 5g ',
        image:
            'https://www.91-img.com/pictures/149428-v2-asus-rog-phone-5s-5g-256gb-mobile-phone-large-1.jpg',
        price: '\$320',
      ),
    ];
  }

  List<GridItemData> getStarsGridItems() {
    return [
      GridItemData(
        title: 'MacBook Air',
        image:
            "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcTJU51jN8h4RA-XPk7Smg2U9Vv5lJffOjJ5RGiIaXhoVY3uMgNsgw0REdMpnG1higgYq3RkFp_m6W2nlpaUO3mpOmE2yLHoFMpM0RAb9bjGVmAtSPy-gmCStesS",
        price: '\$1365',
      ),
      GridItemData(
        title: 'Iphone 14',
        image: "https://m.media-amazon.com/images/I/61bK6PMOC3L._SL1500_.jpg",
        price: '\$1219',
      ),
      GridItemData(
        title: "HP Pavilion 14",
        image:
            "https://in-media.apjonlinecdn.com/catalog/product/cache/74c1057f7991b4edb2bc7bdaa94de933/6/7/67U19PA-1_T1680317366.png",
        price: '\$695',
      ),
      GridItemData(
        title: "Samsung S23",
        image:
            "https://images.samsung.com/is/image/samsung/p6pim/in/2202/gallery/in-galaxy-s22-s901-412948-sm-s901ezgdinu-thumb-530964622?imwidth=480",
        price: '\$975',
      ),
      GridItemData(
        title: "Dell XPS 15",
        image:
            "https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/notebooks/xps-notebooks/xps-13-9315/media-gallery/notebook-xps-9315-nt-blue-gallery-3.psd?qlt=90,0&op_usm=1.75,0.3,2,0&resMode=sharp&pscan=auto&fmt=png-alpha&hei=500",
        price: '\$792',
      ),
      GridItemData(
        title: "LG OLED CX",
        image:
            'https://rukminim1.flixcart.com/image/416/416/kjlrb0w0-0/television/b/i/g/oled55cxpta-lg-original-imafz4yyntd4jq9x.jpeg?q=70',
        price: '\$1340',
      ),
      GridItemData(
        title: "Sony Alpha A7 III",
        image: "https://i.ebayimg.com/images/g/ydgAAOSwN2BjvUhP/s-l1600.jpg",
        price: '\$1950',
      ),
      GridItemData(
        title: "PlayStation 5",
        image: "https://m.media-amazon.com/images/I/51mWHXY8hyL._SX522_.jpg",
        price: '\$670',
      ),
    ];
  }

  List<GridItemData> getSelectedGridItems() {
    switch (selectedButton) {
      case ButtonType.email:
        return getEmailGridItems();
      case ButtonType.person:
        return getPersonGridItems();
      case ButtonType.notifications:
        return getPersonGridItems();
      case ButtonType.contacts:
        return getContactsGridItems();
      case ButtonType.stars:
        return getStarsGridItems();
    }
  }

  double calculateAspectRatio() {
    return MediaQuery.of(context).size.width /
        (MediaQuery.of(context).size.height / 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecom"),
        backgroundColor: Colors.greenAccent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search items",
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleButton(
                      buttonType: ButtonType.email,
                      isSelected: selectedButton == ButtonType.email,
                      onPressed: selectButton,
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    CircleButton(
                      buttonType: ButtonType.person,
                      isSelected: selectedButton == ButtonType.person,
                      onPressed: selectButton,
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    CircleButton(
                      buttonType: ButtonType.notifications,
                      isSelected: selectedButton == ButtonType.notifications,
                      onPressed: selectButton,
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    CircleButton(
                      buttonType: ButtonType.contacts,
                      isSelected: selectedButton == ButtonType.contacts,
                      onPressed: selectButton,
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    CircleButton(
                      buttonType: ButtonType.stars,
                      isSelected: selectedButton == ButtonType.stars,
                      onPressed: selectButton,
                    ),
                    SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  padding: EdgeInsets.only(left: 10),
                  scrollDirection: Axis.horizontal,
                  children: [],
                ),
              ),
            ],
          ),
          Positioned(
            top: 120,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: calculateAspectRatio(),
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: getSelectedGridItems().length,
                itemBuilder: (context, index) {
                  final item = getSelectedGridItems()[index];
                  return GridItem(
                    image:
                        item.image.isNotEmpty ? NetworkImage(item.image) : null,
                    title: item.title,
                    price: item.price,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      drawer: MyDrawer(),
    );
  }
}

class CircleButton extends StatelessWidget {
  final ButtonType buttonType;
  final bool isSelected;
  final Function(ButtonType) onPressed;

  const CircleButton({
    required this.buttonType,
    required this.isSelected,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      child: IconButton(
        onPressed: () => onPressed(buttonType),
        icon: Icon(getButtonIcon(buttonType)),
        color: Colors.white,
      ),
      backgroundColor: isSelected ? Colors.greenAccent : Colors.grey,
    );
  }

  IconData getButtonIcon(ButtonType buttonType) {
    switch (buttonType) {
      case ButtonType.email:
        return Icons.email;
      case ButtonType.person:
        return Icons.person;
      case ButtonType.notifications:
        return Icons.notifications;
      case ButtonType.contacts:
        return Icons.contacts;
      case ButtonType.stars:
        return Icons.stars;
    }
  }
}

class GridItem extends StatelessWidget {
  final ImageProvider? image;
  final String title;
  final String price;

  const GridItem({
    this.image,
    required this.title,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          if (image != null)
            SizedBox(
              height: 100,
              child: Image(
                image: image!,
                fit: BoxFit.cover,
              ),
            ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            price,
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class GridItemData {
  final String title;
  final String image;
  final String price;

  GridItemData({
    required this.title,
    required this.image,
    required this.price,
  });
}
