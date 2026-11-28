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

require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/RepaintBehavior"

module ::Org; module Allbinary; module Game; module Displayable

class AlwaysRepaintBehavior < RepaintBehavior
    attr_accessor :NAME

    def jfields_org_allbinary_game_displayable_AlwaysRepaintBehavior
        @NAME = "AlwaysRepaintBehavior"
    end

    def initialize
        super()
        jfields_org_allbinary_game_displayable_AlwaysRepaintBehavior
    end
    

    def self.getInstance()
        return @@instanceC
    end
    

    def repaint(canvas)
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        openGLFeatureFactory = ::Org::Allbinary::Graphics::Opengles::OpenGLFeatureFactory.getInstance()
        if features.isFeature(openGLFeatureFactory.OPENGL)
            ::Org::Allbinary::Graphics::Displayable::DisplayInfoSingleton.getInstance().process()
        else
            thread = ::Java::Lang::JavaThread.new(RepaintRunnable.new(canvas), @NAME)
            thread.start()
        end
    end
    java_overload :repaint, 1
    

    def onChangeRepaint(canvas)
    end
    java_overload :onChangeRepaint, 1

    def self.instanceC()
        AlwaysRepaintBehavior.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        AlwaysRepaintBehavior.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = AlwaysRepaintBehavior.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AlwaysRepaintBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Canvas, "javax/microedition/lcdui/Canvas" unless const_defined?(:Canvas, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Opengles; autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :NullRunnable, "org/allbinary/thread/NullRunnable" unless const_defined?(:NullRunnable, false); end; end; end
autoload :RepaintRunnable, "org/allbinary/game/displayable/RepaintRunnable" unless const_defined?(:RepaintRunnable, false)
require "java/lang/Thread"

begin
    AlwaysRepaintBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

