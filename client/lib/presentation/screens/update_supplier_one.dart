import 'package:flutter/material.dart';
import 'package:protobufs/protobufs.dart';
import 'package:supplier/core/core.dart';
import 'package:supplier/models/supplier_model.dart';
import 'package:supplier/presentation/screens/update_supplier_second.dart';
import 'package:supplier/presentation/widgets/text_box_widget.dart';

class UpdateSupplierOne extends StatefulWidget {
  final Supplier supplierItem;
  const UpdateSupplierOne({super.key, required this.supplierItem});

  @override
  State<UpdateSupplierOne> createState() => _UpdateSupplierOneState();
}

class _UpdateSupplierOneState extends State<UpdateSupplierOne>
    with SingleTickerProviderStateMixin {
  final _addressDetailsForm = GlobalKey<FormState>();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _countryISO3Controller = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _houseNumberController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  final TextEditingController _street2Controller = TextEditingController();
  final TextEditingController _zipController = TextEditingController();
  String? city;
  String? countryISO3;
  String? firstName;
  String? lastName;
  String? houseNumber;
  String? street;
  String? street2;
  String? zip;
  late AnimationController _slideAndFadeController;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _fadeAnimation;
  final Duration animDuration = const Duration(milliseconds: 250);
  checkFields() {
    final form = _addressDetailsForm.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
    _cityController.text = widget.supplierItem.address.city;
    _countryISO3Controller.text = widget.supplierItem.address.countryISO3;
    _firstNameController.text = widget.supplierItem.address.firstName;
    _lastNameController.text = widget.supplierItem.address.lastName;
    _houseNumberController.text = widget.supplierItem.address.houseNumber;
    _streetController.text = widget.supplierItem.address.street;
    _street2Controller.text = widget.supplierItem.address.street2;
    _zipController.text = widget.supplierItem.address.zip;
    _slideAndFadeController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..forward();

    _offsetAnimation =
        Tween<Offset>(begin: const Offset(0.0, 0.5), end: Offset.zero).animate(
            CurvedAnimation(
                parent: _slideAndFadeController, curve: Curves.easeIn));

    _fadeAnimation =
        CurvedAnimation(parent: _slideAndFadeController, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: FadeTransition(
        opacity: _fadeAnimation,
        child: Container(
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/backgroundimage.png')),
          ),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      size: 35,
                    ),
                  ),
                ),
                centerTitle: true,
                title: const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('Address Details',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'grifterbold',
                          color: Colors.black)),
                ),
                iconTheme: const IconThemeData(color: Colors.black),
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Colors.transparent,
                expandedHeight: size.height * 0.1,
              ),
              SliverFillRemaining(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: SlideTransition(
                        position: _offsetAnimation,
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.015,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      border: Border.all(width: 2),
                                      shape: BoxShape.circle,
                                      color: const Color(0xFFF6BFF6)),
                                  child: const Center(
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: size.width * 0.4,
                                  height: 2,
                                  color: Colors.black,
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                  child: const Center(
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Form(
                              key: _addressDetailsForm,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: size.height * 0.015,
                                  ),
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('City')),
                                  TextBoxWidget(
                                    controller: _cityController,
                                    onChanged: (value) {
                                      setState(() {
                                        city = value;
                                        SupplierModel.city = city;
                                      });
                                    },
                                    validator: (value) => value!.isEmpty
                                        ? 'valid city is required'
                                        : null,
                                    hintText: 'city',
                                    suffixIcon: const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.015,
                                  ),
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('CountryISO3')),
                                  TextBoxWidget(
                                    controller: _countryISO3Controller,
                                    onChanged: (value) {
                                      setState(() {
                                        countryISO3 = value;
                                        SupplierModel.countryISO3 = countryISO3;
                                      });
                                    },
                                    validator: (value) => value!.isEmpty
                                        ? 'valid countryISO3 is required'
                                        : null,
                                    hintText: 'countryISO3',
                                    suffixIcon: const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.015,
                                  ),
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('First name')),
                                  TextBoxWidget(
                                    controller: _firstNameController,
                                    onChanged: (value) {
                                      setState(() {
                                        firstName = value;
                                        SupplierModel.firstName = firstName;
                                      });
                                    },
                                    validator: (value) => value!.isEmpty
                                        ? 'valid first name is required'
                                        : null,
                                    hintText: 'first name',
                                    suffixIcon: const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.015,
                                  ),
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('Last name')),
                                  TextBoxWidget(
                                    controller: _lastNameController,
                                    onChanged: (value) {
                                      setState(() {
                                        lastName = value;
                                        SupplierModel.lastName = lastName;
                                      });
                                    },
                                    validator: (value) => value!.isEmpty
                                        ? 'valid last name is required'
                                        : null,
                                    hintText: 'last name',
                                    suffixIcon: const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.015,
                                  ),
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('House number')),
                                  TextBoxWidget(
                                    controller: _houseNumberController,
                                    onChanged: (value) {
                                      setState(() {
                                        houseNumber = value;
                                        SupplierModel.houseNumber = houseNumber;
                                      });
                                    },
                                    validator: (value) => value!.isEmpty
                                        ? 'valid house number is required'
                                        : null,
                                    hintText: 'house number',
                                    suffixIcon: const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.015,
                                  ),
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('Street')),
                                  TextBoxWidget(
                                    controller: _streetController,
                                    onChanged: (value) {
                                      setState(() {
                                        street = value;
                                        SupplierModel.street = street;
                                      });
                                    },
                                    validator: (value) => value!.isEmpty
                                        ? 'valid street is required'
                                        : null,
                                    hintText: 'street',
                                    suffixIcon: const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.015,
                                  ),
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('Second street')),
                                  TextBoxWidget(
                                    controller: _street2Controller,
                                    onChanged: (value) {
                                      setState(() {
                                        street2 = value;
                                        SupplierModel.street2 = street2;
                                      });
                                    },
                                    validator: (value) => value!.isEmpty
                                        ? 'valid second street is required'
                                        : null,
                                    hintText: 'second street',
                                    suffixIcon: const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.015,
                                  ),
                                  const Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text('Zip')),
                                  TextBoxWidget(
                                    controller: _zipController,
                                    onChanged: (value) {
                                      setState(() {
                                        zip = value;
                                        SupplierModel.zip = zip;
                                      });
                                    },
                                    validator: (value) => value!.isEmpty
                                        ? 'valid zip is required'
                                        : null,
                                    hintText: 'zip',
                                    suffixIcon: const Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Text(
                                        '*',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.02,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      if (checkFields()) {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UpdateSupplierSecond(
                                                      supplierItem:
                                                          widget.supplierItem,
                                                    )));
                                      }
                                    },
                                    child: Container(
                                      height: 50,
                                      width: size.width * 0.45,
                                      decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                                offset: Offset(0, 6),
                                                blurRadius: 6,
                                                spreadRadius: 5,
                                                color: Colors.black12)
                                          ],
                                          color: tertiaryColor,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                        child: Text(
                                          'Next',
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
