import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/models/UsersModel/users_model.dart';
import 'package:project/models/books_models/books_models.dart';

class ApiProvider{
  UsersModel? usersModel;
  BooksModels? booksModels ;
  List<BooksModels> books = [];
  List<BooksModels> booksModel = [];


  Future<UsersModel?> readUsers() async{
    await FirebaseFirestore.instance
        .collection('users')
        .doc('Wo9p9yjBokg8QSbnSAQj')
        .get().
    then((value) {
      usersModel = UsersModel.fromJson(value.data()!);
    });
    print(usersModel?.phone);
    return usersModel;
  }

  Future<UsersModel?> get() async{
    await FirebaseFirestore.instance
        .collection('users')
        .get().
    then((value) {
      value.docs.forEach((element) {
        books.add(BooksModels.fromJson(element.data()));
      });
    });
    print(usersModel?.phone);
    return usersModel;
  }


  Future<BooksModels?> readBooks() async{
    await FirebaseFirestore.instance
        .collection('books')
        .doc('oBKysehCNJKduZaieZ44')
        .get().
    then((value) {
      booksModels = BooksModels.fromJson(value.data()!);
    });
    print(booksModels?.name);
    return booksModels;
  }


  void getBooks(){
    FirebaseFirestore.instance
        .collection('books')
        .get()
        .then((value) {
          value.docs.forEach((element) {
            books.add(BooksModels.fromJson(element.data()));
          });
    })
        .catchError((error){
          print(error);
    });
    print(books[0].name);
  }





}