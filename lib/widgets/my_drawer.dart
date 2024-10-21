import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  ListTile listTile(
      BuildContext context, String text, IconData? icon, VoidCallback onTap) {
    return icon == null
        ? ListTile(
            onTap: onTap,
            title: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          )
        : ListTile(
            onTap: onTap,
            leading: Icon(
              icon,
              color: const Color(0xFfFF2B85),
            ),
            title: Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsetsDirectional.zero,
        children: [
          Builder(
            builder: (context) {
              return DrawerHeader(
                decoration: BoxDecoration(
                    color: const Color(0xFFFF2B85),
                    border: Border.all(color: const Color(0xFFFF2B85))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Center(
                        child: Text(
                          "S",
                          style: TextStyle(
                            color: Color(0xFFFF2B85),
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      "",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Column(
            children: [
              listTile(
                context,
                "Vouchers",
                Icons.local_offer_outlined,
                () {},
              ),
              listTile(
                context,
                "Favourites",
                Icons.favorite_outline_rounded,
                () {},
              ),
              listTile(
                context,
                "Orders & reordering",
                Icons.my_library_books_outlined,
                () {},
              ),
              listTile(
                context,
                "Addresses",
                Icons.location_on_outlined,
                () {},
              ),
              listTile(
                context,
                "Payment Method",
                Icons.payment_rounded,
                () {},
              ),
              listTile(
                context,
                "Help Center",
                Icons.help_center_outlined,
                () {},
              ),
              listTile(
                context,
                "Invite",
                Icons.wallet_giftcard_outlined,
                () {},
              ),
              const Divider(),
              listTile(
                context,
                "Settings",
                null,
                () {},
              ),
              listTile(
                context,
                "Terms & Conditions / Privacy",
                null,
                () {},
              ),
              listTile(
                context,
                "Logout",
                null,
                () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
