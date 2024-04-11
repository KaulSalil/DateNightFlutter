import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:college_match/data/model/interest_model.dart';
import 'package:college_match/data/model/lifestyle_question_model.dart';
import 'package:college_match/data/model/major_model.dart';
import 'package:college_match/data/model/personality_question_model.dart';

class QuestionService {
  Future<List<MajorModel>> getAllMajor() async {
    final List<MajorModel> majorList = [];

    try {
      await FirebaseFirestore.instance.collection('majors').get().then(
        (QuerySnapshot snapshot) {
          for (var doc in snapshot.docs) {
            majorList.add(MajorModel.fromDocument(doc));
          }
        },
      );
    } catch (e) {
      print(e);
    }
    return majorList;
  }

  Future<List<LifestyleQuestionModel>> getAllLifestyleQuestion() async {
    final List<LifestyleQuestionModel> lifestyleQuestionList = [];

    try {
      await FirebaseFirestore.instance
          .collection('lifestyleQuestions')
          .orderBy("index", descending: false)
          .get()
          .then(
        (QuerySnapshot snapshot) {
          for (var doc in snapshot.docs) {
            lifestyleQuestionList
                .add(LifestyleQuestionModel.fromDocument(doc));
          }
        },
      );
    } catch (e) {
      print(e);
    }
    return lifestyleQuestionList;
  }

  Future<List<PersonalityQuestionModel>> getAllPersonalityQuestion() async {
    final List<PersonalityQuestionModel> personalityQuestionList = [];

    try {
      await FirebaseFirestore.instance
          .collection('testmbti')
          .orderBy("index", descending: false)
          .get()
          .then(
        (QuerySnapshot snapshot) {
          for (var doc in snapshot.docs) {
            personalityQuestionList
                .add(PersonalityQuestionModel.fromDocument(doc));
          }
        },
      );
    } catch (e) {
      print(e);
    }
    return personalityQuestionList;
  }

  Future<List<InterestModel>> getAllInterest() async {
    final List<InterestModel> interestList = [];

    try {
      await FirebaseFirestore.instance.collection('interests').get().then(
        (QuerySnapshot snapshot) {
          for (var doc in snapshot.docs) {
            interestList.add(InterestModel.fromDocument(doc));
          }
        },
      );
    } catch (e) {
      print(e);
    }
    return interestList;
  }
}
