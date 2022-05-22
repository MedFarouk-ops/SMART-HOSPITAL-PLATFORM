import 'package:flutter/material.dart';
import 'package:pfe_frontend/accueil/models/reservation.dart';
import 'package:pfe_frontend/admin/widget/reservations_list.dart';
import 'package:pfe_frontend/authentication/context/authcontext.dart';
import 'package:pfe_frontend/authentication/models/user.dart';
import 'package:pfe_frontend/authentication/utils/colors.dart';
import 'package:pfe_frontend/docteur/utils/doctor_api_methods.dart';
import 'package:pfe_frontend/docteur/widgets/DoctorCustomListScroller.dart';
import 'package:pfe_frontend/docteur/widgets/Reservation_Today.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DocteurHome extends StatefulWidget {
  const DocteurHome({ Key? key }) : super(key: key);

  @override
  State<DocteurHome> createState() => _DocteurHomeState();
}

class _DocteurHomeState extends State<DocteurHome> {
  

  
    List<Reservation> todayReservations = [];
  
    void setStateIfMounted(f) {
      if (mounted) setState(f);
    }
     
    _getReservationList() async {
    User user = await AuthContext().getUserDetails();
    print(user.first_name);
    todayReservations = await DoctorApiMethods().getDoctorTodayReservationList(user.id);
    print(todayReservations.length);
    setStateIfMounted(() {});
  }

    @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _getReservationList();
    }


  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height*0.30;

    if(todayReservations.isEmpty){
          return const Scaffold( body : Center(
            child : CircularProgressIndicator()
      ),);
    }


    return Scaffold(
      backgroundColor: thirdAdminColor,
      body: SafeArea(
        child: Container(
          height: height,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: -MediaQuery.of(context).size.height * .05,
                right: -MediaQuery.of(context).size.width * .1,
                child: Container(),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Column( children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: 1,
                      child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          width: size.width,
                          alignment: Alignment.topCenter,
                          height: categoryHeight,
                          child: DoctorCustomListScroller(),

                      )),
                      TodayReservationLayout(reservations: todayReservations ),
                      const SizedBox(height: 16),
                      ],
                    ),
                  ],
                ),
              ),
            ),
     ],
    ))));
  }
}