import "package:flutter/material.dart";

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: <Widget>[SideBar(), SideBarOptions(), TaskScreen()],
    ));
  }

  Widget SideBar() {
    return Container(
      color: Color(0xFF232020),
      height: double.infinity,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.account_circle,
              color: Colors.white,
              size: 40.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget SideBarOptions() {
    return Container(
      color: Color(0xff3a3535),
      width: 250.0,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Titles",
              style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'FjallaOne',
                  color: Color(0xfff4f4f4)),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              color: Color(0xFF232020),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(
                Icons.dashboard,
                color: Color(0xfff4f4f4),
              ),
              Text(
                "Some (Tasks)",
                style: TextStyle(
                  fontFamily: 'FjallaOne',
                  color: Color(0xfff4f4f4),
                  letterSpacing: 4.0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget TaskScreen() {
    return Expanded(
      child: Container(
        color: Color(0xfff4f4f4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, top: 10.0, bottom: 10.0),
              child: Text(
                "Some (Tasks)",
                style: TextStyle(
                    fontFamily: 'FjallaOne',
                    color: Color(0xFF232020),
                    fontSize: 50.0),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "TASK",
                style: TextStyle(
                    fontSize: 25.0,
                    fontFamily: 'FjallaOne',
                    color: Color(0xFF232020)),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        maxLines: 10,
                        style: TextStyle(fontSize: 18.0),
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.file_upload,
                              color: Color(0xFF232020),
                              size: 40.0,
                            ),
                            Text(
                              "Update TASK",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'FjallaOne',
                                  color: Color(0xFF232020)),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.delete_forever,
                              color: Color(0xFF232020),
                              size: 40.0,
                            ),
                            Text(
                              "Delete TASK",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'FjallaOne',
                                  color: Color(0xFF232020)),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.file_upload,
                              color: Color(0xFF232020),
                              size: 40.0,
                            ),
                            Text(
                              "Update TASK",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontFamily: 'FjallaOne',
                                  color: Color(0xFF232020)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
