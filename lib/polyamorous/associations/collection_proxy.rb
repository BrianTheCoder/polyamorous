module Polyamorous
  module Associations
    class CollectionProxy
      def initialize(ass_class, klass)
        @ass_class = ass_class
        @klass = klass
        @collection = []
      end
      
      def set(collection)
        @collection = collection
      end
    end
  end
end