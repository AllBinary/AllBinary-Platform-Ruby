# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
require "org/allbinary/media/audio/Sound"

module ::Org; module Allbinary; module Media; module Audio

class NoSound < Sound
    

    def self.getInstance()
        return NoSound.instance
    end
    

    def initialize()
        super(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        self.setPlayerP(NoPlayer::NO_PLAYER)
    end

    def self.instance()
        NoSound.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        NoSound.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NoSound.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NoSound"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :NoPlayer, "org/allbinary/media/audio/NoPlayer" unless const_defined?(:NoPlayer, false)

begin
    NoSound.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

