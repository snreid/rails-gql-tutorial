module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :body, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :author,
      Types::AuthorType,
      null: false,
      description: "The author that wrote this post"
    field :comments,
      [Types::CommentType],
      null: false,
      description: "Comments associated with this post"
  end
end
