import 'package:flutter/material.dart';
import 'package:supplier/core/core.dart';
import 'package:supplier/models/supplier_model.dart';
import 'package:supplier/presentation/screens/add_supplier_second.dart';
import 'package:supplier/presentation/widgets/text_box_widget.dart';

class AddSupplierOne extends StatefulWidget {
  const AddSupplierOne({super.key});

  @override
  State<AddSupplierOne> createState() => _AddSupplierOneState();
}

class _AddSupplierOneState extends State<AddSupplierOne>
    with SingleTickerProviderStateMixin {
  late AnimationController _slideAndFadeController;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _fadeAnimation;
  final Duration animDuration = const Duration(milliseconds: 250);
  final _addressDetailsForm = GlobalKey<FormState>();
  String? city;
  String? countryISO3;
  String? firstName;
  String? lastName;
  String? houseNumber;
  String? street;
  String? street2;
  String? zip;
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
  void dispose() {
    super.dispose();
    _slideAndFadeController.dispose();
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
                                  TextBoxWidget(
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
                                  TextBoxWidget(
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
                                  TextBoxWidget(
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
                                  TextBoxWidget(
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
                                  TextBoxWidget(
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
                                  TextBoxWidget(
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
                                  TextBoxWidget(
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
                                  TextBoxWidget(
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
                                                    const AddSupplierSecond()));
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
