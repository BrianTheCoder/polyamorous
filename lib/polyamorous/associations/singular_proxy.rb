module Polyamorous
  module Associations
    class SingularProxy
      def initialize(ass_class, klass)
        @ass_class = ass_class
        @klass = klass
        @instance = nil
      end
      
      def set(instance)
        @instance = instance
      end
    end
  end
end