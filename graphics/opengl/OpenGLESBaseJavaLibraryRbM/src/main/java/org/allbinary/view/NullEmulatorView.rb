# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
#  
# By agreeing to this license you and any business entity you represent are 
# legally bound to the AllBinary Open License Version 1 legal agreement. 
#  
# You may obtain the AllBinary Open License Version 1 legal agreement from 
# AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
#  
# Created By: Travis Berthelot 
#   
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.view

require "java/lang/JavaOverload"
require "org/allbinary/view/EmulatorViewInterface"

module ::Org; module Allbinary; module View

class NullEmulatorView
    include EmulatorViewInterface
    

    def setMidlet(midlet)
    end
    java_overload :setMidlet, 1
    

    def onEmulatorInitComplete(midletActivity)
    end
    java_overload :onEmulatorInitComplete, 1
    

    def onSetDisplayable(displayable)
    end
    java_overload :onSetDisplayable, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_EMULATOR_VIEW, NullEmulatorView.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullEmulatorView"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_EMULATOR_VIEW].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Displayable, "javax/microedition/lcdui/Displayable" unless const_defined?(:Displayable, false); end; end; end
module ::Javax; module Microedition; module Midlet; autoload :MIDlet, "javax/microedition/midlet/MIDlet" unless const_defined?(:MIDlet, false); end; end; end

begin
    NullEmulatorView.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

