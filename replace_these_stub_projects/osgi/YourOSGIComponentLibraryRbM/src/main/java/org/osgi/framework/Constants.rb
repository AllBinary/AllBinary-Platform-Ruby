# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.osgi.framework


module Constants

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:BUNDLE_SYMBOLICNAME, StringUtil.getInstance().EMPTY_STRING)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Constants"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:BUNDLE_SYMBOLICNAME].include?(name)
        end
        super
    end
end

autoload :StringUtil, "org/allbinary/logic/string/StringUtil"

begin
    Constants.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

