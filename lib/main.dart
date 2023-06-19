
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:voltas_eq/data.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);


  @override
  State<homepage> createState() => _homepageState();

}

class _homepageState extends State<homepage> {
  List<String> dropDownItems=["24 Nov 22", "23 Nov 22","22 Nov 22"];
  String dropDownValue="24 Nov 22";

  List<OptionChain> _ocList = [];
  List<bool> _isShowList = [];


  @override
  void initState() {
    _ocList.add(OptionChain(strikePrice: '660.00', ltp:'--', ltpChg: '--', oi: '--', oiChg: '--', iv: '0.00'));
    _ocList.add(OptionChain(strikePrice: '680.00', ltp:'0.50', ltpChg: '--', oi: '--', oiChg: '--', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '700.00', ltp:'0.10', ltpChg: '-66.67%', oi: '0.30', oiChg: '+20.41%', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '720.00', ltp:'0.30', ltpChg: '-25.00%', oi: '0.30', oiChg: '-16.67%', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '740.00', ltp:'0.25', ltpChg: '-54.33%', oi: '0.74', oiChg: '-1.33%', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '760.00', ltp:'0.35', ltpChg: '-53.33%', oi: '1.94', oiChg: '-11.85%', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '780.00', ltp:'1.15', ltpChg: '-20.69%', oi: '2.06', oiChg: '+11.99%', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '800.00', ltp:'4.70', ltpChg: '+20.51%', oi: '5.12', oiChg: '+6.55%', iv: '23.67'));

    _ocList.add(OptionChain(strikePrice: '660.00', ltp:'--', ltpChg: '--', oi: '--', oiChg: '--', iv: '0.00'));
    _ocList.add(OptionChain(strikePrice: '680.00', ltp:'0.50', ltpChg: '--', oi: '--', oiChg: '--', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '700.00', ltp:'0.10', ltpChg: '-66.67%', oi: '0.30', oiChg: '+20.41%', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '720.00', ltp:'0.30', ltpChg: '-25.00%', oi: '0.30', oiChg: '-16.67%', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '740.00', ltp:'0.25', ltpChg: '-54.33%', oi: '0.74', oiChg: '-1.33%', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '760.00', ltp:'0.35', ltpChg: '-53.33%', oi: '1.94', oiChg: '-11.85%', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '780.00', ltp:'1.15', ltpChg: '-20.69%', oi: '2.06', oiChg: '+11.99%', iv: '30.00'));
    _ocList.add(OptionChain(strikePrice: '800.00', ltp:'4.70', ltpChg: '+20.51%', oi: '5.12', oiChg: '+6.55%', iv: '23.67'));

    super.initState();

    for(int i=0;i<_ocList.length;i++){
      _isShowList.add(false);
    }

  }
  String inkwell='';
  @override
  Widget build(BuildContext context) {
    debugPrint('_isShowList : '+_isShowList.toString());
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 15,
                                  height: 20,
                                  margin: const EdgeInsets.only(
                                    bottom: 15,
                                  ),
                                  constraints: const BoxConstraints(
                                    maxHeight: 25,
                                    maxWidth: 25,
                                  ),
                                  child: Image.asset('images/back.png'),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                child: Container(
                                  child: Column(
                                    children: [
                                      Row(
                                        children: const [
                                          Text('VOLTAS EQ')
                                        ],
                                      ),
                                      const SizedBox(height: 5,),
                                      Container(
                                        decoration:BoxDecoration(
                                          color: Colors.blueGrey.shade100,
                                        ),
                                        //child: Image.asset('images/back_arrow.png'),
                                        child: Row(
                                          children: const [
                                            Padding(
                                              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 6),
                                              child: Text('NSE',style: TextStyle(fontSize: 10), textAlign: TextAlign.left,),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    '     Rs. 809.95 ',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Inter'
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(vertical: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "-14.45",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter'),
                                    ),
                                    Text(
                                      " (-1.75%)",
                                      style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Inter'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),



                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 5, 0),
                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          TabBar(
                            indicatorColor: Colors.black87,
                            labelColor: Colors.black87,
                            indicatorSize: TabBarIndicatorSize.label,
                            tabs: [
                              Tab(text: 'Calls'),
                              Tab(text: 'Puts',),

                              Container(
                                height: 26,
                                width: double.infinity,
                                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),

                                decoration: BoxDecoration(color: Colors.grey.shade300,
                                  borderRadius: BorderRadius.all(Radius.circular(15)),
                                ),
                                child: DropdownButton(
                                    style: TextStyle(fontSize: 10, color: Colors.black87),
                                    borderRadius: BorderRadius.circular(10),
                                    value: dropDownValue,
                                    items: dropDownItems.map((e) => DropdownMenuItem(
                                      child: Text(e),
                                      value: e,
                                    ),
                                    ).toList(),
                                    onChanged: (value){
                                      setState(() {
                                        dropDownValue=value.toString();
                                      }
                                      );
                                    }
                                ),
                              )
                            ],
                          ),

                          // Divider(color: Colors.grey,)
                        ],
                      ),
                    ),



                    Divider(color: Colors.grey,),


                    Padding(
                     padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                      //padding: EdgeInsets.all(6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(5, 10, 8, 6),
                            decoration: BoxDecoration(color: Colors.grey.shade300),
                            child: Column(
                              children: [Text('Strike Price')],
                            ),
                          ),
                          Column(
                            children: [Text('LTP')],
                          ),
                          Column(
                            children: [Text('OI(lakhs)')],
                          ),
                          Column(
                            children: [Text('IV(%)')],
                          )
                        ],
                      ),
                    ),

                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.fromLTRB(0, 0, 35, 0),
                        itemCount: _ocList.length,
                        itemBuilder: (contex, index){
                        OptionChain oc = _ocList[index];
                        bool hasExpanded = false;
                         return InkWell(
                          onTap: (){
                            debugPrint('pressTap : '+index.toString());
                             setState(() {
                              //hasExpanded =! hasExpanded;
                               bool isShow = !_isShowList[index];
                               debugPrint('isShow : '+isShow.toString());
                               _isShowList[index]=isShow;
                             });
                            if (kDebugMode) {
                              print(hasExpanded);
                            }

                          },


                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(color: Colors.grey.shade300),
                                    padding: const EdgeInsets.all(20),
                                    child: Text(oc.strikePrice),
                                  ),

                                  Column(
                                    children: [
                                     Text(oc.ltp),
                                     Text(oc.ltpChg, style: TextStyle(color: Colors.black54),),
                                    ],
                                  ),

                                  Column(
                                    children: [
                                     Text(oc.oi),
                                      Text(oc.oiChg,style: const TextStyle(color: Colors.black54),),
                                    ],
                                  ),
                                 Text(oc.iv),

                                ],
                              ),


                              Visibility(
                                visible: _isShowList[index],
                                child: Container(
                                  height: 30,
                                  width: double.infinity,
                                  decoration: BoxDecoration(color: Colors.grey.shade300),
                                  child: const Center(
                                      child: Text('Spot price: Rs. 809.95')),
                                ),
                              ),


                            ],

                          ),
                        );
                      },

                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

