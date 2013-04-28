module BitmaskFastMethods
  extend ActiveSupport::Concern

  class NoBitmaskField < StandardError
  end

  module ClassMethods

    protected

    def initialize_bitmask_methods!(*args)

      opts = args.extract_options!
      opts[:prefix] = true if opts[:prefix].nil?
      raise NoBitmaskField.new("You must provide at least one bitmask field") if args.empty?

      args.each do |field|
        values = self.send("values_for_#{field}")
        prefix = opts[:prefix] ? "#{field}_" : ''

        values.each do |v|
          define_method("#{prefix}#{v}?") do
            self.send(field).include? v
          end
        end
      end

    end

  end

end

ActiveRecord::Base.send :include, BitmaskFastMethods
