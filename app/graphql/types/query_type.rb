module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :posts,
      [Types::PostType],
      null: false,
      description: "Returns a list of posts on the blog"

    def posts
      Post.all
    end
  end
end
