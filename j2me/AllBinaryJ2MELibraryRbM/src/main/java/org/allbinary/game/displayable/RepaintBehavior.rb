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
# package org.allbinary.game.displayable


class RepaintBehavior
    attr_accessor :logUtil, :NAME

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @NAME = "RepaintBehavior"
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return RepaintBehavior.instance
    end
    

    def repaint(canvas)
    end
    

    def onChangeRepaint(canvas)
        features = Features.getInstance()
        openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if features.isFeature(openGLFeatureFactory.OPENGL)
            DisplayInfoSingleton.getInstance().process()
        else
            thread = JavaThread.new(RepaintRunnable.new(canvas), @NAME)
            thread.start()
        end
    end

    def self.instance()
        RepaintBehavior.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        RepaintBehavior.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = RepaintBehavior.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RepaintBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :Canvas, "javax/microedition/lcdui/Canvas"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton"
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :NullRunnable, "org/allbinary/thread/NullRunnable"
autoload :RepaintRunnable, "org/allbinary/game/displayable/RepaintRunnable"
require "java/lang/Thread"

begin
    RepaintBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

