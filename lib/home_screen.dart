import 'package:flutter/material.dart';

class WhatsAppUi extends StatefulWidget {
  const WhatsAppUi({super.key});

  @override
  State<WhatsAppUi> createState() => _WhatsAppUiState();
}

class _WhatsAppUiState extends State<WhatsAppUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // backgroundColor: Colors.teal,
            centerTitle: false,
            title: Text('WhatsApp'),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('chat'),
              ),
              Tab(
                child: Text('status'),
              ),
              Tab(
                child: Text('calls'),
              ),
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              //   Icon(Icons.more_horiz_outlined),
              PopupMenuButton(
                  icon: const Icon(Icons.more_horiz_outlined),
                  itemBuilder: (context) => const [
                        PopupMenuItem(value: '1', child: Text('New Groups')),
                        PopupMenuItem(value: '2', child: Text('Settings')),
                        PopupMenuItem(value: '1', child: Text('Logout')),
                      ]),

              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Text('camera'),
              ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text('Where is my dog'),
                      trailing: Text('06:45 pm'),
                    );
                  }),
              ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Column(
                        children: [
                          Text('New Updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.green,
                                    width: 3,
                                  )),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                              ),
                            ),
                            title: Text('John Wick'),
                            subtitle: Text('34m ago'),
                            //  trailing: Icon(index /2==0 ? Icons.phone : Icons.video_call),
                          ),
                        ],
                      );
                    } else {
                      return ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 3,
                              )),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                        title: Text('John Wick'),
                        subtitle: Text('34m ago'),
                        //  trailing: Icon(index /2==0 ? Icons.phone : Icons.video_call),
                      );
                    }
                  }),
              ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/428364/pexels-photo-428364.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('John Wick'),
                      subtitle: Text(index / 2 == 0
                          ? 'missed call'
                          : 'call time is 12:34 pm'),
                      trailing:
                          Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                    );
                  }),
            ],
          ),
        ));
  }
}
