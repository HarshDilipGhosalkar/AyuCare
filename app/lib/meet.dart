import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class Meet extends StatefulWidget {
  const Meet({Key? key}) : super(key: key);

  @override
  State<Meet> createState() => _MeetState();
}

class _MeetState extends State<Meet> {
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
      appId: "695ba2f710f8429eb48c897da18dad64",
      channelName: "test",
      username: "Harsh Ghosalkar",
    ),
  );

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  void initAgora() async {
    await client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AgoraVideoViewer(
              client: client,
              layoutType: Layout.floating,
              enableHostControls: true, // Add this to enable host controls
            ),
            AgoraVideoButtons(
              client: client,
              addScreenSharing: false, // Add this to enable screen sharing
            ),
          ],
        ),
      ),
    );
  }
}
