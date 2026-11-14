# Generated Code Do Not Modify
# frozen_string_literal: false
# package javax.microedition.lcdui

require "javax/microedition/lcdui/CommandListener"

class NullCommandListener
    include CommandListener
    

    def commandAction(c, d)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_COMMAND_LISTENER, NullCommandListener.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullCommandListener"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_COMMAND_LISTENER].include?(name)
        end
        super
    end
end

autoload :Command, "javax/microedition/lcdui/Command"
autoload :Displayable, "javax/microedition/lcdui/Displayable"

begin
    NullCommandListener.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

