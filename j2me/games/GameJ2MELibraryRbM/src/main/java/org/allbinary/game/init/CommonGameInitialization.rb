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
# package org.allbinary.game.init

# require "javax/microedition/lcdui/CommandListener"
require "org/allbinary/game/init/BaseGameInitialization"

class CommonGameInitialization < BaseGameInitialization
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize(resourceInitializationArray, portion)
        super(resourceInitializationArray, portion)
        initialize_fields
    end
    

    # throws Exception
    def init(abeClientInformation, commandListener, level)
        super(abeClientInformation, commandListener, level)
        resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if !self.isGameInitialized() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()
            self.setGameInitialized(true)
            progressCanvas = ProgressCanvasFactory.getInstance()
            SmallIntegerSingletonFactory.getInstance().init()
            progressCanvas.addNormalPortion(50, "Integers")
            PointFactory.getInstance().init()
            progressCanvas.addNormalPortion(50, "Points")
            AngleFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Angles")
            self.initGame()
            @resourceInitializationArray[@GAME_RESOURCES].init()
        end
        self.class.superclass.instance_method(:resourceInitialization).bind(self).call(level)
    end
    

    # throws Exception
    def initGame()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
end

require "org/allbinary/game/resource/ResourceInitialization"
require "org/allbinary/game/resource/ResourceLoadingLevelFactory"
require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/math/AngleFactory"
require "org/allbinary/string/CommonStrings"

