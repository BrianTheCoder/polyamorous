module Polyamorous
  module Associations
    class CollectionProxy
      class ClassMismatch < StandardError; end
      
      def initialize(ass_class, klass)
        @ass_class = ass_class
        @klass = klass
        @collection = []
      end
      
      def push(instance)
        raise ClassMismatch unless instance.is_a?(@ass_class)
        @collection.push(instance)
      end
      
      def unshift(instance)
        raise ClassMismatch unless instance.is_a?(@ass_class)
        @collection.push(instance)
      end
      
      def set(collection)
        @collection = collection
      end
      
      protected
      
      def method_missing(name, *args, &block)
        @collection.send(name, *args, &block)
      end
    end
  end
end