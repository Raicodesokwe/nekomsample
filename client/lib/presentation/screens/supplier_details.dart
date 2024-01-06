import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:protobufs/protobufs.dart';

class SupplierDetails extends StatelessWidget {
  final Supplier supplierItem;
  const SupplierDetails({super.key, required this.supplierItem});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/backgroundimage.png'))),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          FontAwesomeIcons.arrowLeft,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Center(
                      child: Text('Supplier Details',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'grifterbold',
                              color: Colors.black)),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: size.width * 0.02,
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          const Text('Address Details',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('City'),
                            subtitle: Text(supplierItem.address.city),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('CountryISO3'),
                            subtitle: Text(supplierItem.address.countryISO3),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('First name'),
                            subtitle: Text(supplierItem.address.firstName),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('Last name'),
                            subtitle: Text(supplierItem.address.lastName),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('Street'),
                            subtitle: Text(supplierItem.address.street),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('Second street'),
                            subtitle: Text(supplierItem.address.street2),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('Zip'),
                            subtitle: Text(supplierItem.address.zip),
                          ),
                          const Divider(),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          const Text('Additional Details',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('E-mail'),
                            subtitle: Text(supplierItem.email),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('Internal Supplier'),
                            subtitle:
                                Text(supplierItem.internalSupplier.toString()),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('Name1'),
                            subtitle: Text(supplierItem.name1),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('Name2'),
                            subtitle: Text(supplierItem.name2),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('Shipping Time'),
                            subtitle: Text(DateFormat('HH:mm').format(
                                DateTime.fromMillisecondsSinceEpoch(int.parse(
                                    supplierItem.shippingTime.toString())))),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('Supplier ID'),
                            subtitle: Text(supplierItem.supplierId),
                          ),
                          const Divider(),
                          ListTile(
                            visualDensity: const VisualDensity(
                                horizontal: 0, vertical: -4),
                            title: const Text('Supplyment'),
                            subtitle: Text(supplierItem.supplyment.toString()),
                          ),
                        ],
                      ).animate().fadeIn(delay: (300).ms).slideY(
                            begin: 0.8,
                            delay: (300).ms,
                          ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
