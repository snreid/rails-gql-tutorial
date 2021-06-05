module Types
  class AuthorType < Types::BaseObject
    field :id, ID, null: false
    field :firstname, String, null: true
    field :lastname, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
