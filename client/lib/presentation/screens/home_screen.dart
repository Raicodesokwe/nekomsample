import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:protobufs/protobufs.dart' as pr;
import 'package:shimmer/shimmer.dart';
import 'package:supplier/core/core.dart';
import 'package:supplier/models/supplier_model.dart';
import 'package:supplier/presentation/screens/add_supplier_one.dart';
import 'package:supplier/presentation/screens/supplier_details.dart';
import 'package:supplier/presentation/screens/update_supplier_one.dart';
import 'package:supplier/presentation/widgets/count_up_text.dart';
import 'package:supplier/presentation/widgets/failed_dialog.dart';

import 'package:supplier/presentation/widgets/supplier_search.dart';

import '../../client_stub.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> fadeAnimation;
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;

  pr.ResponseFuture<pr.SupplierListResponse>? supplierList;
  List<pr.Supplier> suppList = [];
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(controller);
    scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    scaleAnimation =
        CurvedAnimation(parent: scaleController, curve: Curves.elasticInOut);
    Future.delayed(const Duration(milliseconds: 600), () {
      controller.forward().then((value) => scaleController.forward());
    });
    supplierList =
        StubClass().getStub().getAllSupplier(pr.SupplierEmptyRequest());
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    scaleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: FadeTransition(
          opacity: fadeAnimation,
          child: Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/backgroundimage.png')),
              ),
              width: double.infinity,
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                      elevation: 0,
                      backgroundColor: Colors.transparent,
                      expandedHeight: size.height * 0.3,
                      automaticallyImplyLeading: false,
                      flexibleSpace: FlexibleSpaceBar(
                        background: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 2, color: Colors.black),
                                            shape: BoxShape.circle),
                                        child: SvgPicture.asset(
                                          'assets/images/face.svg',
                                        )),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Text(
                                      'Welcome, Erick',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'grifterbold',
                                      ),
                                    ),
                                    const Spacer(),
                                    Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 35,
                                          decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.black),
                                          child: const Center(
                                            child: Icon(
                                              FontAwesomeIcons.solidBell,
                                              color: Colors.white,
                                              size: 17,
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                            right: 0,
                                            top: 0,
                                            child: Container(
                                              height: 10,
                                              width: 10,
                                              decoration: const BoxDecoration(
                                                  color: Colors.red,
                                                  shape: BoxShape.circle),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: size.height * 0.01,
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: const Text(
                                    'Total number of suppliers',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ).animate().fadeIn(
                                        delay: 300.ms,
                                        duration: 1000.ms,
                                      ),
                                ),
                                FutureBuilder(
                                    future: supplierList,
                                    builder: (context,
                                        AsyncSnapshot<pr.SupplierListResponse>
                                            snapshot) {
                                      if (snapshot.hasError) {
                                        return Column(
                                          children: [
                                            const Icon(FontAwesomeIcons
                                                .windowMinimize),
                                            Lottie.asset(
                                              'assets/images/empty.json',
                                            ),
                                            const Text(
                                              'Something went wrong',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        );
                                      } else if (!snapshot.hasData) {
                                        return Column(
                                          children: [
                                            const Icon(FontAwesomeIcons
                                                .windowMinimize),
                                            Lottie.asset(
                                              'assets/images/empty.json',
                                            ),
                                            const Text(
                                              'No suppliers available',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        );
                                      } else if (snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                        return Shimmer.fromColors(
                                          baseColor:
                                              tertiaryColor.withOpacity(0.5),
                                          highlightColor:
                                              tertiaryColor.withOpacity(0.3),
                                          child: Container(
                                            height: 50,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                color: tertiaryColor
                                                    .withOpacity(0.7),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                        topRight:
                                                            Radius.circular(12),
                                                        topLeft:
                                                            Radius.circular(
                                                                12))),
                                          ),
                                        );
                                      } else {
                                        suppList = snapshot.data!.supplier;
                                        return Align(
                                          alignment: Alignment.centerLeft,
                                          child: CountupText(
                                            begin: 0,
                                            end: suppList.length,
                                            duration: 1.seconds,
                                            style: const TextStyle(
                                                fontFamily: 'grifterbold',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 60),
                                          ),
                                        );
                                      }
                                    }),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () async {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    const AddSupplierOne()))
                                            .then((value) {
                                          setState(() {
                                            supplierList = StubClass()
                                                .getStub()
                                                .getAllSupplier(
                                                    pr.SupplierEmptyRequest());
                                          });
                                        });
                                      },
                                      child: ScaleTransition(
                                        scale: scaleAnimation,
                                        child: Container(
                                          height: 50,
                                          width: size.width * 0.35,
                                          decoration: BoxDecoration(
                                              color: tertiaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                FontAwesomeIcons.plus,
                                                color: Colors.white,
                                                size: 11,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Add supplier',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        suppList == [] || suppList.isEmpty
                                            ? showDialog(
                                                context: context,
                                                builder: (ctx) {
                                                  return const FailedDialog(
                                                      message:
                                                          'No suppliers available');
                                                })
                                            : showModalBottomSheet(
                                                context: context,
                                                isScrollControlled: true,
                                                backgroundColor: Colors.white,
                                                builder: (ctx) {
                                                  return SupplierSearch(
                                                    size: size,
                                                    suppList: suppList,
                                                  );
                                                });
                                      },
                                      child: ScaleTransition(
                                        scale: scaleAnimation,
                                        child: Container(
                                          height: 50,
                                          width: size.width * 0.35,
                                          decoration: BoxDecoration(
                                              color: tertiaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                FontAwesomeIcons
                                                    .magnifyingGlass,
                                                color: Colors.white,
                                                size: 11,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                'Search supplier',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      )),
                  SliverFillRemaining(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: FutureBuilder(
                            future: supplierList,
                            builder: (context,
                                AsyncSnapshot<pr.SupplierListResponse>
                                    snapshot) {
                              if (snapshot.hasError) {
                                return Column(
                                  children: [
                                    const Icon(FontAwesomeIcons.windowMinimize),
                                    Lottie.asset(
                                      'assets/images/empty.json',
                                    ),
                                    const Text(
                                      'Something went wrong',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                );
                              } else if (!snapshot.hasData) {
                                return Column(
                                  children: [
                                    const Icon(FontAwesomeIcons.windowMinimize),
                                    Lottie.asset(
                                      'assets/images/empty.json',
                                    ),
                                    const Text(
                                      'No suppliers available',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                );
                              } else if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Shimmer.fromColors(
                                  baseColor: tertiaryColor.withOpacity(0.5),
                                  highlightColor:
                                      tertiaryColor.withOpacity(0.3),
                                  child: Container(
                                    height: size.height * 0.2,
                                    width: size.width * 0.85,
                                    decoration: BoxDecoration(
                                        color: tertiaryColor.withOpacity(0.7),
                                        borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(12),
                                            topLeft: Radius.circular(12))),
                                  ),
                                );
                              } else {
                                suppList = snapshot.data!.supplier;

                                return suppList.isEmpty
                                    ? Column(
                                        children: [
                                          const Icon(
                                              FontAwesomeIcons.windowMinimize),
                                          Lottie.asset(
                                            'assets/images/empty.json',
                                          ),
                                          const Text(
                                            'No suppliers available',
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: size.height * 0.01,
                                            ),
                                            const Text(
                                              'Suppliers',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.01,
                                            ),
                                            Wrap(
                                              children: List.generate(
                                                  suppList.length,
                                                  (index) => Slidable(
                                                        endActionPane: ActionPane(
                                                            motion:
                                                                const StretchMotion(),
                                                            children: [
                                                              SlidableAction(
                                                                onPressed:
                                                                    (ctx) async {
                                                                  await StubClass()
                                                                      .getStub()
                                                                      .deleteSupplier(pr.SupplierUuidRequest(
                                                                          uuid: suppList[index]
                                                                              .uuid))
                                                                      .then(
                                                                          (value) {
                                                                    setState(
                                                                        () {
                                                                      supplierList = StubClass()
                                                                          .getStub()
                                                                          .getAllSupplier(
                                                                              pr.SupplierEmptyRequest());
                                                                    });
                                                                  });
                                                                },
                                                                icon: Icons
                                                                    .delete,
                                                                backgroundColor:
                                                                    Colors.red,
                                                                foregroundColor:
                                                                    Colors
                                                                        .white,
                                                                label: 'Delete',
                                                              ),
                                                              SlidableAction(
                                                                onPressed:
                                                                    (ctx) {
                                                                  setState(() {
                                                                    SupplierModel
                                                                        .city = suppList[
                                                                            index]
                                                                        .address
                                                                        .city;
                                                                    SupplierModel
                                                                        .countryISO3 = suppList[
                                                                            index]
                                                                        .address
                                                                        .countryISO3;
                                                                    SupplierModel
                                                                        .firstName = suppList[
                                                                            index]
                                                                        .address
                                                                        .firstName;
                                                                    SupplierModel
                                                                        .lastName = suppList[
                                                                            index]
                                                                        .address
                                                                        .lastName;
                                                                    SupplierModel
                                                                        .houseNumber = suppList[
                                                                            index]
                                                                        .address
                                                                        .houseNumber;
                                                                    SupplierModel
                                                                        .street = suppList[
                                                                            index]
                                                                        .address
                                                                        .street;
                                                                    SupplierModel
                                                                        .street2 = suppList[
                                                                            index]
                                                                        .address
                                                                        .street2;
                                                                    SupplierModel
                                                                        .zip = suppList[
                                                                            index]
                                                                        .address
                                                                        .zip;
                                                                    SupplierModel
                                                                        .email = suppList[
                                                                            index]
                                                                        .email;
                                                                    SupplierModel
                                                                        .internalSupplier = suppList[
                                                                            index]
                                                                        .internalSupplier;

                                                                    SupplierModel
                                                                        .name1 = suppList[
                                                                            index]
                                                                        .name1;

                                                                    SupplierModel
                                                                        .name2 = suppList[
                                                                            index]
                                                                        .name2;
                                                                    SupplierModel
                                                                        .shippingTime = suppList[
                                                                            index]
                                                                        .shippingTime;
                                                                    SupplierModel
                                                                        .supplierId = suppList[
                                                                            index]
                                                                        .supplierId;
                                                                    SupplierModel
                                                                        .supplyment = suppList[
                                                                            index]
                                                                        .supplyment;
                                                                    SupplierModel
                                                                        .uuid = suppList[
                                                                            index]
                                                                        .uuid;
                                                                  });
                                                                  Navigator.of(
                                                                          context)
                                                                      .push(MaterialPageRoute(
                                                                          builder: (context) => UpdateSupplierOne(
                                                                                supplierItem: suppList[index],
                                                                              )))
                                                                      .then((value) {
                                                                    setState(
                                                                        () {
                                                                      supplierList = StubClass()
                                                                          .getStub()
                                                                          .getAllSupplier(
                                                                              pr.SupplierEmptyRequest());
                                                                    });
                                                                  });
                                                                },
                                                                icon:
                                                                    Icons.edit,
                                                                backgroundColor:
                                                                    Colors
                                                                        .green,
                                                                foregroundColor:
                                                                    Colors
                                                                        .white,
                                                                label: 'Update',
                                                              ),
                                                            ]),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  bottom: 5),
                                                          child:
                                                              AnimationConfiguration
                                                                  .staggeredList(
                                                            position: index,
                                                            duration:
                                                                const Duration(
                                                                    seconds: 1),
                                                            child:
                                                                SlideAnimation(
                                                              verticalOffset:
                                                                  50.0,
                                                              child: Card(
                                                                elevation: 3,
                                                                child: ListTile(
                                                                  onTap: () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .push(MaterialPageRoute(
                                                                            builder: (context) => SupplierDetails(
                                                                                  supplierItem: suppList[index],
                                                                                )));
                                                                  },
                                                                  leading:
                                                                      Container(
                                                                    height: 30,
                                                                    width: 30,
                                                                    decoration: const BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Color(
                                                                            0xFFF6BFF6)),
                                                                    child:
                                                                        const Icon(
                                                                      FontAwesomeIcons
                                                                          .bullseye,
                                                                      color:
                                                                          tertiaryColor,
                                                                      size: 11,
                                                                    ),
                                                                  ),
                                                                  tileColor:
                                                                      Colors
                                                                          .white,
                                                                  shape: RoundedRectangleBorder(
                                                                      side: const BorderSide(
                                                                          color: Colors
                                                                              .black12,
                                                                          width:
                                                                              1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10)),
                                                                  title: Text(
                                                                      '${suppList[index].address.firstName} ${suppList[index].address.lastName}'),
                                                                  subtitle: Text(suppList[
                                                                          index]
                                                                      .address
                                                                      .street),
                                                                  trailing:
                                                                      const Icon(
                                                                    Icons
                                                                        .keyboard_arrow_right,
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      )),
                                            ),
                                          ],
                                        ),
                                      );
                              }
                            }),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
