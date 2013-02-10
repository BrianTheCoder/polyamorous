require 'spec_helper'

describe Polyamorous::Associations do
  context 'class methods' do
    before do
      @klass = Class.new
      @klass.send(:include, Polyamorous::Associations)
    end
    
    it{ @klass.should respond_to(:many)}
    it{ @klass.should respond_to(:one)}
  end
end