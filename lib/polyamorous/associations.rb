require 'polyamorous/associations/many'
require 'polyamorous/associations/one'
require 'polyamorous/adapter/model'
require 'active_support/concern'
require 'active_support/core_ext/string'

module Polyamorous
  module Associations
    extend ActiveSupport::Concern

    module ClassMethods
      def many(name, options = {})
        Polyamorous::Associations::Many.new(self, name, options)
      end
      
      def one(name, options = {})
        Polyamorous::Associations::One.new(self, name, options)
      end
    end
  end
end