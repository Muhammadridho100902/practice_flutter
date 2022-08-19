import 'package:block_call_api/BLoc/app_bloc.dart';
import 'package:block_call_api/BLoc/app_event.dart';
import 'package:block_call_api/BLoc/app_name.dart';
import 'package:block_call_api/model.dart';
import 'package:block_call_api/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // we need pas the create property and the same time we need to pass the context
      create: (context) => UserBloc(RepositoryProvider.of<UserRepository>(
              context) //for injecting our bloc so we need to import UserBloc inside BlockProvider
          )
        ..add(
          LoadUserEvent(),
        ),
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Bloc Call Api"),
          ),
          body: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
            if (state is UserLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (state is UserLoadedState) {
              List<UserModel> userList = state.users;
              return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Card(
                        color: Colors.blue,
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          title: Text(
                            userList[index].firstname,
                            style: const TextStyle(color: Colors.white),
                          ),
                          subtitle:Text(
                            userList[index].lastname,
                            style: const TextStyle(color: Colors.white),
                          ),
                          trailing: CircleAvatar(
                            backgroundImage: NetworkImage(userList[index].avatar)
                          ),
                        )),
                  );
                },
              );
            }

            if (state is UserErrorState) {
              return const Center(
                child: Text("Error"),
              );
            }
            return Container();
          })),
    );
  }
}
