//  This file was automatically generated and should not be edited.

import AWSAppSync

public struct CreateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil, username: String) {
    graphQLMap = ["id": id, "username": username]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String {
    get {
      return graphQLMap["username"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }
}

public struct ModelUserConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(username: ModelStringInput? = nil, and: [ModelUserConditionInput?]? = nil, or: [ModelUserConditionInput?]? = nil, not: ModelUserConditionInput? = nil) {
    graphQLMap = ["username": username, "and": and, "or": or, "not": not]
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var and: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserConditionInput? {
    get {
      return graphQLMap["not"] as! ModelUserConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelStringInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: String? = nil, eq: String? = nil, le: String? = nil, lt: String? = nil, ge: String? = nil, gt: String? = nil, contains: String? = nil, notContains: String? = nil, between: [String?]? = nil, beginsWith: String? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: String? {
    get {
      return graphQLMap["ne"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: String? {
    get {
      return graphQLMap["eq"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: String? {
    get {
      return graphQLMap["le"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: String? {
    get {
      return graphQLMap["lt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: String? {
    get {
      return graphQLMap["ge"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: String? {
    get {
      return graphQLMap["gt"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: String? {
    get {
      return graphQLMap["contains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: String? {
    get {
      return graphQLMap["notContains"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [String?]? {
    get {
      return graphQLMap["between"] as! [String?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: String? {
    get {
      return graphQLMap["beginsWith"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public enum ModelAttributeTypes: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case binary
  case binarySet
  case bool
  case list
  case map
  case number
  case numberSet
  case string
  case stringSet
  case null
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "binary": self = .binary
      case "binarySet": self = .binarySet
      case "bool": self = .bool
      case "list": self = .list
      case "map": self = .map
      case "number": self = .number
      case "numberSet": self = .numberSet
      case "string": self = .string
      case "stringSet": self = .stringSet
      case "_null": self = .null
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .binary: return "binary"
      case .binarySet: return "binarySet"
      case .bool: return "bool"
      case .list: return "list"
      case .map: return "map"
      case .number: return "number"
      case .numberSet: return "numberSet"
      case .string: return "string"
      case .stringSet: return "stringSet"
      case .null: return "_null"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelAttributeTypes, rhs: ModelAttributeTypes) -> Bool {
    switch (lhs, rhs) {
      case (.binary, .binary): return true
      case (.binarySet, .binarySet): return true
      case (.bool, .bool): return true
      case (.list, .list): return true
      case (.map, .map): return true
      case (.number, .number): return true
      case (.numberSet, .numberSet): return true
      case (.string, .string): return true
      case (.stringSet, .stringSet): return true
      case (.null, .null): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public struct ModelSizeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }
}

public struct UpdateUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID, username: String? = nil) {
    graphQLMap = ["id": id, "username": username]
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: String? {
    get {
      return graphQLMap["username"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }
}

public struct DeleteUserInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct CreateNotesInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(title: String, content: String, id: GraphQLID? = nil, index: Int? = nil, userId: GraphQLID? = nil) {
    graphQLMap = ["title": title, "content": content, "id": id, "index": index, "userId": userId]
  }

  public var title: String {
    get {
      return graphQLMap["title"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: String {
    get {
      return graphQLMap["content"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var index: Int? {
    get {
      return graphQLMap["index"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "index")
    }
  }

  public var userId: GraphQLID? {
    get {
      return graphQLMap["userId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct ModelNotesConditionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(title: ModelStringInput? = nil, content: ModelStringInput? = nil, index: ModelIntInput? = nil, userId: ModelIDInput? = nil, and: [ModelNotesConditionInput?]? = nil, or: [ModelNotesConditionInput?]? = nil, not: ModelNotesConditionInput? = nil) {
    graphQLMap = ["title": title, "content": content, "index": index, "userId": userId, "and": and, "or": or, "not": not]
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var index: ModelIntInput? {
    get {
      return graphQLMap["index"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "index")
    }
  }

  public var userId: ModelIDInput? {
    get {
      return graphQLMap["userId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var and: [ModelNotesConditionInput?]? {
    get {
      return graphQLMap["and"] as! [ModelNotesConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelNotesConditionInput?]? {
    get {
      return graphQLMap["or"] as! [ModelNotesConditionInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelNotesConditionInput? {
    get {
      return graphQLMap["not"] as! ModelNotesConditionInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelIntInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: Int? = nil, eq: Int? = nil, le: Int? = nil, lt: Int? = nil, ge: Int? = nil, gt: Int? = nil, between: [Int?]? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "between": between, "attributeExists": attributeExists, "attributeType": attributeType]
  }

  public var ne: Int? {
    get {
      return graphQLMap["ne"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: Int? {
    get {
      return graphQLMap["eq"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: Int? {
    get {
      return graphQLMap["le"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: Int? {
    get {
      return graphQLMap["lt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: Int? {
    get {
      return graphQLMap["ge"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: Int? {
    get {
      return graphQLMap["gt"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var between: [Int?]? {
    get {
      return graphQLMap["between"] as! [Int?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }
}

public struct ModelIDInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(ne: GraphQLID? = nil, eq: GraphQLID? = nil, le: GraphQLID? = nil, lt: GraphQLID? = nil, ge: GraphQLID? = nil, gt: GraphQLID? = nil, contains: GraphQLID? = nil, notContains: GraphQLID? = nil, between: [GraphQLID?]? = nil, beginsWith: GraphQLID? = nil, attributeExists: Bool? = nil, attributeType: ModelAttributeTypes? = nil, size: ModelSizeInput? = nil) {
    graphQLMap = ["ne": ne, "eq": eq, "le": le, "lt": lt, "ge": ge, "gt": gt, "contains": contains, "notContains": notContains, "between": between, "beginsWith": beginsWith, "attributeExists": attributeExists, "attributeType": attributeType, "size": size]
  }

  public var ne: GraphQLID? {
    get {
      return graphQLMap["ne"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ne")
    }
  }

  public var eq: GraphQLID? {
    get {
      return graphQLMap["eq"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "eq")
    }
  }

  public var le: GraphQLID? {
    get {
      return graphQLMap["le"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "le")
    }
  }

  public var lt: GraphQLID? {
    get {
      return graphQLMap["lt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lt")
    }
  }

  public var ge: GraphQLID? {
    get {
      return graphQLMap["ge"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ge")
    }
  }

  public var gt: GraphQLID? {
    get {
      return graphQLMap["gt"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "gt")
    }
  }

  public var contains: GraphQLID? {
    get {
      return graphQLMap["contains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "contains")
    }
  }

  public var notContains: GraphQLID? {
    get {
      return graphQLMap["notContains"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "notContains")
    }
  }

  public var between: [GraphQLID?]? {
    get {
      return graphQLMap["between"] as! [GraphQLID?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "between")
    }
  }

  public var beginsWith: GraphQLID? {
    get {
      return graphQLMap["beginsWith"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "beginsWith")
    }
  }

  public var attributeExists: Bool? {
    get {
      return graphQLMap["attributeExists"] as! Bool?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeExists")
    }
  }

  public var attributeType: ModelAttributeTypes? {
    get {
      return graphQLMap["attributeType"] as! ModelAttributeTypes?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "attributeType")
    }
  }

  public var size: ModelSizeInput? {
    get {
      return graphQLMap["size"] as! ModelSizeInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "size")
    }
  }
}

public struct UpdateNotesInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(title: String? = nil, content: String? = nil, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil) {
    graphQLMap = ["title": title, "content": content, "id": id, "index": index, "userId": userId]
  }

  public var title: String? {
    get {
      return graphQLMap["title"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: String? {
    get {
      return graphQLMap["content"] as! String?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var index: Int? {
    get {
      return graphQLMap["index"] as! Int?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "index")
    }
  }

  public var userId: GraphQLID? {
    get {
      return graphQLMap["userId"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }
}

public struct DeleteNotesInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: GraphQLID? = nil) {
    graphQLMap = ["id": id]
  }

  public var id: GraphQLID? {
    get {
      return graphQLMap["id"] as! GraphQLID?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public struct ModelUserFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(id: ModelIDInput? = nil, username: ModelStringInput? = nil, and: [ModelUserFilterInput?]? = nil, or: [ModelUserFilterInput?]? = nil, not: ModelUserFilterInput? = nil) {
    graphQLMap = ["id": id, "username": username, "and": and, "or": or, "not": not]
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var username: ModelStringInput? {
    get {
      return graphQLMap["username"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "username")
    }
  }

  public var and: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelUserFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelUserFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelUserFilterInput? {
    get {
      return graphQLMap["not"] as! ModelUserFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public struct ModelNotesFilterInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  public init(title: ModelStringInput? = nil, content: ModelStringInput? = nil, id: ModelIDInput? = nil, index: ModelIntInput? = nil, userId: ModelIDInput? = nil, and: [ModelNotesFilterInput?]? = nil, or: [ModelNotesFilterInput?]? = nil, not: ModelNotesFilterInput? = nil) {
    graphQLMap = ["title": title, "content": content, "id": id, "index": index, "userId": userId, "and": and, "or": or, "not": not]
  }

  public var title: ModelStringInput? {
    get {
      return graphQLMap["title"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  public var content: ModelStringInput? {
    get {
      return graphQLMap["content"] as! ModelStringInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "content")
    }
  }

  public var id: ModelIDInput? {
    get {
      return graphQLMap["id"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var index: ModelIntInput? {
    get {
      return graphQLMap["index"] as! ModelIntInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "index")
    }
  }

  public var userId: ModelIDInput? {
    get {
      return graphQLMap["userId"] as! ModelIDInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "userId")
    }
  }

  public var and: [ModelNotesFilterInput?]? {
    get {
      return graphQLMap["and"] as! [ModelNotesFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "and")
    }
  }

  public var or: [ModelNotesFilterInput?]? {
    get {
      return graphQLMap["or"] as! [ModelNotesFilterInput?]?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "or")
    }
  }

  public var not: ModelNotesFilterInput? {
    get {
      return graphQLMap["not"] as! ModelNotesFilterInput?
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "not")
    }
  }
}

public enum ModelSortDirection: RawRepresentable, Equatable, JSONDecodable, JSONEncodable {
  public typealias RawValue = String
  case asc
  case desc
  /// Auto generated constant for unknown enum values
  case unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ASC": self = .asc
      case "DESC": self = .desc
      default: self = .unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .asc: return "ASC"
      case .desc: return "DESC"
      case .unknown(let value): return value
    }
  }

  public static func == (lhs: ModelSortDirection, rhs: ModelSortDirection) -> Bool {
    switch (lhs, rhs) {
      case (.asc, .asc): return true
      case (.desc, .desc): return true
      case (.unknown(let lhsValue), .unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }
}

public final class CreateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateUser($input: CreateUserInput!, $condition: ModelUserConditionInput) {\n  createUser(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    notes {\n      __typename\n      items {\n        __typename\n        title\n        content\n        id\n        index\n        userId\n      }\n      nextToken\n    }\n  }\n}"

  public var input: CreateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: CreateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createUser: CreateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createUser": createUser.flatMap { $0.snapshot }])
    }

    public var createUser: CreateUser? {
      get {
        return (snapshot["createUser"] as? Snapshot).flatMap { CreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createUser")
      }
    }

    public struct CreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("notes", type: .object(Note.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, notes: Note? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var notes: Note? {
        get {
          return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "notes")
        }
      }

      public struct Note: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelNotesConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelNotesConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Notes"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("index", type: .scalar(Int.self)),
            GraphQLField("userId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var index: Int? {
            get {
              return snapshot["index"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "index")
            }
          }

          public var userId: GraphQLID? {
            get {
              return snapshot["userId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }
        }
      }
    }
  }
}

public final class UpdateUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateUser($input: UpdateUserInput!, $condition: ModelUserConditionInput) {\n  updateUser(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    notes {\n      __typename\n      items {\n        __typename\n        title\n        content\n        id\n        index\n        userId\n      }\n      nextToken\n    }\n  }\n}"

  public var input: UpdateUserInput
  public var condition: ModelUserConditionInput?

  public init(input: UpdateUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateUser: UpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateUser": updateUser.flatMap { $0.snapshot }])
    }

    public var updateUser: UpdateUser? {
      get {
        return (snapshot["updateUser"] as? Snapshot).flatMap { UpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateUser")
      }
    }

    public struct UpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("notes", type: .object(Note.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, notes: Note? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var notes: Note? {
        get {
          return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "notes")
        }
      }

      public struct Note: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelNotesConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelNotesConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Notes"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("index", type: .scalar(Int.self)),
            GraphQLField("userId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var index: Int? {
            get {
              return snapshot["index"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "index")
            }
          }

          public var userId: GraphQLID? {
            get {
              return snapshot["userId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }
        }
      }
    }
  }
}

public final class DeleteUserMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteUser($input: DeleteUserInput!, $condition: ModelUserConditionInput) {\n  deleteUser(input: $input, condition: $condition) {\n    __typename\n    id\n    username\n    notes {\n      __typename\n      items {\n        __typename\n        title\n        content\n        id\n        index\n        userId\n      }\n      nextToken\n    }\n  }\n}"

  public var input: DeleteUserInput
  public var condition: ModelUserConditionInput?

  public init(input: DeleteUserInput, condition: ModelUserConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteUser", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteUser: DeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteUser": deleteUser.flatMap { $0.snapshot }])
    }

    public var deleteUser: DeleteUser? {
      get {
        return (snapshot["deleteUser"] as? Snapshot).flatMap { DeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteUser")
      }
    }

    public struct DeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("notes", type: .object(Note.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, notes: Note? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var notes: Note? {
        get {
          return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "notes")
        }
      }

      public struct Note: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelNotesConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelNotesConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Notes"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("index", type: .scalar(Int.self)),
            GraphQLField("userId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var index: Int? {
            get {
              return snapshot["index"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "index")
            }
          }

          public var userId: GraphQLID? {
            get {
              return snapshot["userId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }
        }
      }
    }
  }
}

public final class CreateNotesMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateNotes($input: CreateNotesInput!, $condition: ModelNotesConditionInput) {\n  createNotes(input: $input, condition: $condition) {\n    __typename\n    title\n    content\n    id\n    index\n    userId\n    user {\n      __typename\n      id\n      username\n      notes {\n        __typename\n        nextToken\n      }\n    }\n  }\n}"

  public var input: CreateNotesInput
  public var condition: ModelNotesConditionInput?

  public init(input: CreateNotesInput, condition: ModelNotesConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createNotes", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(CreateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createNotes: CreateNote? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createNotes": createNotes.flatMap { $0.snapshot }])
    }

    public var createNotes: CreateNote? {
      get {
        return (snapshot["createNotes"] as? Snapshot).flatMap { CreateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createNotes")
      }
    }

    public struct CreateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("index", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(GraphQLID.self)),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil, user: User) {
        self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId, "user": user.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var index: Int? {
        get {
          return snapshot["index"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "index")
        }
      }

      public var userId: GraphQLID? {
        get {
          return snapshot["userId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .object(Note.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, notes: Note? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var notes: Note? {
          get {
            return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "notes")
          }
        }

        public struct Note: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelNotesConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelNotesConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class UpdateNotesMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateNotes($input: UpdateNotesInput!, $condition: ModelNotesConditionInput) {\n  updateNotes(input: $input, condition: $condition) {\n    __typename\n    title\n    content\n    id\n    index\n    userId\n    user {\n      __typename\n      id\n      username\n      notes {\n        __typename\n        nextToken\n      }\n    }\n  }\n}"

  public var input: UpdateNotesInput
  public var condition: ModelNotesConditionInput?

  public init(input: UpdateNotesInput, condition: ModelNotesConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateNotes", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(UpdateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateNotes: UpdateNote? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateNotes": updateNotes.flatMap { $0.snapshot }])
    }

    public var updateNotes: UpdateNote? {
      get {
        return (snapshot["updateNotes"] as? Snapshot).flatMap { UpdateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateNotes")
      }
    }

    public struct UpdateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("index", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(GraphQLID.self)),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil, user: User) {
        self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId, "user": user.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var index: Int? {
        get {
          return snapshot["index"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "index")
        }
      }

      public var userId: GraphQLID? {
        get {
          return snapshot["userId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .object(Note.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, notes: Note? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var notes: Note? {
          get {
            return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "notes")
          }
        }

        public struct Note: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelNotesConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelNotesConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class DeleteNotesMutation: GraphQLMutation {
  public static let operationString =
    "mutation DeleteNotes($input: DeleteNotesInput!, $condition: ModelNotesConditionInput) {\n  deleteNotes(input: $input, condition: $condition) {\n    __typename\n    title\n    content\n    id\n    index\n    userId\n    user {\n      __typename\n      id\n      username\n      notes {\n        __typename\n        nextToken\n      }\n    }\n  }\n}"

  public var input: DeleteNotesInput
  public var condition: ModelNotesConditionInput?

  public init(input: DeleteNotesInput, condition: ModelNotesConditionInput? = nil) {
    self.input = input
    self.condition = condition
  }

  public var variables: GraphQLMap? {
    return ["input": input, "condition": condition]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteNotes", arguments: ["input": GraphQLVariable("input"), "condition": GraphQLVariable("condition")], type: .object(DeleteNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(deleteNotes: DeleteNote? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "deleteNotes": deleteNotes.flatMap { $0.snapshot }])
    }

    public var deleteNotes: DeleteNote? {
      get {
        return (snapshot["deleteNotes"] as? Snapshot).flatMap { DeleteNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "deleteNotes")
      }
    }

    public struct DeleteNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("index", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(GraphQLID.self)),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil, user: User) {
        self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId, "user": user.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var index: Int? {
        get {
          return snapshot["index"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "index")
        }
      }

      public var userId: GraphQLID? {
        get {
          return snapshot["userId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .object(Note.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, notes: Note? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var notes: Note? {
          get {
            return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "notes")
          }
        }

        public struct Note: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelNotesConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelNotesConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class GetUserQuery: GraphQLQuery {
  public static let operationString =
    "query GetUser($id: ID!) {\n  getUser(id: $id) {\n    __typename\n    id\n    username\n    notes {\n      __typename\n      items {\n        __typename\n        title\n        content\n        id\n        index\n        userId\n      }\n      nextToken\n    }\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getUser", arguments: ["id": GraphQLVariable("id")], type: .object(GetUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getUser: GetUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "getUser": getUser.flatMap { $0.snapshot }])
    }

    public var getUser: GetUser? {
      get {
        return (snapshot["getUser"] as? Snapshot).flatMap { GetUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getUser")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("notes", type: .object(Note.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, notes: Note? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var notes: Note? {
        get {
          return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "notes")
        }
      }

      public struct Note: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelNotesConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelNotesConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Notes"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("index", type: .scalar(Int.self)),
            GraphQLField("userId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var index: Int? {
            get {
              return snapshot["index"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "index")
            }
          }

          public var userId: GraphQLID? {
            get {
              return snapshot["userId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($filter: ModelUserFilterInput, $limit: Int, $nextToken: String) {\n  listUsers(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      username\n      notes {\n        __typename\n        nextToken\n      }\n    }\n    nextToken\n  }\n}"

  public var filter: ModelUserFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelUserFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: ListUser? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.snapshot }])
    }

    public var listUsers: ListUser? {
      get {
        return (snapshot["listUsers"] as? Snapshot).flatMap { ListUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelUserConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelUserConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .object(Note.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, notes: Note? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var notes: Note? {
          get {
            return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "notes")
          }
        }

        public struct Note: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelNotesConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelNotesConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class GetNotesQuery: GraphQLQuery {
  public static let operationString =
    "query GetNotes($id: ID!) {\n  getNotes(id: $id) {\n    __typename\n    title\n    content\n    id\n    index\n    userId\n    user {\n      __typename\n      id\n      username\n      notes {\n        __typename\n        nextToken\n      }\n    }\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getNotes", arguments: ["id": GraphQLVariable("id")], type: .object(GetNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getNotes: GetNote? = nil) {
      self.init(snapshot: ["__typename": "Query", "getNotes": getNotes.flatMap { $0.snapshot }])
    }

    public var getNotes: GetNote? {
      get {
        return (snapshot["getNotes"] as? Snapshot).flatMap { GetNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getNotes")
      }
    }

    public struct GetNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("index", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(GraphQLID.self)),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil, user: User) {
        self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId, "user": user.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var index: Int? {
        get {
          return snapshot["index"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "index")
        }
      }

      public var userId: GraphQLID? {
        get {
          return snapshot["userId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .object(Note.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, notes: Note? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var notes: Note? {
          get {
            return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "notes")
          }
        }

        public struct Note: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelNotesConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelNotesConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class ListNotessQuery: GraphQLQuery {
  public static let operationString =
    "query ListNotess($filter: ModelNotesFilterInput, $limit: Int, $nextToken: String) {\n  listNotess(filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      title\n      content\n      id\n      index\n      userId\n      user {\n        __typename\n        id\n        username\n      }\n    }\n    nextToken\n  }\n}"

  public var filter: ModelNotesFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(filter: ModelNotesFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listNotess", arguments: ["filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(ListNotess.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listNotess: ListNotess? = nil) {
      self.init(snapshot: ["__typename": "Query", "listNotess": listNotess.flatMap { $0.snapshot }])
    }

    public var listNotess: ListNotess? {
      get {
        return (snapshot["listNotess"] as? Snapshot).flatMap { ListNotess(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "listNotess")
      }
    }

    public struct ListNotess: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelNotesConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelNotesConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Notes"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("content", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("index", type: .scalar(Int.self)),
          GraphQLField("userId", type: .scalar(GraphQLID.self)),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil, user: User) {
          self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId, "user": user.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var content: String {
          get {
            return snapshot["content"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var index: Int? {
          get {
            return snapshot["index"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "index")
          }
        }

        public var userId: GraphQLID? {
          get {
            return snapshot["userId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("username", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, username: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "username": username])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var username: String {
            get {
              return snapshot["username"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "username")
            }
          }
        }
      }
    }
  }
}

public final class GetNoteByIndexQuery: GraphQLQuery {
  public static let operationString =
    "query GetNoteByIndex($index: Int, $sortDirection: ModelSortDirection, $filter: ModelNotesFilterInput, $limit: Int, $nextToken: String) {\n  getNoteByIndex(index: $index, sortDirection: $sortDirection, filter: $filter, limit: $limit, nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      title\n      content\n      id\n      index\n      userId\n      user {\n        __typename\n        id\n        username\n      }\n    }\n    nextToken\n  }\n}"

  public var index: Int?
  public var sortDirection: ModelSortDirection?
  public var filter: ModelNotesFilterInput?
  public var limit: Int?
  public var nextToken: String?

  public init(index: Int? = nil, sortDirection: ModelSortDirection? = nil, filter: ModelNotesFilterInput? = nil, limit: Int? = nil, nextToken: String? = nil) {
    self.index = index
    self.sortDirection = sortDirection
    self.filter = filter
    self.limit = limit
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["index": index, "sortDirection": sortDirection, "filter": filter, "limit": limit, "nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getNoteByIndex", arguments: ["index": GraphQLVariable("index"), "sortDirection": GraphQLVariable("sortDirection"), "filter": GraphQLVariable("filter"), "limit": GraphQLVariable("limit"), "nextToken": GraphQLVariable("nextToken")], type: .object(GetNoteByIndex.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getNoteByIndex: GetNoteByIndex? = nil) {
      self.init(snapshot: ["__typename": "Query", "getNoteByIndex": getNoteByIndex.flatMap { $0.snapshot }])
    }

    public var getNoteByIndex: GetNoteByIndex? {
      get {
        return (snapshot["getNoteByIndex"] as? Snapshot).flatMap { GetNoteByIndex(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getNoteByIndex")
      }
    }

    public struct GetNoteByIndex: GraphQLSelectionSet {
      public static let possibleTypes = ["ModelNotesConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "ModelNotesConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Notes"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("content", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("index", type: .scalar(Int.self)),
          GraphQLField("userId", type: .scalar(GraphQLID.self)),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil, user: User) {
          self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId, "user": user.snapshot])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var content: String {
          get {
            return snapshot["content"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "content")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var index: Int? {
          get {
            return snapshot["index"] as? Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "index")
          }
        }

        public var userId: GraphQLID? {
          get {
            return snapshot["userId"] as? GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "userId")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["User"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("username", type: .nonNull(.scalar(String.self))),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, username: String) {
            self.init(snapshot: ["__typename": "User", "id": id, "username": username])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var username: String {
            get {
              return snapshot["username"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "username")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateUser($id: String!) {\n  onCreateUser(id: $id) {\n    __typename\n    id\n    username\n    notes {\n      __typename\n      items {\n        __typename\n        title\n        content\n        id\n        index\n        userId\n      }\n      nextToken\n    }\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateUser", arguments: ["id": GraphQLVariable("id")], type: .object(OnCreateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateUser: OnCreateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateUser": onCreateUser.flatMap { $0.snapshot }])
    }

    public var onCreateUser: OnCreateUser? {
      get {
        return (snapshot["onCreateUser"] as? Snapshot).flatMap { OnCreateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateUser")
      }
    }

    public struct OnCreateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("notes", type: .object(Note.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, notes: Note? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var notes: Note? {
        get {
          return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "notes")
        }
      }

      public struct Note: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelNotesConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelNotesConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Notes"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("index", type: .scalar(Int.self)),
            GraphQLField("userId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var index: Int? {
            get {
              return snapshot["index"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "index")
            }
          }

          public var userId: GraphQLID? {
            get {
              return snapshot["userId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateUser($id: String!) {\n  onUpdateUser(id: $id) {\n    __typename\n    id\n    username\n    notes {\n      __typename\n      items {\n        __typename\n        title\n        content\n        id\n        index\n        userId\n      }\n      nextToken\n    }\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateUser", arguments: ["id": GraphQLVariable("id")], type: .object(OnUpdateUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateUser: OnUpdateUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateUser": onUpdateUser.flatMap { $0.snapshot }])
    }

    public var onUpdateUser: OnUpdateUser? {
      get {
        return (snapshot["onUpdateUser"] as? Snapshot).flatMap { OnUpdateUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateUser")
      }
    }

    public struct OnUpdateUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("notes", type: .object(Note.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, notes: Note? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var notes: Note? {
        get {
          return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "notes")
        }
      }

      public struct Note: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelNotesConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelNotesConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Notes"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("index", type: .scalar(Int.self)),
            GraphQLField("userId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var index: Int? {
            get {
              return snapshot["index"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "index")
            }
          }

          public var userId: GraphQLID? {
            get {
              return snapshot["userId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteUserSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteUser($id: String!) {\n  onDeleteUser(id: $id) {\n    __typename\n    id\n    username\n    notes {\n      __typename\n      items {\n        __typename\n        title\n        content\n        id\n        index\n        userId\n      }\n      nextToken\n    }\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteUser", arguments: ["id": GraphQLVariable("id")], type: .object(OnDeleteUser.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteUser: OnDeleteUser? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteUser": onDeleteUser.flatMap { $0.snapshot }])
    }

    public var onDeleteUser: OnDeleteUser? {
      get {
        return (snapshot["onDeleteUser"] as? Snapshot).flatMap { OnDeleteUser(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteUser")
      }
    }

    public struct OnDeleteUser: GraphQLSelectionSet {
      public static let possibleTypes = ["User"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("username", type: .nonNull(.scalar(String.self))),
        GraphQLField("notes", type: .object(Note.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, username: String, notes: Note? = nil) {
        self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var username: String {
        get {
          return snapshot["username"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "username")
        }
      }

      public var notes: Note? {
        get {
          return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "notes")
        }
      }

      public struct Note: GraphQLSelectionSet {
        public static let possibleTypes = ["ModelNotesConnection"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("items", type: .list(.object(Item.selections))),
          GraphQLField("nextToken", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(items: [Item?]? = nil, nextToken: String? = nil) {
          self.init(snapshot: ["__typename": "ModelNotesConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var items: [Item?]? {
          get {
            return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
          }
          set {
            snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
          }
        }

        public var nextToken: String? {
          get {
            return snapshot["nextToken"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "nextToken")
          }
        }

        public struct Item: GraphQLSelectionSet {
          public static let possibleTypes = ["Notes"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("content", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("index", type: .scalar(Int.self)),
            GraphQLField("userId", type: .scalar(GraphQLID.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil) {
            self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var title: String {
            get {
              return snapshot["title"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "title")
            }
          }

          public var content: String {
            get {
              return snapshot["content"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "content")
            }
          }

          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var index: Int? {
            get {
              return snapshot["index"] as? Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "index")
            }
          }

          public var userId: GraphQLID? {
            get {
              return snapshot["userId"] as? GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "userId")
            }
          }
        }
      }
    }
  }
}

public final class OnCreateNotesSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnCreateNotes($id: String!) {\n  onCreateNotes(id: $id) {\n    __typename\n    title\n    content\n    id\n    index\n    userId\n    user {\n      __typename\n      id\n      username\n      notes {\n        __typename\n        nextToken\n      }\n    }\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onCreateNotes", arguments: ["id": GraphQLVariable("id")], type: .object(OnCreateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onCreateNotes: OnCreateNote? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onCreateNotes": onCreateNotes.flatMap { $0.snapshot }])
    }

    public var onCreateNotes: OnCreateNote? {
      get {
        return (snapshot["onCreateNotes"] as? Snapshot).flatMap { OnCreateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onCreateNotes")
      }
    }

    public struct OnCreateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("index", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(GraphQLID.self)),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil, user: User) {
        self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId, "user": user.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var index: Int? {
        get {
          return snapshot["index"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "index")
        }
      }

      public var userId: GraphQLID? {
        get {
          return snapshot["userId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .object(Note.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, notes: Note? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var notes: Note? {
          get {
            return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "notes")
          }
        }

        public struct Note: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelNotesConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelNotesConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnUpdateNotesSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnUpdateNotes($id: String!) {\n  onUpdateNotes(id: $id) {\n    __typename\n    title\n    content\n    id\n    index\n    userId\n    user {\n      __typename\n      id\n      username\n      notes {\n        __typename\n        nextToken\n      }\n    }\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onUpdateNotes", arguments: ["id": GraphQLVariable("id")], type: .object(OnUpdateNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onUpdateNotes: OnUpdateNote? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onUpdateNotes": onUpdateNotes.flatMap { $0.snapshot }])
    }

    public var onUpdateNotes: OnUpdateNote? {
      get {
        return (snapshot["onUpdateNotes"] as? Snapshot).flatMap { OnUpdateNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onUpdateNotes")
      }
    }

    public struct OnUpdateNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("index", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(GraphQLID.self)),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil, user: User) {
        self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId, "user": user.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var index: Int? {
        get {
          return snapshot["index"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "index")
        }
      }

      public var userId: GraphQLID? {
        get {
          return snapshot["userId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .object(Note.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, notes: Note? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var notes: Note? {
          get {
            return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "notes")
          }
        }

        public struct Note: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelNotesConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelNotesConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}

public final class OnDeleteNotesSubscription: GraphQLSubscription {
  public static let operationString =
    "subscription OnDeleteNotes($id: String!) {\n  onDeleteNotes(id: $id) {\n    __typename\n    title\n    content\n    id\n    index\n    userId\n    user {\n      __typename\n      id\n      username\n      notes {\n        __typename\n        nextToken\n      }\n    }\n  }\n}"

  public var id: String

  public init(id: String) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("onDeleteNotes", arguments: ["id": GraphQLVariable("id")], type: .object(OnDeleteNote.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(onDeleteNotes: OnDeleteNote? = nil) {
      self.init(snapshot: ["__typename": "Subscription", "onDeleteNotes": onDeleteNotes.flatMap { $0.snapshot }])
    }

    public var onDeleteNotes: OnDeleteNote? {
      get {
        return (snapshot["onDeleteNotes"] as? Snapshot).flatMap { OnDeleteNote(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "onDeleteNotes")
      }
    }

    public struct OnDeleteNote: GraphQLSelectionSet {
      public static let possibleTypes = ["Notes"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("content", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("index", type: .scalar(Int.self)),
        GraphQLField("userId", type: .scalar(GraphQLID.self)),
        GraphQLField("user", type: .nonNull(.object(User.selections))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(title: String, content: String, id: GraphQLID, index: Int? = nil, userId: GraphQLID? = nil, user: User) {
        self.init(snapshot: ["__typename": "Notes", "title": title, "content": content, "id": id, "index": index, "userId": userId, "user": user.snapshot])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var content: String {
        get {
          return snapshot["content"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "content")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var index: Int? {
        get {
          return snapshot["index"] as? Int
        }
        set {
          snapshot.updateValue(newValue, forKey: "index")
        }
      }

      public var userId: GraphQLID? {
        get {
          return snapshot["userId"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "userId")
        }
      }

      public var user: User {
        get {
          return User(snapshot: snapshot["user"]! as! Snapshot)
        }
        set {
          snapshot.updateValue(newValue.snapshot, forKey: "user")
        }
      }

      public struct User: GraphQLSelectionSet {
        public static let possibleTypes = ["User"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("username", type: .nonNull(.scalar(String.self))),
          GraphQLField("notes", type: .object(Note.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, username: String, notes: Note? = nil) {
          self.init(snapshot: ["__typename": "User", "id": id, "username": username, "notes": notes.flatMap { $0.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var username: String {
          get {
            return snapshot["username"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "username")
          }
        }

        public var notes: Note? {
          get {
            return (snapshot["notes"] as? Snapshot).flatMap { Note(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "notes")
          }
        }

        public struct Note: GraphQLSelectionSet {
          public static let possibleTypes = ["ModelNotesConnection"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("nextToken", type: .scalar(String.self)),
          ]

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(nextToken: String? = nil) {
            self.init(snapshot: ["__typename": "ModelNotesConnection", "nextToken": nextToken])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          public var nextToken: String? {
            get {
              return snapshot["nextToken"] as? String
            }
            set {
              snapshot.updateValue(newValue, forKey: "nextToken")
            }
          }
        }
      }
    }
  }
}