import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:splitpro/utils.dart';

class Onboarding2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: TextButton(
        // onboardingonboarding2ty2 (374:3)
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          width: double.infinity,
          height: 812 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // autogroupvuvlCip (RDX9bgjzo2nQJwsrffVuvL)
                left: 0 * fem,
                top: 87.6665849686 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      20 * fem, 341.33 * fem, 12 * fem, 42 * fem),
                  width: 375 * fem,
                  height: 724.33 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // descriptionh9n (374:4)
                        margin: EdgeInsets.fromLTRB(
                            27 * fem, 0 * fem, 36 * fem, 31 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // knowwhereyourmoneygoesdZE (374:5)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 16 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 280 * fem,
                              ),
                              child: Text(
                                'Know where your \nmoney goes',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 32 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.21875 * ffem / fem,
                                  color: Color(0xff212224),
                                ),
                              ),
                            ),
                            Container(
                              // trackyourtransactioneasilywith (374:6)
                              constraints: BoxConstraints(
                                maxWidth: 272 * fem,
                              ),
                              child: Text(
                                'Track your transaction easily,\nwith categories and financial report ',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff90909f),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // indicatorzo6 (993:5336)
                        margin: EdgeInsets.fromLTRB(
                            135 * fem, 0 * fem, 144 * fem, 33 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse19Y3v (993:5339)
                              width: 8 * fem,
                              height: 8 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4 * fem),
                                color: Color(0xffeee5ff),
                              ),
                            ),
                            SizedBox(
                              width: 16 * fem,
                            ),
                            Container(
                              // ellipse18Suz (993:5337)
                              width: 16 * fem,
                              height: 16 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8 * fem),
                                color: Color(0xff29b683),
                              ),
                            ),
                            SizedBox(
                              width: 16 * fem,
                            ),
                            Container(
                              // ellipse20y9E (993:5338)
                              width: 8 * fem,
                              height: 8 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4 * fem),
                                color: Color(0xffeee5ff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // buttonlargeKD6 (816:206)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 16 * fem),
                        width: double.infinity,
                        height: 56 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff29b683),
                          borderRadius: BorderRadius.circular(16 * fem),
                        ),
                        child: Center(
                          child: Center(
                            child: Text(
                              'Sign Up',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff292b2d),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // buttonlargeBFJ (816:207)
                        width: double.infinity,
                        height: 56 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffcff9ea),
                          borderRadius: BorderRadius.circular(16 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff292b2d),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // homeindicatorr1z (I816:218;217:6977)
                left: 121 * fem,
                top: 799 * fem,
                child: Align(
                  child: SizedBox(
                    width: 134 * fem,
                    height: 5 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100 * fem),
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // cashreceiptfromonlineshoppingo (1419:4341)
                left: 90 * fem,
                top: 106 * fem,
                child: Align(
                  child: SizedBox(
                    width: 226 * fem,
                    height: 271 * fem,
                    child: Image.asset(
                      'assets/master-design/images/cash-receipt-from-online-shopping-on-mobile-phone.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
