import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int x = 4;

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: TabBar(
              tabs: [
                Icon(FontAwesomeIcons.houseMedicalFlag),
                Text('Chat'),
                Text('Status'),
                Text('Call'),
              ],
            ),
            actions: [
              const Icon(Icons.search),
            const  SizedBox(width: 10,),
              PopupMenuButton(
                icon:const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context,) => const[
                      PopupMenuItem(
                          value: 1,
                          child: Text('New group')),
                      PopupMenuItem(
                          value: 2,
                          child: Text('New broadcast')),
                      PopupMenuItem(
                        value: 3,
                        child: Text('Linked devieces')),
                      PopupMenuItem(
                        value: 4,
                        child: Text('Star messages')),
                      PopupMenuItem(
                        value: 5,
                        child: Text('Settings')),
              ]),
             const SizedBox(width: 20,),


            ],
            // backgroundColor: Colors.teal,
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  Center(
                    child: Badge(
                      badgeContent: Text('2'),
                      child: Icon(Icons.home),
                      animationType: BadgeAnimationType.slide,
                      animationDuration: Duration(seconds: 2),
                      badgeColor: Colors.transparent,
                    ),
                  ),
                ],
              ),
              ListView.builder(
                itemCount: 25,
                itemBuilder:
                  (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://cdn.mos.cms.futurecdn.net/FAdJ3KD2PBVRhHw5mE2w8k.jpg'),
                      ),
                      title: Text("Spidey"),
                      subtitle: Text('big power comes with big responsibility'),
                      trailing: Text('6:30 PM'),
                    );
                  },
                ),
             ListView.builder(
               itemCount: 20,
               itemBuilder: (context, index) {
                 if(index ==0){
                   return Stack(
                     children: [
                       ListTile(
                         leading: CircleAvatar(
                           backgroundImage: NetworkImage('https://images.pexels.com/photos/5691359/pexels-photo-5691359.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                         ),
                         title: Text('Umair'),
                         subtitle: Text('Tap to add status update'),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 34,vertical: 33,  ),
                         child: Container(child: Icon(Icons.add,color: Colors.white,)),
                       ),
                     ],
                   );
                 }
                 else if(index ==1){
                   return Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: const Text('Recent updates'),
                   );
                 }
                 else{
                 return  ListTile(
                     leading: Container(
                       decoration: BoxDecoration(
                         shape: BoxShape.circle,
                         border: Border.all(
                           color: Colors.green,
                           width: 2,
                         ),
                       ),
                       child: CircleAvatar(
                         backgroundImage: NetworkImage('https://s.wsj.net/public/resources/images/BN-UB370_AUNTMA_AM_20170628143551.jpg'),
                       ),
                     ),
                     title: Text('Aunt May'),
                   subtitle: Text('Today, $index:24 AM'),
                   );
                 }

               },

             ),

              ListView.builder(
                itemCount: 20,
                            itemBuilder: (context, index) =>
                      ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/0/0a/Zendaya_as_MJ.jpeg/220px-Zendaya_as_MJ.jpeg'),
                        ),
                        title: Text('MJ'),
                        subtitle: Row(
                          children: [
                            index %3==0
                                ? Icon(Icons.arrow_forward,color: Colors.green, )
                                : Icon(Icons.arrow_back,color: Colors.red.shade700, ),
                            Text('Yesterday, $index:26 PM'),

                          ],
                        ),
                        trailing: Icon(Icons.phone,color: Colors.green,),
                      ),),
            ],
          ),

        ));
  }
}


