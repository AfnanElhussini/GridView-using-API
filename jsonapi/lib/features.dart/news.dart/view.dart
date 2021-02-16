import 'package:flutter/material.dart';
import 'package:jsonapi/features.dart/news.dart/controller.dart';
import 'package:jsonapi/features.dart/news.dart/model.dart';

class Newsview extends StatefulWidget {
  @override
  _NewsviewState createState() => _NewsviewState();
}

class _NewsviewState extends State<Newsview> {
  NewsController _newsController = NewsController();
  NewsModel _newsModel = NewsModel();
  bool _loading = true;
  @override
  void initState() {
    _getNews();
    super.initState();
  }

  _getNews() async {
    _newsModel = await _newsController.getNews();
    // print(_newsModel.data[0]);
    setState(() {
      _loading = false;
    });
  }

  Widget _newsCard(
      {String imagrUrl, String title, String desc, String name, var id}) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imagrUrl), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(14),
              color: Colors.red),
        ),
      ),
      Positioned(
          bottom: 20,
          right: 24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                name,
                style: TextStyle(color: Colors.white),
              )
            ],
          ))
    ]);
  }

  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            centerTitle: false,
            backgroundColor: Colors.white,
            title: Text(
              'أقسام اللجنة',
              style: TextStyle(color: Colors.black, fontSize: 23),
            ),
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          body: _loading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 6.0,
                    mainAxisSpacing: 4.0,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (context, index) {
                    return _newsCard(
                      imagrUrl: _newsModel.data[index].image,
                      title: _newsModel.data[index].desc,
                      name: _newsModel.data[index].name,
                      id: _newsModel.data[index].id,
                    );
                  }),

          /*     GridView.count(
          
          crossAxisCount: 2,
          padding: EdgeInsets.all(20),
          crossAxisSpacing: 6.0,
          mainAxisSpacing: 5.0,
          childAspectRatio: 0.8,
children:  [



], */
          //  children: [
          /*    Card(
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(''), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.red),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ))
                ]),
              ),
              Card(
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(''), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.red),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ))
                ]),
              ),
              Card(
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(''), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.red),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ))
                ]),
              ),
              Card(
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(''), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.red),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ))
                ]),
              ),
              Card(
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(''), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.red),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ))
                ]),
              ),
              Card(
                child: Stack(children: [
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(''), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.red),
                  ),
                  Positioned(
                      bottom: 20,
                      right: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ))
                ]),
              ), */
          // ]
          //  ),
        ));
  }
}
