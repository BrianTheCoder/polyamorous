module Polyamorous
  module Associations
    class SingularProxy
      def initialize(ass_class, klass)
        @ass_class = ass_class
        @klass = klass
      end
      
      def set(instance)
        
      end
    end
  end
end