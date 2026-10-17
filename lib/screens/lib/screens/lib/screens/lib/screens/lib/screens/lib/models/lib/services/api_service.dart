import '../models/channel.dart';
class ApiService {
  List<Channel> getMockChannels() {
    return List.generate(10, (i) => Channel(name: "Canal ${i+1}", url: "http://example.com/stream.m3u8"));
  }
}
