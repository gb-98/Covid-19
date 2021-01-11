import 'package:flutter/material.dart';
import 'package:covid_app/core/consts.dart';

class Search1 extends SearchDelegate {
  final List countryList;

  Search1(this.countryList);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? countryList
        : countryList
            .where((element) =>
                element['country'].toString().toLowerCase().startsWith(query))
            .toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return Container(
          height: 110,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            color: AppColors.backgroundColor,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.deepPurpleAccent[100],
                  blurRadius: 12,
                  offset: Offset(5, 5)),
            ],
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 200,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      suggestionList[index]['country'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Image.network(
                      suggestionList[index]['countryInfo']['flag'],
                      height: 50,
                      width: 60,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    right: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Potrjeni:  ' +
                            suggestionList[index]['todayCases'].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red[300]),
                      ),
                      Text(
                        'Ozdravljeni:  ' +
                            suggestionList[index]['todayRecovered'].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green[300]),
                      ),
                      Text(
                        'Umrli:  ' +
                            suggestionList[index]['todayDeaths'].toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
