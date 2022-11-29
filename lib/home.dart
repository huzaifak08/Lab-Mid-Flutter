import 'package:assignment_3/contacts_info.dart';
import 'package:assignment_3/new_contact.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 3'),
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorWeight: 4,
            indicatorColor: Colors.black,
            tabs: [
              Tab(text: 'Contacts'),
              Tab(text: 'Groups'),
            ],
          ),
        ),
        drawer: Drawer(
          child: Center(
              child: Column(
            children: [
              ListTile(
                title: Text('Huzaifa'),
                subtitle: Text('Mobile Application Development'),
                leading: CircleAvatar(child: Text('HK')),
                trailing: Icon(Icons.done_all_outlined),
              ),
            ],
          )),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Huzaifa'),
                    subtitle: Text('Mobile Application Development'),
                    leading: CircleAvatar(child: Text('HK')),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactsInfo()));
                    },
                  );
                },
              ),
            ),
            Center(
              child: Text('Groups'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewContact(),
                ));
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
