import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:test_worldtime/service/world_time.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void setWorldTime() async {
    WorldTime instance = WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.jpg');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDaytime': instance.isDaytime

    });
  }
  @override
  void initState() {
    super.initState();
    setWorldTime();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitCircle(
          color: Colors.white,
          size: 80.0,
        )
      ),
    );
  }
}