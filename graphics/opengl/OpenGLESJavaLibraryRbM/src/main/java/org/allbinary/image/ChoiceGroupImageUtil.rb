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


module ::Org; module Allbinary; module Image

class ChoiceGroupImageUtil
    

    def self.getInstance()
        return @@instance
    end
    

    def init()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        choiceGroupFactory = ::Javax::Microedition::Lcdui::ChoiceGroupImageFactory.getInstance()
        imageArray = choiceGroupFactory.getImageArray()
        if features.isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
            preResourceImageUtil = PreResourceImageUtil.getInstance()
            size = imageArray.length
            (0...size).each do |index|
                imageArray[index] = preResourceImageUtil.encapsulate(imageArray[index])
            end
            choiceGroupFactory.init(imageArray)
        end
    end
    

    def update_j1_1(gl)
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        choiceGroupFactory = ::Javax::Microedition::Lcdui::ChoiceGroupImageFactory.getInstance()
        imageArray = choiceGroupFactory.getImageArray()
        if features.isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
            preResourceImageUtil = PreResourceImageUtil.getInstance()
            size = imageArray.length
            (0...size).each do |index|
                preResourceImageUtil.updateGL(gl, imageArray[index])
            end
        end
        choiceGroupFactory.init(imageArray)
    end
    

    def update_j1_2(graphics)
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        choiceGroupFactory = ::Javax::Microedition::Lcdui::ChoiceGroupImageFactory.getInstance()
        imageArray = choiceGroupFactory.getImageArray()
        if features.isDefault(::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance().OPENGL)
            preResourceImageUtil = PreResourceImageUtil.getInstance()
            size = imageArray.length
            (0...size).each do |index|
                preResourceImageUtil.update(graphics, imageArray[index])
            end
        end
        choiceGroupFactory.init(imageArray)
    end

    def update(*java_overload_args)
        return update_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method update takes #{java_overload_args.length} arguments"
    end

    def update_j1(*java_overload_args)
        return update_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Javax::Microedition::Khronos::Opengles::GL))
        return update_j1_2(*java_overload_args)
    end

    def self.instance()
        ChoiceGroupImageUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ChoiceGroupImageUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ChoiceGroupImageUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ChoiceGroupImageUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Khronos; module Opengles; autoload :GL, "javax/microedition/khronos/opengles/GL" unless const_defined?(:GL, false); end; end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :ChoiceGroupImageFactory, "javax/microedition/lcdui/ChoiceGroupImageFactory" unless const_defined?(:ChoiceGroupImageFactory, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Image, "javax/microedition/lcdui/Image" unless const_defined?(:Image, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
autoload :PreResourceImageUtil, "org/allbinary/image/PreResourceImageUtil" unless const_defined?(:PreResourceImageUtil, false)

begin
    ChoiceGroupImageUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

