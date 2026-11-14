# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.graph


class E
    

    def newInstance()
        return E.e
    end

    def self.e()
        E.java_static_fields unless @java_static_fields_started
        return defined?(@@e) ? @@e : nil
    end

    def self.e=(value)
        E.java_static_fields unless @java_static_fields_started
        @@e = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@e = E.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "E"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    E.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

