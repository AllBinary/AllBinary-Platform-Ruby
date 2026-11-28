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
# package org.allbinary.graphics.opengles

require "java/lang/Object"

module ::Org; module Allbinary; module Graphics; module Opengles

class CurrentDisplayableFactory
    attr_accessor :commonStrings, :canvasStrings, :stringUtil, :SET_DISPLAYABLE, :SET_RUNNABLE, :CLEAR_RUNNABLE, :SET_USED_RUNNABLE, :RUNNABLE, :RUNNABLE_WAS_ALREADY_IN_USE, :DEFAULT_CHILD_NAME_LIST, :displayable, :openGlReadydisplayable, :runnable, :usedRunnable

    def jfields_org_allbinary_graphics_opengles_CurrentDisplayableFactory
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @canvasStrings = ::Org::Allbinary::Graphics::Displayable::CanvasStrings.getInstance()
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @SET_DISPLAYABLE = "setDisplayable"
        @SET_RUNNABLE = "setRunnable"
        @CLEAR_RUNNABLE = "clearRunnable"
        @SET_USED_RUNNABLE = "setUsedRunnable"
        @RUNNABLE = "Runnable: "
        @RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: "
        @DEFAULT_CHILD_NAME_LIST = ::Org::Allbinary::Util::BasicArrayListD.new()
        @displayable = ::Org::Allbinary::Game::Displayable::Canvas::NullDisplayable.getInstance()
        @openGlReadydisplayable = ::Org::Allbinary::Game::Displayable::Canvas::NullDisplayable.getInstance()
        @runnable = ::Org::Allbinary::Game::Displayable::Canvas::NullWaitGameRunnable.getInstance()
        @usedRunnable = ::Org::Allbinary::Game::Displayable::Canvas::NullWaitGameRunnable.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_graphics_opengles_CurrentDisplayableFactory
        @DEFAULT_CHILD_NAME_LIST.add(@canvasStrings.ABOUT)
        @DEFAULT_CHILD_NAME_LIST.add(@canvasStrings.OPTIONS)
        @DEFAULT_CHILD_NAME_LIST.add(::Org::Allbinary::Game::Displayable::Canvas::GameInputMappingCanvas::NAME)
        @DEFAULT_CHILD_NAME_LIST.add(::Org::Allbinary::Game::Displayable::Canvas::GameInputMappingInstructionsCanvas::NAME)
        @DEFAULT_CHILD_NAME_LIST.add(::Org::Allbinary::Game::Score::Displayable::HighScoresCanvas::NAME)
    end
    

    def setMyCanvas(displayable)
        if @displayable.is_a?(::Org::Allbinary::Graphics::Displayable::MyCanvas)
            if displayable.hasChild(@displayable)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Child Displayable is already set for: ").append(@stringUtil.toString(displayable)).to_s, self, @SET_DISPLAYABLE)
                return
            end
        end
        self.setDisplayable(displayable)
    end
    

    def setDisplayable(displayable)
        @displayable = displayable
        self.setOpenGlReadydisplayable(displayable)
    end
    

    def setOpenGlReadydisplayable(openGlReadydisplayable)
        @openGlReadydisplayable = openGlReadydisplayable
        self.update()
    end
    

    def getOpenGlReadydisplayable()
        return @openGlReadydisplayable
    end
    

    def setRunnable(runnable)
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@RUNNABLE).append(@stringUtil.toString(runnable)).to_s, self, @SET_RUNNABLE)
        @runnable = runnable
        if @usedRunnable != @runnable
            self.update()
        else
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@RUNNABLE_WAS_ALREADY_IN_USE).append(@stringUtil.toString(runnable)).to_s, self, @SET_RUNNABLE)
        end
    end
    

    def clearRunnable()
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@RUNNABLE).append(@stringUtil.toString(::Org::Allbinary::ThreadPackage::NullRunnable.getInstance())).to_s, self, @CLEAR_RUNNABLE)
        self.setUsedRunnable(::Org::Allbinary::Game::Displayable::Canvas::NullWaitGameRunnable.getInstance())
    end
    

    def update()
        (self).java_monitor.synchronize do
            commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
            features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
            stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringMaker.append(@stringUtil.toString(@openGlReadydisplayable))
            if ::Org::Allbinary::Game::Layer::SWTUtil.isSWT && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(::Org::Allbinary::Game::Layer::SWTUtil::SWT).append(commonSeps.SPACE).append(@RUNNABLE).append(@stringUtil.toString(::Org::Allbinary::ThreadPackage::NullRunnable.getInstance())).to_s, self, @commonStrings.UPDATE)
                self.setUsedRunnable(::Org::Allbinary::Game::Displayable::Canvas::NullWaitGameRunnable.getInstance())
            elsif ::Org::Allbinary::J2MEUtil.isHTML()
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(::Org::Allbinary::Graphics::GraphicsStrings.getInstance().HTML).append(commonSeps.SPACE).append(@RUNNABLE).append(@stringUtil.toString(@runnable)).to_s, self, @commonStrings.UPDATE)
                self.setUsedRunnable(@runnable)
            elsif @openGlReadydisplayable.is_a?(::Org::Allbinary::Game::Displayable::Canvas::DemoCanvas) || @openGlReadydisplayable.is_a?(::Org::Allbinary::Game::Displayable::Canvas::AllBinaryGameCanvas) || features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(OpenGLFeatureFactory.getInstance().OPENGL.to_s).append(commonSeps.SPACE).append(@RUNNABLE).append(@stringUtil.toString(@runnable)).to_s, self, @commonStrings.UPDATE)
                self.setUsedRunnable(@runnable)
            else
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringMaker.append(@RUNNABLE).append(@stringUtil.toString(::Org::Allbinary::ThreadPackage::NullRunnable.getInstance())).to_s, self, @commonStrings.UPDATE)
                self.setUsedRunnable(::Org::Allbinary::Game::Displayable::Canvas::NullWaitGameRunnable.getInstance())
            end
        end
    end
    

    def getDisplayable()
        return @displayable
    end
    

    def getUsedRunnable()
        return @usedRunnable
    end
    

    def setUsedRunnable(usedRunnable)
        ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@RUNNABLE).append(@stringUtil.toString(@runnable)).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON_SEP).append(@stringUtil.toString(usedRunnable)).to_s, self, @SET_USED_RUNNABLE)
        @usedRunnable = usedRunnable
    end

    def self.instance()
        CurrentDisplayableFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CurrentDisplayableFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CurrentDisplayableFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CurrentDisplayableFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :Displayable, "javax/microedition/lcdui/Displayable" unless const_defined?(:Displayable, false); end; end; end
