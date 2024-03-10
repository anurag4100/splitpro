import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:splitpro/utils.dart';

class Onboarding1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: TextButton(
        // onboardingonboarding1T16 (1109:7569)
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
                // autogroupgfreMsA (RDXAKzrpx9KBig5be5GfRe)
                left: 0 * fem,
                top: 44 * fem,
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      20 * fem, 385 * fem, 12 * fem, 8 * fem),
                  width: 375 * fem,
                  height: 768 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // descriptionrZ2 (1109:7571)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 8 * fem, 30.5 * fem),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // steeryourspendingsteeryoursucc (1109:7572)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 16.5 * fem),
                              constraints: BoxConstraints(
                                maxWidth: 329 * fem,
                              ),
                              child: Text(
                                'Master Your Finance Master Your Future',
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
                            Center(
                              // embracefinancialindependencebe (1109:7573)
                              child: Container(
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 1 * fem, 0 * fem),
                                constraints: BoxConstraints(
                                  maxWidth: 259 * fem,
                                ),
                                child: Text(
                                  'Embrace financial Independence, become your own money maestro',
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
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // indicatorY4U (1109:7579)
                        margin: EdgeInsets.fromLTRB(
                            135 * fem, 0 * fem, 144 * fem, 33 * fem),
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // ellipse21s6k (1109:7580)
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
                              // ellipse23Pqn (1109:7582)
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
                              // ellipse22KDe (1109:7581)
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
                        // buttonlargeT4x (1109:7574)
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
                        // buttonlargeK7A (1109:7575)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 29 * fem),
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
                      Container(
                        // homeindicatorCAx (I1109:7576;217:6977)
                        margin: EdgeInsets.fromLTRB(
                            101 * fem, 0 * fem, 108 * fem, 0 * fem),
                        width: double.infinity,
                        height: 5 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100 * fem),
                          color: Color(0xff000000),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // homeindicatorngt (I1109:7577;217:6977)
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
                // peopleworkingandtransferringmo (1419:4342)
                left: 36 * fem,
                top: 73 * fem,
                child: Align(
                  child: SizedBox(
                    width: 302 * fem,
                    height: 311 * fem,
                    child: Image.asset(
                      'assets/master-design/images/people-working-and-transferring-money.png',
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
