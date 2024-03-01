import 'package:grpc/grpc.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '/api/v1/user/Auth.pbgrpc.dart';
import '/api/v1/user/AnonAuth.pbgrpc.dart';
import '/api/v1/user/Messages.pbgrpc.dart';
import '/api/v1/user/Store.pbgrpc.dart';
import '/api/v1/user/UserData.pbgrpc.dart';

final clientProvider = Provider.autoDispose<ClientChannel>((ref) {
  const host = 'localhost';
  // const host = '10.0.2.2';
  const port = 3000;
  print("port:$port");
  final channel = ClientChannel(
    host,
    port: port,
    options: const ChannelOptions(
      // ローカルはTLSを無効化
      credentials: host == 'localhost'
      // credentials: host == '10.0.2.2'
          ? ChannelCredentials.insecure()
          : ChannelCredentials.secure(),
    ),
  );

  ref.onDispose(() {
    print("shutdown");
    channel.shutdown();
  });
  return channel;
});

final tokenProvider = StateProvider<String?>((ref) => null);
final refreshTokenProvider = StateProvider<String?>((ref) => null);

// トークンを含むCallOptionsを生成するヘルパー関数
CallOptions _callOptionsWithToken(Ref ref) {
  final token = ref.watch(tokenProvider);
  final refreshToken = ref.watch(refreshTokenProvider);
  final metadata = token != null && refreshToken != null
      ? <String, String>{
          'Authorization': 'Bearer $token',
          'X-Refresh-Token': refreshToken
        }
      : <String, String>{};
  return CallOptions(metadata: metadata);
}

final authControllerProvider =
    Provider.autoDispose<AuthControllerClient>((ref) {
  final channel = ref.watch(clientProvider);
  return AuthControllerClient(channel, options: _callOptionsWithToken(ref));
});

final anonAuthControllerProvider =
    Provider.autoDispose<AnonAuthControllerClient>((ref) {
  final channel = ref.watch(clientProvider);
  return AnonAuthControllerClient(channel, options: _callOptionsWithToken(ref));
});

final messageControllerProvider =
    Provider.autoDispose<MessageControllerClient>((ref) {
  final channel = ref.watch(clientProvider);
  return MessageControllerClient(channel, options: _callOptionsWithToken(ref));
});

final storeControllerProvider =
    Provider.autoDispose<StoreControllerClient>((ref) {
  final channel = ref.watch(clientProvider);
  return StoreControllerClient(channel, options: _callOptionsWithToken(ref));
});

final userDataControllerProvider =
    Provider.autoDispose<UserDataControllerClient>((ref) {
  final channel = ref.watch(clientProvider);
  return UserDataControllerClient(channel, options: _callOptionsWithToken(ref));
});
