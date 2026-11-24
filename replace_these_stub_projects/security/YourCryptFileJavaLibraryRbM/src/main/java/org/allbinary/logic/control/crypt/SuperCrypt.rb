# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.control.crypt


module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt

class SuperCrypt
    

    def initialize(key)
    end
    

    def encrypt(value)
        return nil
    end
    

    def decrypt(value)
        return nil
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:KEYMAX, 0)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SuperCrypt"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:KEYMAX].include?(name)
        end
        super
    end
end

begin
    SuperCrypt.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

