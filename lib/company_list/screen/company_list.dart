import 'package:company_list/company_list/provider/company_state.dart';
import 'package:company_list/core/common/page_holder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/company_list_notifier.dart';
import '../widget/company_tile.dart';

class CompanyListScreen extends ConsumerStatefulWidget {
  const CompanyListScreen({super.key});

  @override
  ConsumerState<CompanyListScreen> createState() => _CompanyListScreenState();
}

class _CompanyListScreenState extends ConsumerState<CompanyListScreen> {

   int flag=0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(flag==0){
      ref.read(companyListNotifierProvider.notifier).getCompanyList();
      setState(() {
        flag=1;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    final companyState = ref.watch(companyListNotifierProvider);
    final companyProvider = ref.read(companyListNotifierProvider.notifier);
    return PageHolder(appTitle: "Company Lists",
      child: companyState is CompanyError?Center(child: Text("Error"),)
          : companyState is CompanySuccessState?
        NotificationListener(
          onNotification: companyProvider.companyListPageNotifier,
          child: ListView.builder(itemCount: companyState.data.length,
              itemBuilder:(context,index){
                   return CompanyTile(index: index,data: companyState.data[index]);
              } ),
        ):
        const Center(child: CircularProgressIndicator(),));
  }


}
