import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentsRecord extends FirestoreRecord {
  DocumentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "documentname" field.
  String? _documentname;
  String get documentname => _documentname ?? '';
  bool hasDocumentname() => _documentname != null;

  // "document" field.
  String? _document;
  String get document => _document ?? '';
  bool hasDocument() => _document != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _documentname = snapshotData['documentname'] as String?;
    _document = snapshotData['document'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('documents');

  static Stream<DocumentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentsRecord.fromSnapshot(s));

  static Future<DocumentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentsRecord.fromSnapshot(s));

  static DocumentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocumentsRecordData({
  DocumentReference? user,
  String? documentname,
  String? document,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'documentname': documentname,
      'document': document,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentsRecordDocumentEquality implements Equality<DocumentsRecord> {
  const DocumentsRecordDocumentEquality();

  @override
  bool equals(DocumentsRecord? e1, DocumentsRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.documentname == e2?.documentname &&
        e1?.document == e2?.document;
  }

  @override
  int hash(DocumentsRecord? e) =>
      const ListEquality().hash([e?.user, e?.documentname, e?.document]);

  @override
  bool isValidKey(Object? o) => o is DocumentsRecord;
}
