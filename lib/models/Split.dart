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


/** This is an auto generated class representing the Split type in your schema. */
class Split extends amplify_core.Model {
  static const classType = const _SplitModelType();
  final String id;
  final String? _userName;
  final double? _amount;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _expenseEntrySplitsId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  SplitModelIdentifier get modelIdentifier {
      return SplitModelIdentifier(
        id: id
      );
  }
  
  String get userName {
    try {
      return _userName!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get amount {
    try {
      return _amount!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get expenseEntrySplitsId {
    return _expenseEntrySplitsId;
  }
  
  const Split._internal({required this.id, required userName, required amount, createdAt, updatedAt, expenseEntrySplitsId}): _userName = userName, _amount = amount, _createdAt = createdAt, _updatedAt = updatedAt, _expenseEntrySplitsId = expenseEntrySplitsId;
  
  factory Split({String? id, required String userName, required double amount, String? expenseEntrySplitsId}) {
    return Split._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      userName: userName,
      amount: amount,
      expenseEntrySplitsId: expenseEntrySplitsId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Split &&
      id == other.id &&
      _userName == other._userName &&
      _amount == other._amount &&
      _expenseEntrySplitsId == other._expenseEntrySplitsId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Split {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("userName=" + "$_userName" + ", ");
    buffer.write("amount=" + (_amount != null ? _amount!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("expenseEntrySplitsId=" + "$_expenseEntrySplitsId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Split copyWith({String? userName, double? amount, String? expenseEntrySplitsId}) {
    return Split._internal(
      id: id,
      userName: userName ?? this.userName,
      amount: amount ?? this.amount,
      expenseEntrySplitsId: expenseEntrySplitsId ?? this.expenseEntrySplitsId);
  }
  
  Split copyWithModelFieldValues({
    ModelFieldValue<String>? userName,
    ModelFieldValue<double>? amount,
    ModelFieldValue<String?>? expenseEntrySplitsId
  }) {
    return Split._internal(
      id: id,
      userName: userName == null ? this.userName : userName.value,
      amount: amount == null ? this.amount : amount.value,
      expenseEntrySplitsId: expenseEntrySplitsId == null ? this.expenseEntrySplitsId : expenseEntrySplitsId.value
    );
  }
  
  Split.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _userName = json['userName'],
      _amount = (json['amount'] as num?)?.toDouble(),
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _expenseEntrySplitsId = json['expenseEntrySplitsId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'userName': _userName, 'amount': _amount, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'expenseEntrySplitsId': _expenseEntrySplitsId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'userName': _userName,
    'amount': _amount,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'expenseEntrySplitsId': _expenseEntrySplitsId
  };

  static final amplify_core.QueryModelIdentifier<SplitModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<SplitModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final USERNAME = amplify_core.QueryField(fieldName: "userName");
  static final AMOUNT = amplify_core.QueryField(fieldName: "amount");
  static final EXPENSEENTRYSPLITSID = amplify_core.QueryField(fieldName: "expenseEntrySplitsId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Split";
    modelSchemaDefinition.pluralName = "Splits";
    
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
      key: Split.USERNAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Split.AMOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Split.EXPENSEENTRYSPLITSID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _SplitModelType extends amplify_core.ModelType<Split> {
  const _SplitModelType();
  
  @override
  Split fromJson(Map<String, dynamic> jsonData) {
    return Split.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Split';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Split] in your schema.
 */
class SplitModelIdentifier implements amplify_core.ModelIdentifier<Split> {
  final String id;

  /** Create an instance of SplitModelIdentifier using [id] the primary key. */
  const SplitModelIdentifier({
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
  String toString() => 'SplitModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is SplitModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}