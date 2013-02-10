require 'spec_helper'

describe Polyamorous::Associations::Many do
  before do
    @author = Author.new({
      name: Faker::Name.name,
      email: Faker::Internet.free_email
    })
  end
  
  it{ @author.should respond_to(:articles)}
end