import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:protobufs/protobufs.dart';
import 'package:supplier/presentation/widgets/text_box_widget.dart';

import '../../core/constants/colors.dart';
import '../screens/supplier_details.dart';

class SupplierSearch extends StatefulWidget {
  final List<Supplier> suppList;
  const SupplierSearch({
    super.key,
    required this.size,
    required this.suppList,
  });

  final Size size;

  @override
  State<SupplierSearch> createState() => _SupplierSearchState();
}

class _SupplierSearchState extends State<SupplierSearch> {
  List<Supplier> filteredSuppList = [];
  void filterSupplier(String query) {
    setState(() {
      filteredSuppList = widget.suppList
          .where((element) => element.address.firstName
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: widget.size.height * 0.05,
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              const Spacer(),
              SizedBox(
                width: widget.size.width * 0.09,
              ),
            ],
          ),
          TextBoxWidget(
            hintText: 'Search for a supplier',
            onChanged: filterSupplier,
            suffixIcon: const Icon(Icons.search),
          ),
          Wrap(
            children: List.generate(
              filteredSuppList.length,
              (index) => Card(
                elevation: 3,
                child: ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SupplierDetails(
                              supplierItem: filteredSuppList[index],
                            )));
                  },
                  leading: Container(
                    height: 30,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFF6BFF6)),
                    child: const Icon(
                      FontAwesomeIcons.bullseye,
                      color: tertiaryColor,
                      size: 11,
                    ),
                  ),
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  title: Text(
                      '${filteredSuppList[index].address.firstName} ${filteredSuppList[index].address.lastName}'),
                  subtitle: Text(filteredSuppList[index].address.street),
                  trailing: const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
