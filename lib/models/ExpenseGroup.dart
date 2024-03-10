/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart' as amplify_core;
import 'package:collection/collection.dart';


/** This is an auto generated class representing the ExpenseGroup type in your schema. */
class ExpenseGroup extends amplify_core.Model {
  static const classType = const _ExpenseGroupModelType();
  final String id;
  final String? _groupName;
  final List<String>? _members;
  final List<ExpenseEntry>? _expenses;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ExpenseGroupModelIdentifier get modelIdentifier {
      return ExpenseGroupModelIdentifier(
        id: id
      );
  }
  
  String get groupName {
    try {
      return _groupName!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String> get members {
    try {
      return _members!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<ExpenseEntry>? get expenses {
    return _expenses;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const ExpenseGroup._internal({required this.id, required groupName, required members, expenses, createdAt, updatedAt}): _groupName = groupName, _members = members, _expenses = expenses, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory ExpenseGroup({String? id, required String groupName, required List<String> members, List<ExpenseEntry>? expenses}) {
    return ExpenseGroup._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      groupName: groupName,
      members: members != null ? List<String>.unmodifiable(members) : members,
      expenses: expenses != null ? List<ExpenseEntry>.unmodifiable(expenses) : expenses);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpenseGroup &&
      id == other.id &&
      _groupName == other._groupName &&
      DeepCollectionEquality().equals(_members, other._members) &&
      DeepCollectionEquality().equals(_expenses, other._expenses);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ExpenseGroup {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("groupName=" + "$_groupName" + ", ");
    buffer.write("members=" + (_members != null ? _members!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ExpenseGroup copyWith({String? groupName, List<String>? members, List<ExpenseEntry>? expenses}) {
    return ExpenseGroup._internal(
      id: id,
      groupName: groupName ?? this.groupName,
      members: members ?? this.members,
      expenses: expenses ?? this.expenses);
  }
  
  ExpenseGroup copyWithModelFieldValues({
    ModelFieldValue<String>? groupName,
    ModelFieldValue<List<String>?>? members,
    ModelFieldValue<List<ExpenseEntry>?>? expenses
  }) {
    return ExpenseGroup._internal(
      id: id,
      groupName: groupName == null ? this.groupName : groupName.value,
      members: members == null ? this.members : members.value,
      expenses: expenses == null ? this.expenses : expenses.value
    );
  }
  
  ExpenseGroup.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _groupName = json['groupName'],
      _members = json['members']?.cast<String>(),
      _expenses = json['expenses'] is List
        ? (json['expenses'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => ExpenseEntry.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'groupName': _groupName, 'members': _members, 'expenses': _expenses?.map((ExpenseEntry? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'groupName': _groupName,
    'members': _members,
    'expenses': _expenses,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ExpenseGroupModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ExpenseGroupModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final GROUPNAME = amplify_core.QueryField(fieldName: "groupName");
  static final MEMBERS = amplify_core.QueryField(fieldName: "members");
  static final EXPENSES = amplify_core.QueryField(
    fieldName: "expenses",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'ExpenseEntry'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ExpenseGroup";
    modelSchemaDefinition.pluralName = "ExpenseGroups";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ExpenseGroup.GROUPNAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ExpenseGroup.MEMBERS,
      isRequired: true,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: ExpenseGroup.EXPENSES,
      isRequired: false,
      ofModelName: 'ExpenseEntry',
      associatedKey: ExpenseEntry.EXPENSEGROUPEXPENSESID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _ExpenseGroupModelType extends amplify_core.ModelType<ExpenseGroup> {
  const _ExpenseGroupModelType();
  
  @override
  ExpenseGroup fromJson(Map<String, dynamic> jsonData) {
    return ExpenseGroup.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ExpenseGroup';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ExpenseGroup] in your schema.
 */
class ExpenseGroupModelIdentifier implements amplify_core.ModelIdentifier<ExpenseGroup> {
  final String id;

  /** Create an instance of ExpenseGroupModelIdentifier using [id] the primary key. */
  const ExpenseGroupModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'ExpenseGroupModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ExpenseGroupModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}