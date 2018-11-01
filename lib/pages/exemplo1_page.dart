import 'package:flutter/material.dart';

class Exemplo1Page extends StatefulWidget {
  final scaffoldKey;

  Exemplo1Page(this.scaffoldKey);

  @override
  _Exemplo1PageState createState() => _Exemplo1PageState(scaffoldKey);
}

class _Exemplo1PageState extends State<Exemplo1Page> {
  final scaffoldKey;

  _Exemplo1PageState(this.scaffoldKey);

  VoidCallback _showBottom;

  VoidCallback _showBottomForm;

  @override
  void initState() {
    super.initState();
    _showBottom = _showBottomSheet;
    _showBottomForm = __showBottomSheetForm;
  }

  void __showBottomSheetForm() {
    setState(() {
      _showBottom = null;
    });

    scaffoldKey.currentState
        .showBottomSheet((context) {
      return Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.all(25.0),
          color: Colors.white,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                  right: 0.0,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.black,
                    iconSize: 25.0,
                  )
              ),
              Column(
                children: <Widget>[
                  const Icon(Icons.home, size: 140.0,),
                  const Text("Crie sua conta agora e aproveite todos os nosso benefícios.",
                    style: TextStyle(fontSize: 25.0, fontFamily: "georgia"),
                  ),
                  SizedBox(height: 30.0,),
                  Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Seu email:"
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (text){},
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Sua senha:"
                            ),
                            obscureText: true,
                            validator: (text){},
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                labelText: "Repita sua senha:"
                            ),
                            obscureText: true,
                            validator: (text){},
                          ),
                        ],
                      )
                  ),
                  SizedBox(height: 50.0),
                  Container(
                    height: 50.0,
                    width: double.infinity,
                    margin: EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        border:
                        Border.all(color: Colors.blueAccent, width: 3.0)),
                    child: OutlineButton(
                      onPressed: () {},
                      child: const Text(
                        "continuar",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18.0,
                            fontFamily: "georgia"),
                      ),
                      highlightColor: Colors.white,
                      highlightedBorderColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
        );
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showBottom = _showBottomSheet;
            });
          }
        });
  }

  void _showBottomSheet() {
    setState(() {
      _showBottom = null;
    });

    scaffoldKey.currentState
        .showBottomSheet((context) {
          return Container(
              height: double.infinity,
              width: double.infinity,
              margin: EdgeInsets.all(25.0),
              color: Colors.white,
              child: Stack(
                children: <Widget>[
                  Positioned(
                      right: 0.0,
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: Colors.black,
                        iconSize: 25.0,
                      )),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          size: 140.0,
                        ),
                        const Text(
                          "Pronto. Bem-vindo ao aquarelo.",
                          style: TextStyle(
                              color: Colors.blueAccent,
                              fontSize: 30.0,
                              fontFamily: "georgia"),
                        ),
                        const Text(
                          "Enviamos um e-mail de confirmação para voce, confire sua caixa de entrada e complete seu cadastro.",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontFamily: "georgia"),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: double.infinity,
                        margin: EdgeInsets.all(25.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border:
                                Border.all(color: Colors.black, width: 3.0)),
                        child: OutlineButton(
                          onPressed: () {},
                          child: const Text(
                            "continuar",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontFamily: "georgia"),
                          ),
                          highlightColor: Colors.white,
                          highlightedBorderColor: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0)),
                        ),
                      ),
                    ],
                  )
                ],
              ));
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              _showBottom = _showBottomSheet;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 40.0,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
            child: RaisedButton(
              onPressed: _showBottomSheet,
              color: Colors.white,
              child: const Text(
                "Modal",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Container(
            height: 40.0,
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
            child: RaisedButton(
              onPressed: __showBottomSheetForm,
              color: Colors.blue,
              child: const Text(
                "Modal Form",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
