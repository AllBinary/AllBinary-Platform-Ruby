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

# require "javax/microedition/lcdui/Canvas"

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
            thread = JavaThread.new(Class.new(ARunnable.is_a?(Class) ? ARunnable : Object) do
                include(ARunnable) unless ARunnable.is_a?(Class)
                

                def run()
                    begin
                        canvas.repaint()
                        DisplayInfoSingleton.getInstance().process()
                    rescue StandardError => e
                        commonStrings = CommonStrings.getInstance()
                        logUtil = LogUtil.getInstance()
                        logUtil.put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
                    end
                end
            end.new(), @NAME)
            thread.start()
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/thread/ARunnable"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/thread/NullRunnable"
require "java/lang/Thread"

class RepaintBehavior
    @@instance = RepaintBehavior.new()
end

