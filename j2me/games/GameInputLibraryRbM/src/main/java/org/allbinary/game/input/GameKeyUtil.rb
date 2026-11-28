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
# package org.allbinary.game.input


module ::Org; module Allbinary; module Game; module Input

class GameKeyUtil
    

    def isDirectionKey(key)
        if key == ::Javax::Microedition::Lcdui::Canvas::UP || key == ::Javax::Microedition::Lcdui::Canvas::DOWN || key == ::Javax::Microedition::Lcdui::Canvas::LEFT || key == ::Javax::Microedition::Lcdui::Canvas::RIGHT
            return true
        else
            return false
        end
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        GameKeyUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameKeyUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameKeyUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameKeyUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end

begin
    GameKeyUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

