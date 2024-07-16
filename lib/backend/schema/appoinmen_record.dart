import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppoinmenRecord extends FirestoreRecord {
  AppoinmenRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "hospitalname" field.
  String? _hospitalname;
  String get hospitalname => _hospitalname ?? '';
  bool hasHospitalname() => _hospitalname != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _hospitalname = snapshotData['hospitalname'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _gender = snapshotData['gender'] as String?;
    _details = snapshotData['details'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appoinmen');

  static Stream<AppoinmenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppoinmenRecord.fromSnapshot(s));

  static Future<AppoinmenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppoinmenRecord.fromSnapshot(s));

  static AppoinmenRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppoinmenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppoinmenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppoinmenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppoinmenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppoinmenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppoinmenRecordData({
  DocumentReference? user,
  String? hospitalname,
  int? age,
  String? gender,
  String? details,
  DateTime? time,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'hospitalname': hospitalname,
      'age': age,
      'gender': gender,
      'details': details,
      'time': time,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class AppoinmenRecordDocumentEquality implements Equality<AppoinmenRecord> {
  const AppoinmenRecordDocumentEquality();

  @override
  bool equals(AppoinmenRecord? e1, AppoinmenRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.hospitalname == e2?.hospitalname &&
        e1?.age == e2?.age &&
        e1?.gender == e2?.gender &&
        e1?.details == e2?.details &&
        e1?.time == e2?.time &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(AppoinmenRecord? e) => const ListEquality().hash([
        e?.user,
        e?.hospitalname,
        e?.age,
        e?.gender,
        e?.details,
        e?.time,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is AppoinmenRecord;
}