module ::Org; module Allbinary; autoload :J2MEUtil, "org/allbinary/J2MEUtil" unless const_defined?(:J2MEUtil, false); end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" unless const_defined?(:AllBinaryGameCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :DemoCanvas, "org/allbinary/game/displayable/canvas/DemoCanvas" unless const_defined?(:DemoCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :GameInputMappingCanvas, "org/allbinary/game/displayable/canvas/GameInputMappingCanvas" unless const_defined?(:GameInputMappingCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :GameInputMappingInstructionsCanvas, "org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas" unless const_defined?(:GameInputMappingInstructionsCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :GameRunnable, "org/allbinary/game/displayable/canvas/GameRunnable" unless const_defined?(:GameRunnable, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :NullDisplayable, "org/allbinary/game/displayable/canvas/NullDisplayable" unless const_defined?(:NullDisplayable, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Displayable; module Canvas; autoload :NullWaitGameRunnable, "org/allbinary/game/displayable/canvas/NullWaitGameRunnable" unless const_defined?(:NullWaitGameRunnable, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :SWTUtil, "org/allbinary/game/layer/SWTUtil" unless const_defined?(:SWTUtil, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Score; module Displayable; autoload :HighScoresCanvas, "org/allbinary/game/score/displayable/HighScoresCanvas" unless const_defined?(:HighScoresCanvas, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :GraphicsStrings, "org/allbinary/graphics/GraphicsStrings" unless const_defined?(:GraphicsStrings, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module ThreadPackage; autoload :NullRunnable, "org/allbinary/thread/NullRunnable" unless const_defined?(:NullRunnable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory" unless const_defined?(:OpenGLFeatureFactory, false)

begin
    CurrentDisplayableFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

