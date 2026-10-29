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
# package org.allbinary.image

# require "javax/microedition/khronos/opengles/GL"
# require "javax/microedition/lcdui/ChoiceGroupImageFactory"
# require "javax/microedition/lcdui/Graphics"
# require "javax/microedition/lcdui/Image"

class ChoiceGroupImageUtil
    

    def self.getInstance()
        return ChoiceGroupImageUtil.instance
    end
    

    def init()
        features = Features.getInstance()
        choiceGroupFactory = ChoiceGroupImageFactory.getInstance()
        imageArray = choiceGroupFactory.getImageArray()
        if features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
            preResourceImageUtil = PreResourceImageUtil.getInstance()
            size = imageArray.length
            (0...size).each do |index|
                imageArray[index] = preResourceImageUtil.encapsulate(imageArray[index])
            end
            choiceGroupFactory.init(imageArray)
        end
    end
    

    def update(gl)
        features = Features.getInstance()
        choiceGroupFactory = ChoiceGroupImageFactory.getInstance()
        imageArray = choiceGroupFactory.getImageArray()
        if features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
            preResourceImageUtil = PreResourceImageUtil.getInstance()
            size = imageArray.length
            (0...size).each do |index|
                preResourceImageUtil.updateGL(gl, imageArray[index])
            end
        end
        choiceGroupFactory.init(imageArray)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def update(graphics)
        features = Features.getInstance()
        choiceGroupFactory = ChoiceGroupImageFactory.getInstance()
        imageArray = choiceGroupFactory.getImageArray()
        if features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
            preResourceImageUtil = PreResourceImageUtil.getInstance()
            size = imageArray.length
            (0...size).each do |index|
                preResourceImageUtil.update(graphics, imageArray[index])
            end
        end
        choiceGroupFactory.init(imageArray)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/image/PreResourceImageUtil"

class ChoiceGroupImageUtil
    @@instance = ChoiceGroupImageUtil.new()
end

