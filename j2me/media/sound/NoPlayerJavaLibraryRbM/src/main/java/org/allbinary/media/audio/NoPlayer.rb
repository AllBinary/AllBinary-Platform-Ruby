#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
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
# package org.allbinary.media.audio

require "java/lang/JavaOverload"
require "org/allbinary/media/audio/BasicPlayer"

module ::Org; module Allbinary; module Media; module Audio

class NoPlayer < BasicPlayer
    

    def initialize()
        super()
    end
    

    def close()
    end
    java_overload :close, 0
    

    def getContentType()
        return ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().NULL_STRING
    end
    java_overload :getContentType, 0
    

    def getControl(controlType)
        return NullControl.new()
    end
    java_overload :getControl, 1
    

    def getControls()
        return Array.new(0, nil)
    end
    java_overload :getControls, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NO_PLAYER, NoPlayer.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NoPlayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NO_PLAYER].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Media; autoload :Control, "javax/microedition/media/Control" unless const_defined?(:Control, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :NullControl, "org/allbinary/media/audio/NullControl" unless const_defined?(:NullControl, false)

begin
    NoPlayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

