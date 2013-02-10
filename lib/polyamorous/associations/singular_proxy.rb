module Polyamorous
  module Associations
    class SingularProxy
      class ClassMismatch < StandardError; end
      
      def initialize(ass_class, klass)
        @ass_class = ass_class
        @klass = klass
        @instance = nil
      end
      
      def set(instance)
        raise ClassMismatch unless instance.is_a?(@ass_class)
        @instance = instance
      end
      
      protected
      
      def method_missing(name, *args, &block)
        @instance.send(name, *args, &block)
      end
    end
  end
end