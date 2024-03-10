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


/** This is an auto generated class representing the ExpenseEntry type in your schema. */
class ExpenseEntry extends amplify_core.Model {
  static const classType = const _ExpenseEntryModelType();
  final String id;
  final String? _userName;
  final double? _amount;
  final String? _currency;
  final String? _groupId;
  final String? _purpose;
  final String? _category;
  final String? _dateTime;
  final double? _exchangeRate;
  final double? _convertedAmount;
  final String? _receipt;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
  final String? _expenseGroupExpensesId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ExpenseEntryModelIdentifier get modelIdentifier {
      return ExpenseEntryModelIdentifier(
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
  
  String get currency {
    try {
      return _currency!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get groupId {
    try {
      return _groupId!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get purpose {
    return _purpose;
  }
  
  String? get category {
    return _category;
  }
  
  String? get dateTime {
    return _dateTime;
  }
  
  double? get exchangeRate {
    return _exchangeRate;
  }
  
  double? get convertedAmount {
    return _convertedAmount;
  }
  
  String? get receipt {
    return _receipt;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get expenseGroupExpensesId {
    return _expenseGroupExpensesId;
  }
  
  const ExpenseEntry._internal({required this.id, required userName, required amount, required currency, required groupId, purpose, category, dateTime, exchangeRate, convertedAmount, receipt, createdAt, updatedAt, expenseGroupExpensesId}): _userName = userName, _amount = amount, _currency = currency, _groupId = groupId, _purpose = purpose, _category = category, _dateTime = dateTime, _exchangeRate = exchangeRate, _convertedAmount = convertedAmount, _receipt = receipt, _createdAt = createdAt, _updatedAt = updatedAt, _expenseGroupExpensesId = expenseGroupExpensesId;
  
  factory ExpenseEntry({String? id, required String userName, required double amount, required String currency, required String groupId, String? purpose, String? category, String? dateTime, double? exchangeRate, double? convertedAmount, String? receipt, String? expenseGroupExpensesId}) {
    return ExpenseEntry._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      userName: userName,
      amount: amount,
      currency: currency,
      groupId: groupId,
      purpose: purpose,
      category: category,
      dateTime: dateTime,
      exchangeRate: exchangeRate,
      convertedAmount: convertedAmount,
      receipt: receipt,
      expenseGroupExpensesId: expenseGroupExpensesId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpenseEntry &&
      id == other.id &&
      _userName == other._userName &&
      _amount == other._amount &&
      _currency == other._currency &&
      _groupId == other._groupId &&
      _purpose == other._purpose &&
      _category == other._category &&
      _dateTime == other._dateTime &&
      _exchangeRate == other._exchangeRate &&
      _convertedAmount == other._convertedAmount &&
      _receipt == other._receipt &&
      _expenseGroupExpensesId == other._expenseGroupExpensesId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("ExpenseEntry {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("userName=" + "$_userName" + ", ");
    buffer.write("amount=" + (_amount != null ? _amount!.toString() : "null") + ", ");
    buffer.write("currency=" + "$_currency" + ", ");
    buffer.write("groupId=" + "$_groupId" + ", ");
    buffer.write("purpose=" + "$_purpose" + ", ");
    buffer.write("category=" + "$_category" + ", ");
    buffer.write("dateTime=" + "$_dateTime" + ", ");
    buffer.write("exchangeRate=" + (_exchangeRate != null ? _exchangeRate!.toString() : "null") + ", ");
    buffer.write("convertedAmount=" + (_convertedAmount != null ? _convertedAmount!.toString() : "null") + ", ");
    buffer.write("receipt=" + "$_receipt" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("expenseGroupExpensesId=" + "$_expenseGroupExpensesId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  ExpenseEntry copyWith({String? userName, double? amount, String? currency, String? groupId, String? purpose, String? category, String? dateTime, double? exchangeRate, double? convertedAmount, String? receipt, String? expenseGroupExpensesId}) {
    return ExpenseEntry._internal(
      id: id,
      userName: userName ?? this.userName,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      groupId: groupId ?? this.groupId,
      purpose: purpose ?? this.purpose,
      category: category ?? this.category,
      dateTime: dateTime ?? this.dateTime,
      exchangeRate: exchangeRate ?? this.exchangeRate,
      convertedAmount: convertedAmount ?? this.convertedAmount,
      receipt: receipt ?? this.receipt,
      expenseGroupExpensesId: expenseGroupExpensesId ?? this.expenseGroupExpensesId);
  }
  
  ExpenseEntry copyWithModelFieldValues({
    ModelFieldValue<String>? userName,
    ModelFieldValue<double>? amount,
    ModelFieldValue<String>? currency,
    ModelFieldValue<String>? groupId,
    ModelFieldValue<String?>? purpose,
    ModelFieldValue<String?>? category,
    ModelFieldValue<String?>? dateTime,
    ModelFieldValue<double?>? exchangeRate,
    ModelFieldValue<double?>? convertedAmount,
    ModelFieldValue<String?>? receipt,
    ModelFieldValue<String?>? expenseGroupExpensesId
  }) {
    return ExpenseEntry._internal(
      id: id,
      userName: userName == null ? this.userName : userName.value,
      amount: amount == null ? this.amount : amount.value,
      currency: currency == null ? this.currency : currency.value,
      groupId: groupId == null ? this.groupId : groupId.value,
      purpose: purpose == null ? this.purpose : purpose.value,
      category: category == null ? this.category : category.value,
      dateTime: dateTime == null ? this.dateTime : dateTime.value,
      exchangeRate: exchangeRate == null ? this.exchangeRate : exchangeRate.value,
      convertedAmount: convertedAmount == null ? this.convertedAmount : convertedAmount.value,
      receipt: receipt == null ? this.receipt : receipt.value,
      expenseGroupExpensesId: expenseGroupExpensesId == null ? this.expenseGroupExpensesId : expenseGroupExpensesId.value
    );
  }
  
  ExpenseEntry.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _userName = json['userName'],
      _amount = (json['amount'] as num?)?.toDouble(),
      _currency = json['currency'],
      _groupId = json['groupId'],
      _purpose = json['purpose'],
      _category = json['category'],
      _dateTime = json['dateTime'],
      _exchangeRate = (json['exchangeRate'] as num?)?.toDouble(),
      _convertedAmount = (json['convertedAmount'] as num?)?.toDouble(),
      _receipt = json['receipt'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _expenseGroupExpensesId = json['expenseGroupExpensesId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'userName': _userName, 'amount': _amount, 'currency': _currency, 'groupId': _groupId, 'purpose': _purpose, 'category': _category, 'dateTime': _dateTime, 'exchangeRate': _exchangeRate, 'convertedAmount': _convertedAmount, 'receipt': _receipt, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'expenseGroupExpensesId': _expenseGroupExpensesId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'userName': _userName,
    'amount': _amount,
    'currency': _currency,
    'groupId': _groupId,
    'purpose': _purpose,
    'category': _category,
    'dateTime': _dateTime,
    'exchangeRate': _exchangeRate,
    'convertedAmount': _convertedAmount,
    'receipt': _receipt,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'expenseGroupExpensesId': _expenseGroupExpensesId
  };

  static final amplify_core.QueryModelIdentifier<ExpenseEntryModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ExpenseEntryModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final USERNAME = amplify_core.QueryField(fieldName: "userName");
  static final AMOUNT = amplify_core.QueryField(fieldName: "amount");
  static final CURRENCY = amplify_core.QueryField(fieldName: "currency");
  static final GROUPID = amplify_core.QueryField(fieldName: "groupId");
  static final PURPOSE = amplify_core.QueryField(fieldName: "purpose");
  static final CATEGORY = amplify_core.QueryField(fieldName: "category");
  static final DATETIME = amplify_core.QueryField(fieldName: "dateTime");
  static final EXCHANGERATE = amplify_core.QueryField(fieldName: "exchangeRate");
  static final CONVERTEDAMOUNT = amplify_core.QueryField(fieldName: "convertedAmount");
  static final RECEIPT = amplify_core.QueryField(fieldName: "receipt");
  static final EXPENSEGROUPEXPENSESID = amplify_core.QueryField(fieldName: "expenseGroupExpensesId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "ExpenseEntry";
    modelSchemaDefinition.pluralName = "ExpenseEntries";
    
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
      key: ExpenseEntry.USERNAME,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ExpenseEntry.AMOUNT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ExpenseEntry.CURRENCY,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ExpenseEntry.GROUPID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ExpenseEntry.PURPOSE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ExpenseEntry.CATEGORY,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ExpenseEntry.DATETIME,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ExpenseEntry.EXCHANGERATE,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ExpenseEntry.CONVERTEDAMOUNT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: ExpenseEntry.RECEIPT,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
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
      key: ExpenseEntry.EXPENSEGROUPEXPENSESID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _ExpenseEntryModelType extends amplify_core.ModelType<ExpenseEntry> {
  const _ExpenseEntryModelType();
  
  @override
  ExpenseEntry fromJson(Map<String, dynamic> jsonData) {
    return ExpenseEntry.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'ExpenseEntry';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [ExpenseEntry] in your schema.
 */
class ExpenseEntryModelIdentifier implements amplify_core.ModelIdentifier<ExpenseEntry> {
  final String id;

  /** Create an instance of ExpenseEntryModelIdentifier using [id] the primary key. */
  const ExpenseEntryModelIdentifier({
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
  String toString() => 'ExpenseEntryModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ExpenseEntryModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}