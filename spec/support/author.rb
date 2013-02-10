class Author < Hashie::Dash
  include Polyamorous::Associations
  
  property :name
  property :email
  
  many :articles
end