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

class CurrentDisplayableFactory
    attr_accessor :commonStrings, :canvasStrings, :stringUtil, :SET_DISPLAYABLE, :SET_RUNNABLE, :CLEAR_RUNNABLE, :SET_USED_RUNNABLE, :RUNNABLE, :RUNNABLE_WAS_ALREADY_IN_USE, :DEFAULT_CHILD_NAME_LIST, :displayable, :openGlReadydisplayable, :runnable, :usedRunnable

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @canvasStrings = CanvasStrings.getInstance()
        @stringUtil = StringUtil.getInstance()
        @SET_DISPLAYABLE = "setDisplayable"
        @SET_RUNNABLE = "setRunnable"
        @CLEAR_RUNNABLE = "clearRunnable"
        @SET_USED_RUNNABLE = "setUsedRunnable"
        @RUNNABLE = "Runnable: "
        @RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: "
        @DEFAULT_CHILD_NAME_LIST = BasicArrayListD.new()
        @displayable = NullDisplayable.getInstance()
        @openGlReadydisplayable = NullDisplayable.getInstance()
        @runnable = NullWaitGameRunnable.getInstance()
        @usedRunnable = NullWaitGameRunnable.getInstance()
    end
    

    def self.getInstance()
        return CurrentDisplayableFactory.instance
    end
    

    def initialize()
        initialize_fields
        @DEFAULT_CHILD_NAME_LIST.add(@canvasStrings.ABOUT)
        @DEFAULT_CHILD_NAME_LIST.add(@canvasStrings.OPTIONS)
        @DEFAULT_CHILD_NAME_LIST.add(GameInputMappingCanvas::NAME)
        @DEFAULT_CHILD_NAME_LIST.add(GameInputMappingInstructionsCanvas::NAME)
        @DEFAULT_CHILD_NAME_LIST.add(HighScoresCanvas::NAME)
    end
    

    def setMyCanvas(displayable)
        if @displayable.is_a?(MyCanvas)
            if displayable.hasChild(@displayable)
                PreLogUtil.put(StringMaker.new().append("Child Displayable is already set for: ").append(@stringUtil.toString(displayable)).to_s, self, @SET_DISPLAYABLE)
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
        PreLogUtil.put(StringMaker.new().append(@RUNNABLE).append(@stringUtil.toString(runnable)).to_s, self, @SET_RUNNABLE)
        @runnable = runnable
        if @usedRunnable != @runnable
            self.update()
        else
            PreLogUtil.put(StringMaker.new().append(@RUNNABLE_WAS_ALREADY_IN_USE).append(@stringUtil.toString(runnable)).to_s, self, @SET_RUNNABLE)
        end
    end
    

    def clearRunnable()
        PreLogUtil.put(StringMaker.new().append(@RUNNABLE).append(@stringUtil.toString(NullRunnable.getInstance())).to_s, self, @CLEAR_RUNNABLE)
        self.setUsedRunnable(NullWaitGameRunnable.getInstance())
    end
    

    def update()
        (self).java_monitor.synchronize do
            commonSeps = CommonSeps.getInstance()
            features = Features.getInstance()
            stringMaker = StringMaker.new()
            stringMaker.append(@stringUtil.toString(@openGlReadydisplayable))
            if SWTUtil.isSWT && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(SWTUtil::SWT).append(commonSeps.SPACE).append(@RUNNABLE).append(@stringUtil.toString(NullRunnable.getInstance())).to_s, self, @commonStrings.UPDATE)
                self.setUsedRunnable(NullWaitGameRunnable.getInstance())
            elsif J2MEUtil.isHTML()
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(GraphicsStrings.getInstance().HTML).append(commonSeps.SPACE).append(@RUNNABLE).append(@stringUtil.toString(@runnable)).to_s, self, @commonStrings.UPDATE)
                self.setUsedRunnable(@runnable)
            elsif @openGlReadydisplayable.is_a?(DemoCanvas) || @openGlReadydisplayable.is_a?(AllBinaryGameCanvas) || features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL)
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(OpenGLFeatureFactory.getInstance().OPENGL.to_s).append(commonSeps.SPACE).append(@RUNNABLE).append(@stringUtil.toString(@runnable)).to_s, self, @commonStrings.UPDATE)
                self.setUsedRunnable(@runnable)
            else
                PreLogUtil.put(stringMaker.append(@RUNNABLE).append(@stringUtil.toString(NullRunnable.getInstance())).to_s, self, @commonStrings.UPDATE)
                self.setUsedRunnable(NullWaitGameRunnable.getInstance())
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
        PreLogUtil.put(StringMaker.new().append(@RUNNABLE).append(@stringUtil.toString(@runnable)).append(CommonSeps.getInstance().COLON_SEP).append(@stringUtil.toString(usedRunnable)).to_s, self, @SET_USED_RUNNABLE)
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

autoload :Displayable, "javax/microedition/lcdui/Displayable"
autoload :J2MEUtil, "org/allbinary/J2MEUtil"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
autoload :DemoCanvas, "org/allbinary/game/displayable/canvas/DemoCanvas"
autoload :GameInputMappingCanvas, "org/allbinary/game/displayable/canvas/GameInputMappingCanvas"
autoload :GameInputMappingInstructionsCanvas, "org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas"
autoload :GameRunnable, "org/allbinary/game/displayable/canvas/GameRunnable"
autoload :NullDisplayable, "org/allbinary/game/displayable/canvas/NullDisplayable"
autoload :NullWaitGameRunnable, "org/allbinary/game/displayable/canvas/NullWaitGameRunnable"
autoload :SWTUtil, "org/allbinary/game/layer/SWTUtil"
autoload :HighScoresCanvas, "org/allbinary/game/score/displayable/HighScoresCanvas"
autoload :GraphicsStrings, "org/allbinary/graphics/GraphicsStrings"
autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings"
autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonSeps, "org/allbinary/string/CommonSeps"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :NullRunnable, "org/allbinary/thread/NullRunnable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :OpenGLFeatureFactory, "org/allbinary/graphics/opengles/OpenGLFeatureFactory"

begin
    CurrentDisplayableFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

