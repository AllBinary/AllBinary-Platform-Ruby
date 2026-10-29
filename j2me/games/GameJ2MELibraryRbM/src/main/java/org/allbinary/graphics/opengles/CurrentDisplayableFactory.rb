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
# require "javax/microedition/lcdui/Displayable"

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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/J2MEUtil"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/game/displayable/canvas/DemoCanvas"
require "org/allbinary/game/displayable/canvas/GameInputMappingCanvas"
require "org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas"
require "org/allbinary/game/displayable/canvas/GameRunnable"
require "org/allbinary/game/displayable/canvas/NullDisplayable"
require "org/allbinary/game/displayable/canvas/NullWaitGameRunnable"
require "org/allbinary/game/layer/SWTUtil"
require "org/allbinary/game/score/displayable/HighScoresCanvas"
require "org/allbinary/graphics/GraphicsStrings"
require "org/allbinary/graphics/displayable/CanvasStrings"
require "org/allbinary/graphics/displayable/MyCanvas"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/thread/NullRunnable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/graphics/opengles/OpenGLFeatureFactory"

class CurrentDisplayableFactory
    @@instance = CurrentDisplayableFactory.new()
end

