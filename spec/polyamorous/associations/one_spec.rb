require 'spec_helper'

describe Polyamorous::Associations::One do
  before do
    @article = Article.new({
      title: Faker::Lorem.sentence,
      body: Faker::Lorem.paragraph,
      published_at: Time.now
    })
  end
  
  it{ @article.should respond_to(:author)}
end