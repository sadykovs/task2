import '../fourth/fourth_widget.dart';
import 'package:task/navigation_drawer_widget.dart';
import '../third/third_widget.dart';
import '../ff_theme.dart';
import '../product1/product1_widget.dart';
import '../second/second_widget.dart';
import 'package:flutter/material.dart';

class TesttaskWidget extends StatefulWidget {
  TesttaskWidget({Key key}) : super(key: key);

  @override
  _TesttaskWidgetState createState() => _TesttaskWidgetState();
}

class _TesttaskWidgetState extends State<TesttaskWidget> {
  String dropDownValue;
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    dropDownValue = 'Челябинск';
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      key: scaffoldKey,
      appBar: BuildAppBar(),
      drawer: NavigationDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: Alignment(-1, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(47, 0, 0, 0),
                                  child: Text(
                                    'Голоден?',
                                    style: FFTheme.bodyText1.override(
                                      fontFamily: 'Noto Sans',
                                      fontSize: 36,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 33, 0),
                    child: TextFormField(
                      controller: textController,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Поиск по меню',
                        labelStyle: FFTheme.bodyText1.override(
                          fontFamily: 'Noto Sans',
                          fontSize: 16,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.fromLTRB(38, 0, 0, 0),
                        prefixIcon: Icon(
                          Icons.search_rounded,
                        ),
                      ),
                      style: FFTheme.bodyText1.override(
                        fontFamily: 'Noto Sans',
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 46, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () async {
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TesttaskWidget(),
                        ),
                        (r) => false,
                      );
                    },
                    child: Image.asset(
                      'assets/images/all.png',
                      width: 36,
                      height: 36,
                      fit: BoxFit.cover,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondWidget(),
                        ),
                        (r) => false,
                      );
                    },
                    child: Image.asset(
                      'assets/images/pizza.png',
                      width: 36,
                      height: 36,
                      fit: BoxFit.contain,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdWidget(),
                        ),
                        (r) => false,
                      );
                    },
                    child: Image.asset(
                      'assets/images/kebab.png',
                      width: 36,
                      height: 36,
                      fit: BoxFit.contain,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FourthWidget(),
                        ),
                        (r) => false,
                      );
                    },
                    child: Image.asset(
                      'assets/images/burger.png',
                      width: 36,
                      height: 36,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
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
                    child: Text(
                      'Все',
                      style: FFTheme.bodyText1.override(
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondWidget(),
                        ),
                        (r) => false,
                      );
                    },
                    child: Text(
                      'Пицца',
                      style: FFTheme.bodyText1.override(
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Text(
                    'Кебаб',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                    ),
                  ),
                  Text(
                    'Бургер',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 28, 0, 0),
              child: InkWell(
                onTap: () async {
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Product1Widget(),
                    ),
                    (r) => false,
                  );
                },
                child: Image.asset(
                  'assets/images/derzkya.png',
                  width: MediaQuery.of(context).size.width,
                  height: 165,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 16, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Product1Widget(),
                        ),
                      );
                    },
                    child: Text(
                      'Дерзкая Марго',
                      style: FFTheme.bodyText1.override(
                        fontFamily: 'Noto Sans',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 6, 0, 22),
              child: Row(
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
                      width: 14,
                      height: 22,
                      fit: BoxFit.scaleDown,
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
            Image.asset(
              'assets/images/vkusn.png',
              width: MediaQuery.of(context).size.width,
              height: 165,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 16, 0, 0),
                  child: Text(
                    'Вкусняшка Миа',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 6, 0, 22),
              child: Row(
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
                      width: 14,
                      height: 22,
                      fit: BoxFit.scaleDown,
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
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 22),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
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
            Image.asset(
              'assets/images/sitii.png',
              width: MediaQuery.of(context).size.width,
              height: 165,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 16, 0, 0),
                  child: Text(
                    'Сытый Пит',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 6, 0, 22),
              child: Row(
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
                      width: 14,
                      height: 22,
                      fit: BoxFit.scaleDown,
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
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 22),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
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
            Image.asset(
              'assets/images/goryachii.png',
              width: MediaQuery.of(context).size.width,
              height: 165,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(45, 16, 0, 0),
                  child: Text(
                    'Горячий парень',
                    style: FFTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 6, 0, 22),
              child: Row(
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
                      width: 14,
                      height: 22,
                      fit: BoxFit.scaleDown,
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
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 22),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
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
            )
          ],
        ),
      ),
    );
    return scaffold;
  }

  AppBar BuildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () async {
          scaffoldKey.currentState.openDrawer();
        },
        child: Image.asset(
          'assets/images/d.png',
          width: 24,
          height: 24,
          fit: BoxFit.none,
        ),
      ),
      title: FFDropDown(
        options: ['Челябинск', 'Москва', 'Санкт-Петербург', 'Уфа'],
        onChanged: (value) {
          setState(() => dropDownValue = value);
        },
        width: 130,
        height: 40,
        textStyle: FFTheme.bodyText1.override(
          fontFamily: 'Noto Sans',
          color: Colors.black,
        ),
        fillColor: Colors.white,
        elevation: 2,
        borderColor: Colors.transparent,
        borderWidth: 0,
        borderRadius: 0,
        margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 48, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/images/ShoppingCart.png',
              width: 24,
              height: 24,
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
      centerTitle: false,
      elevation: 0,
    );
  }
}
