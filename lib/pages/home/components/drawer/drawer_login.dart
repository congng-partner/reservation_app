import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reservation_app/bloc/authentication_bloc.dart';
import 'package:reservation_app/data/user_model.dart';
import 'package:reservation_app/utils/assets_management.dart';

class DrawerLogin extends StatelessWidget {
  const DrawerLogin({Key? key, this.userInfo}) : super(key: key);

  final UserModel? userInfo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.transparent,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: Image.asset(
                    AssetsManagement.logoWithText,
                    fit: BoxFit.fill,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Image.asset(
                        userInfo?.avatarPath ??
                            AssetsManagement.avatarPlaceholder,
                        fit: BoxFit.fill,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                            userInfo?.name ?? '',
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: InkWell(
                            onTap: () {
                              // Navigator.pushNamed(
                              //     context, PageName.signUpPage);
                            },
                            child: Container(
                                width: MediaQuery.of(context).size.width / 2.8,
                                decoration: BoxDecoration(
                                    color: const Color(0xFF9D170F),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Padding(
                                  padding: EdgeInsets.only(top: 5, bottom: 5),
                                  child: Text(
                                    'Edit profile',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFFFEBEB),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.pushNamed(context, PageName.homePage);
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.home_outlined,
                                size: 35, color: Color(0xFF9D170F)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Home',
                              style: TextStyle(
                                  color: Color(0xFF9D170F), fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      height: 0,
                      color: Color(0xFFFFE0DC),
                      thickness: 1,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.pushNamed(
                        //     context, PageName.reservationPage);
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.menu_outlined,
                                size: 35, color: Color(0xFF9D170F)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Reservation',
                              style: TextStyle(
                                  color: Color(0xFF9D170F), fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      height: 0,
                      color: Color(0xFFFFE0DC),
                      thickness: 1,
                    ),
                    InkWell(
                        onTap: () {
                          // Navigator.pushNamed(
                          //     context, PageName.changePassPage);
                        },
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.lock_outline,
                                    size: 35, color: Color(0xFF9D170F)),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Change password',
                                  style: TextStyle(
                                      color: Color(0xFF9D170F), fontSize: 18),
                                ),
                              ),
                            ])),
                    const Divider(
                      height: 0,
                      color: Color(0xFFFFE0DC),
                      thickness: 1,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.pushNamed(
                        //     context, PageName.aboutUsPage);
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.info_outline,
                                size: 35, color: Color(0xFF9D170F)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'About us',
                              style: TextStyle(
                                  color: Color(0xFF9D170F), fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      height: 0,
                      color: Color(0xFFFFE0DC),
                      thickness: 1,
                    ),
                    InkWell(
                      onTap: () {
                        context
                            .read<AuthenticationBloc>()
                            .add(AuthLogoutEvent());
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.login,
                                size: 35, color: Color(0xFF9D170F)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Log out',
                              style: TextStyle(
                                  color: Color(0xFF9D170F), fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(company.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 15)),
                  Text(company.address, style: const TextStyle(fontSize: 15)),
                  Text(company.gpk, style: const TextStyle(fontSize: 15)),
                  Text(company.phoneNumber,
                      style: const TextStyle(fontSize: 15)),
                  Text(company.email, style: const TextStyle(fontSize: 15)),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class Company {
  String name;
  String address;
  String gpk;
  String phoneNumber;
  String email;

  Company(
    this.name,
    this.address,
    this.gpk,
    this.phoneNumber,
    this.email,
  );
}

Company company = Company(
    'Golden Gate Trading Service Joint Stock Company',
    'Head office: No. 60 Pho Duc Chinh Street, Nguyen Thai Binh Ward, District 1, HCMC, Vietnam',
    'GPK: 0102721191 issued on 09/04/2008',
    'Tel: 043 222 3000',
    'Email: support@anbbq.com.vn');
