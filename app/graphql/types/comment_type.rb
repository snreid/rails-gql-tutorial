module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :body, String, null: true
    field :post_id, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
