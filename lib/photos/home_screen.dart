import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/photos/model_item.dart';
import 'package:test_app/photos/provider_album.dart';
import 'package:test_app/photos/shimmer_iem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Consumer<MyProvider>(builder: (context, provider, widget) {
          return RefreshIndicator(
              child: buildListWidgets(provider),
              onRefresh: () => provider.fetchData());
        }),
      ),
    );
  }

  Widget buildListWidgets(MyProvider provider) {
    if (provider.isLoading) {
      return ListView.builder(
        itemBuilder: (context, i) {
          return const ShimmerItem();
        },
        itemCount: 7,
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, i) {
          return ModelItem(model: provider.models[i]);
        },
        itemCount: provider.models.length,
      );
    }
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (context.mounted) {
        context.read<MyProvider>().fetchData();
      }
    });
  }
}
