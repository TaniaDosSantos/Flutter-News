import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:polls/polls.dart';

class PollsPage extends StatefulWidget {
  const PollsPage({Key? key}) : super(key: key);

  @override
  _PollsPageState createState() => _PollsPageState();
}

class _PollsPageState extends State<PollsPage> {
  double option1 = 2.0;
  double option2 = 1.0;
  double option3 = 4.0;
  double option4 = 3.0;

  String user = "user@gmail.com";
  Map usersWhoVoted = {
    'test@gmail.com': 1,
    'deny@gmail.com': 3,
    'kent@gmail.com': 2,
    'xyz@gmail.com': 3,
  };
  String creator = "admin@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Polls'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0,left: 20.0, right: 20.0),
        child: Polls(
          onVoteBackgroundColor: Colors.cyan,
          leadingBackgroundColor: Colors.pink,
          backgroundColor: Colors.white,
          question: const Text('Which Android App Development technology used?'),
          currentUser: user,
          voteData: usersWhoVoted,
          creatorID: creator,
          children: [
            Polls.options(title: 'Java', value: option1),
            Polls.options(title: 'Kotlin', value: option2),
            Polls.options(title: 'Flutter', value: option3),
            Polls.options(title: 'React Native', value: option4),
          ],
          onVote: (choice) {
            if (kDebugMode) {
              print(choice);
            }
            setState(() {
              usersWhoVoted[user] = choice;
            });
            if (choice == 1) {
              setState(() {
                option1 += 1.0;
              });
            }
            if (choice == 2) {
              setState(() {
                option2 += 1.0;
              });
            }
            if (choice == 3) {
              setState(() {
                option3 += 1.0;
              });
            }
            if (choice == 4) {
              setState(() {
                option4 += 1.0;
              });
            }
          },
        ),
      ),
    );
  }
}
