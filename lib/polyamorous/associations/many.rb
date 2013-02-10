module Polyamorous
  module Associations
    class Many
      attr_accessor :name, :klass, :ass_class, :adapter
      
      def initialize(klass, name, options = {})
        @name = name
        @klass = klass
        @ass_class = options.key?(:class) ? options[:class] : Object.const_get(klass.to_s.classify)
        @adapter = options.key?(:adapter) ? options[:adapter] : Polyamorous::Adapter::Model
        klass.class_eval <<-RUBY, __FILE__, __LINE__ + 1
          def #{name}
            @#{name} ||= Polyamorous::Associations::CollectionProxy.new("#{name}", klass, options)
          end
          
          def #{name}=(collection)
            @#{name}.set(collection)
          end
        RUBY
      end
    end
  end
end