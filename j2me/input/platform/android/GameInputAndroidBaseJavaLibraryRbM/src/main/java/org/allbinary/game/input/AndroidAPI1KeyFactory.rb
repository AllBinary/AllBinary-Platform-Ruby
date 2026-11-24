# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/input/AndroidKeyFactory"

module ::Org; module Allbinary; module Game; module Input

class AndroidAPI1KeyFactory < AndroidKeyFactory
    

    def self.getInstance()
        if AndroidAPI1KeyFactory.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            AndroidAPI1KeyFactory.instance = AndroidAPI1KeyFactory.new()
        end
        return AndroidAPI1KeyFactory.instance
    end
    

    def initialize()
        super()
    end

    def self.instance()
        AndroidAPI1KeyFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AndroidAPI1KeyFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AndroidAPI1KeyFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end

begin
    AndroidAPI1KeyFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

