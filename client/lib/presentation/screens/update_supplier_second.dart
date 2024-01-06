import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:protobufs/protobufs.dart';
import 'package:supplier/client_stub.dart';
import 'package:supplier/models/supplier_model.dart';
import 'package:supplier/presentation/widgets/drop_down_widget.dart';
import 'package:supplier/presentation/widgets/failed_dialog.dart';
import 'package:supplier/presentation/widgets/success_dialog.dart';

import '../../core/constants/colors.dart';
import '../../utils/date_util.dart';
import '../widgets/date_input.dart';
import '../widgets/text_box_widget.dart';

class UpdateSupplierSecond extends StatefulWidget {
  final Supplier supplierItem;
  const UpdateSupplierSecond({super.key, required this.supplierItem});

  @override
  State<UpdateSupplierSecond> createState() => _UpdateSupplierSecondState();
}

class _UpdateSupplierSecondState extends State<UpdateSupplierSecond>
    with SingleTickerProviderStateMixin {
  late AnimationController _slideAndFadeController;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _fadeAnimation;
  final Duration animDuration = const Duration(milliseconds: 250);
  final _additionalDetailsForm = GlobalKey<FormState>();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _name1Controller = TextEditingController();
  final TextEditingController _name2Controller = TextEditingController();
  final TextEditingController _supplierIDController = TextEditingController();
  DateTime selectedTime = DateTime.now();
  String? email;
  String? name1;
  String? name2;
  String? supplierId;
  String? selectedVal;
  String? selectedValTwo;
  bool isLoading = false;

  checkFields() {
    final form = _additionalDetailsForm.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  List<String> internalSupplierOptions = ['true', 'false'];
  List<String> supplymentList = ['central', 'cross docking'];
  @override
  void initState() {
    super.initState();
    _emailController.text = widget.supplierItem.email;
    selectedVal = widget.supplierItem.internalSupplier ? 'true' : 'false';
    _name1Controller.text = widget.supplierItem.name1;
    _name2Controller.text = widget.supplierItem.name2;
    _timeController.text = DateFormat('HH:mm').format(
        DateTime.fromMillisecondsSinceEpoch(
            int.parse(widget.supplierItem.shippingTime.toString())));
    _supplierIDController.text = widget.supplierItem.supplierId;
    selectedValTwo = widget.supplierItem.supplyment == Supplyment.CENTRAL
        ? 'central'
        : 'cross docking';
    _slideAndFadeController =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..forward();

    _offsetAnimation =
        Tween<Offset>(begin: const Offset(-0.5, 0.0), end: Offset.zero).animate(
            CurvedAnimation(
                parent: _slideAndFadeController, curve: Curves.easeIn));

    _fadeAnimation =
        CurvedAnimation(parent: _slideAndFadeController, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Future<DateTime?> pickDateTime(DateTime initialDate,
        {required bool pickDate, DateTime? firstDate}) async {
      if (pickDate) {
        final date = await showDatePicker(
          builder: (BuildContext context, Widget? child) {
            return Theme(
              data: ThemeData(
                fontFamily: 'grifterbold',
                colorScheme: const ColorScheme.light(
                  primary: Color(0xFFD450D4), // header background color
                  onPrimary: Color(0xFFF6BFF6), // header text color
                  onSurface: tertiaryColor, // body text color
                ),
              ),
              child: child!,
            );
          },
          context: context,
          initialDate: initialDate,
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 14)),
        );
        if (date == null) return null;
        final time =
            Duration(hours: initialDate.hour, minutes: initialDate.minute);
        return date.add(time);
      } else {
        final timeOfDay = await showTimePicker(
            builder: (BuildContext context, Widget? child) {
              return Theme(
                data: ThemeData(
                  fontFamily: 'grifterbold',
                  colorScheme: const ColorScheme.light(
                    primary: Color(0xFFD450D4), // header background color
                    onPrimary: Color(0xFFF6BFF6), // header text color
                    onSurface: tertiaryColor, // body text color
                  ),
                ),
                child: child!,
              );
            },
            context: context,
            initialTime: TimeOfDay.fromDateTime(initialDate));
        if (timeOfDay == null) return null;
        final date =
            DateTime(initialDate.year, initialDate.month, initialDate.day);
        final time = Duration(hours: timeOfDay.hour, minutes: timeOfDay.minute);
        return date.add(time);
      }
    }

    Future pickToDateTime({required bool pickDate}) async {
      final date = await pickDateTime(selectedTime,
          firstDate: selectedTime, pickDate: pickDate);
      if (date == null) return;

      setState(() => selectedTime = date);
    }

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
                    child: Text('Additional Details',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black),
                                    child: const Center(
                                      child: Text(
                                        '1',
                                        style: TextStyle(
                                            color: Colors.white,
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
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 2),
                                        shape: BoxShape.circle,
                                        color: const Color(0xFFF6BFF6)),
                                    child: const Center(
                                      child: Text(
                                        '2',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Form(
                                  key: _additionalDetailsForm,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: size.height * 0.015,
                                      ),
                                      const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('E-mail')),
                                      TextBoxWidget(
                                        controller: _emailController,
                                        onChanged: (value) {
                                          setState(() {
                                            email = value;
                                            SupplierModel.email = email;
                                          });
                                        },
                                        validator: (value) => value!.isEmpty
                                            ? 'valid email is required'
                                            : null,
                                        hintText: 'email',
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
                                          child: Text('Internal supplier')),
                                      DropDownWidget(
                                        selectedValue: selectedVal,
                                        dropdownData: internalSupplierOptions,
                                        validator: (value) => value == null
                                            ? 'valid internal supplier option is required'
                                            : null,
                                        hintText: 'internal supplier',
                                        onChanged: (value) {
                                          setState(() {
                                            selectedVal = value;
                                            SupplierModel.internalSupplier =
                                                selectedVal == 'true'
                                                    ? true
                                                    : false;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        height: size.height * 0.015,
                                      ),
                                      const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('Name1')),
                                      TextBoxWidget(
                                        controller: _name1Controller,
                                        onChanged: (value) {
                                          setState(() {
                                            name1 = value;
                                            SupplierModel.name1 = name1;
                                          });
                                        },
                                        validator: (value) => value!.isEmpty
                                            ? 'valid name1 is required'
                                            : null,
                                        hintText: 'name1',
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
                                          child: Text('Name2')),
                                      TextBoxWidget(
                                        controller: _name2Controller,
                                        onChanged: (value) {
                                          setState(() {
                                            name2 = value;
                                            SupplierModel.name2 = name2;
                                          });
                                        },
                                        validator: (value) => value!.isEmpty
                                            ? 'valid name2 is required'
                                            : null,
                                        hintText: 'name2',
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
                                          child: Text('Shipping time')),
                                      DateInput(
                                        controller: _timeController,
                                        onTap: () async {
                                          await pickToDateTime(pickDate: false);
                                          _timeController.text =
                                              Utils.toTime(selectedTime);
                                          setState(() {
                                            SupplierModel.shippingTime = Int64(
                                                selectedTime
                                                    .millisecondsSinceEpoch);
                                          });
                                        },
                                        hintText: 'shipping time',
                                      ),
                                      SizedBox(
                                        height: size.height * 0.015,
                                      ),
                                      const Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text('Supplier ID')),
                                      TextBoxWidget(
                                        controller: _supplierIDController,
                                        onChanged: (value) {
                                          setState(() {
                                            supplierId = value;
                                            SupplierModel.supplierId =
                                                supplierId;
                                          });
                                        },
                                        validator: (value) => value!.isEmpty
                                            ? 'valid supplier id is required'
                                            : null,
                                        hintText: 'supplier id',
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
                                          child: Text('Supplyment')),
                                      DropDownWidget(
                                        selectedValue: selectedValTwo,
                                        dropdownData: supplymentList,
                                        validator: (value) => value == null
                                            ? 'valid supplyment option is required'
                                            : null,
                                        hintText: 'supplyment',
                                        onChanged: (value) {
                                          setState(() {
                                            selectedValTwo = value;
                                            SupplierModel.supplyment =
                                                selectedVal == 'central'
                                                    ? Supplyment.CENTRAL
                                                    : Supplyment.CROSS_DOCKING;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      GestureDetector(
                                        onTap: () async {
                                          if (checkFields()) {
                                            setState(() {
                                              isLoading = true;
                                            });
                                            await StubClass()
                                                .getStub()
                                                .updateSupplier(
                                                    UpdateSupplierRequest()
                                                      ..address = SupplierAddress(
                                                          city: SupplierModel
                                                              .city!,
                                                          countryISO3:
                                                              SupplierModel
                                                                  .countryISO3!,
                                                          firstName: SupplierModel
                                                              .firstName!,
                                                          lastName:
                                                              SupplierModel
                                                                  .lastName!,
                                                          houseNumber:
                                                              SupplierModel
                                                                  .houseNumber!,
                                                          street2: SupplierModel
                                                              .street2!,
                                                          street: SupplierModel
                                                              .street!,
                                                          zip: SupplierModel
                                                              .zip!)
                                                      ..email =
                                                          SupplierModel.email!
                                                      ..internalSupplier =
                                                          SupplierModel
                                                              .internalSupplier!
                                                      ..name1 =
                                                          SupplierModel.name1!
                                                      ..name2 =
                                                          SupplierModel.name2!
                                                      ..shippingTime =
                                                          SupplierModel
                                                              .shippingTime!
                                                      ..supplierId =
                                                          SupplierModel
                                                              .supplierId!
                                                      ..supplyment =
                                                          SupplierModel
                                                              .supplyment!
                                                      ..uuid =
                                                          SupplierModel.uuid!)
                                                .then((value) {
                                              setState(() {
                                                isLoading = false;
                                              });
                                              if (value.metaResponse
                                                      .errorMessage ==
                                                  "") {
                                                showDialog(
                                                    context: context,
                                                    builder: (ctx) {
                                                      return SuccessDialog(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          message:
                                                              'successfully updated the supplier');
                                                    });
                                              } else {
                                                showDialog(
                                                    context: context,
                                                    builder: (ctx) {
                                                      return const FailedDialog(
                                                          message:
                                                              'unable to update the supplier');
                                                    });
                                              }
                                            });
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
                                          child: Center(
                                            child: isLoading
                                                ? const CircularProgressIndicator(
                                                    color: Colors.white,
                                                  )
                                                : const Text(
                                                    'Submit',
                                                    style: TextStyle(
                                                        fontSize: 24,
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.03,
                                      ),
                                    ],
                                  ))
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
        ),
      ),
    );
  }
}
