class Article < Hashie::Dash
  include Polyamorous::Associations
  
  property :title
  property :body
  property :published_at
  
  one :author
end