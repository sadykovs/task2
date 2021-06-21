import '../ff_theme.dart';
import '../testtask/testtask_widget.dart';
import 'package:flutter/material.dart';

class Product1Widget extends StatefulWidget {
  Product1Widget({Key key}) : super(key: key);

  @override
  _Product1WidgetState createState() => _Product1WidgetState();
}

class _Product1WidgetState extends State<Product1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SingleChildScrollView(
        primary: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 33, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TesttaskWidget(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/images/back.png',
                        width: 45,
                        height: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Image.asset(
                      'assets/images/Cart1.png',
                      width: 45,
                      height: 45,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 1, 0, 5),
              child: Image.asset(
                'assets/images/derzkya.png',
                width: MediaQuery.of(context).size.width,
                height: 286,
                fit: BoxFit.fitHeight,
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(195, 24, 0, 0),
                  child: Image.asset(
                    'assets/images/Heart(EB51).png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                  child: Text(
                    'Дерзкая Марго',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                  child: Image.asset(
                    'assets/images/zv.png',
                    width: 14,
                    height: 14,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                  child: Text(
                    '4,5',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(11, 0, 0, 0),
                  child: Text(
                    '(100+)',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                  child: Text(
                    '25-30 мин',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 0, 0, 0),
                  child: Image.asset(
                    'assets/images/rub.png',
                    width: 13,
                    height: 19,
                    fit: BoxFit.none,
                  ),
                ),
                Text(
                  '300',
                  style: FFTheme.bodyText1.override(
                    fontFamily: 'Noto Sans',
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 0, 0, 15),
                  child: Text(
                    'Et consectetur commodo ut\n consectetur ex nulla voluptate \ncommodo ipsum incididunt qui dolor. ',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 22),
              child: FFButtonWidget(
                onPressed: () async {
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Product1Widget(),
                    ),
                    (r) => false,
                  );
                },
                text: 'Купить',
                options: FFButtonOptions(
                  width: 285,
                  height: 40,
                  color: Color(0xFFF2CB3A),
                  textStyle: FFTheme.subtitle2.override(
                    fontFamily: 'Noto Sans',
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 10,
                  ),
                  borderRadius: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TesttaskWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      child: Text(
                        'Дополнительно',
                        style: FFTheme.bodyText1.override(
                          fontFamily: 'Noto Sans',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'Похожие',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                    ),
                  ),
                  Text(
                    'Отзывы',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 14),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TesttaskWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      child: Text(
                        '________',
                        textAlign: TextAlign.start,
                        style: FFTheme.bodyText1.override(
                          fontFamily: 'Noto Sans',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 14),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Image.asset(
                          'assets/images/coffe.png',
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TesttaskWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                              child: Text(
                                'Просто кофе                            200 руб',
                                textAlign: TextAlign.start,
                                style: FFTheme.bodyText1.override(
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TesttaskWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                              child: Text(
                                'Вкусный зерновой кофеечек',
                                style: FFTheme.bodyText1.override(
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 14),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Image.asset(
                          'assets/images/coffe.png',
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TesttaskWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                              child: Text(
                                'Просто кофе                            200 руб',
                                textAlign: TextAlign.start,
                                style: FFTheme.bodyText1.override(
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TesttaskWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                              child: Text(
                                'Вкусный зерновой кофеечек',
                                style: FFTheme.bodyText1.override(
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 14),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Image.asset(
                          'assets/images/coffe.png',
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TesttaskWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                              child: Text(
                                'Просто кофе                            200 руб',
                                textAlign: TextAlign.start,
                                style: FFTheme.bodyText1.override(
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TesttaskWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                              child: Text(
                                'Вкусный зерновой кофеечек',
                                style: FFTheme.bodyText1.override(
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 144),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                        child: Image.asset(
                          'assets/images/coffe.png',
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TesttaskWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                              child: Text(
                                'Просто кофе                            200 руб',
                                textAlign: TextAlign.start,
                                style: FFTheme.bodyText1.override(
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TesttaskWidget(),
                                  ),
                                  (r) => false,
                                );
                              },
                              child: Text(
                                'Вкусный зерновой кофеечек',
                                style: FFTheme.bodyText1.override(
                                  fontFamily: 'Noto Sans',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
