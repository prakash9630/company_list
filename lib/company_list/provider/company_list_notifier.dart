import 'dart:developer';

import 'package:company_list/company_list/model/company_list_model.dart';
import 'package:company_list/company_list/provider/company_state.dart';
import 'package:company_list/core/network/dio_base.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repo/company_list_repo.dart';

final companyListNotifierProvider =
StateNotifierProvider<CompanyListNotifier, CompanyState>((ref) {
  return CompanyListNotifier(ref);
});

class CompanyListNotifier extends StateNotifier<CompanyState> {
  CompanyListNotifier(this.ref) : super(CompanyInitial());
   final Ref ref;

  List<Data> companyList = [];
 int currentPage=1;

  bool companyListPageNotifier(ScrollEndNotification scrollEndNotification) {
    if (scrollEndNotification.metrics.pixels ==
        scrollEndNotification.metrics.maxScrollExtent) {
      if ((state as CompanySuccessState).model.meta!.total! > companyList.length) {
         getCompanyList(nextPage:(state as CompanySuccessState).model.meta!.nextPage! );
        //  getCompanyList();

      }
    }
    return true;
  }

  Future<void> getCompanyList({int? nextPage}) async {
    try {



      final Either<Failure, dynamic> response;
      if(nextPage!=null){
        response= await ref.read(companyListRepoProvider).fetchCompanyList(body: {"page":currentPage});
      }else{
        response= await ref.read(companyListRepoProvider).fetchCompanyList();

      }
      state = response.fold((l) => CompanyError(failure: l), (r) {
        CompanyListModel model = CompanyListModel.fromJson(r);
        if(model.meta!.lastPage! > currentPage){
          companyList.addAll(model.data??[]);
        }else{
          companyList = model.data ?? [];
        }
        currentPage++;
        return CompanySuccessState(model: model,data: companyList);
      });

    } catch (e) {
      log(e.toString());
    }
  }
}
