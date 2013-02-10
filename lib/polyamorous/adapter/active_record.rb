module Polyamorous
  module Adapter
    class Model
      def initalize(klass)
        @klass = klass.is_a?(String) ? const
      end
      
      def all
        
      end
      
      def build(attrs = {})
        klass.new(attrs)
      end
      
      def create(attrs = {})
        klass
      end
    end
  end
end