import 'package:flutter/material.dart';
import '../ff_theme.dart';
import '../testtask/testtask_widget.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 55, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                  child: Image.asset(
                    'assets/images/user.png',
                    width: 45,
                    height: 45,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Juanita Nguyen',
                        style: FFTheme.bodyText1.override(
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'somemail@mail.com',
                        style: FFTheme.bodyText1.override(
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Image.asset(
                    'assets/images/SignOut.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(45, 41, 0, 0),
                child: InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TesttaskWidget(),
                      ),
                    );
                  },
                  child: Text(
                    'Все меню',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(45, 23, 0, 0),
                child: Text(
                  'Заказы',
                  style: FFTheme.bodyText1.override(
                    fontFamily: 'Noto Sans',
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(153, 23, 0, 0),
                child: Image.asset(
                  'assets/images/3.png',
                  width: 24,
                  height: 24,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(45, 23, 0, 0),
                child: Text(
                  'Корзина',
                  style: FFTheme.bodyText1.override(
                    fontFamily: 'Noto Sans',
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(147, 23, 0, 0),
                child: Image.asset(
                  'assets/images/6.png',
                  width: 17,
                  height: 17,
                  fit: BoxFit.contain,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
