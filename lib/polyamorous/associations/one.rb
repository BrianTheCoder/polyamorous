module Polyamorous
  module Associations
    class One
      attr_accessor :name, :klass, :ass_class, :adapter
      
      def initalize(klass, name, options = {})
        @name = name
        @klass = klass
        @ass_class = options.key?(:class) ? options[:class] : Object.const_get(klass.to_s.classify)
        @adapter = options.key?(:adapter) ? options[:adapter] : Polyamorous::Adapter::Model
      end
    end
  end
end