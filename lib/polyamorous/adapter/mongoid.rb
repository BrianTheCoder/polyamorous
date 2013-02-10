module Polyamorous
  module Adapter
    class Mongoid < Model
      def initalize(klass)
        @klass = klass.is_a?(String) ? const
      end
      
      def all
        
      end
    end
  end
end