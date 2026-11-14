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
        CommonGameInitialization.superclass.instance_method(:resourceInitialization).bind(self).call(level)
    end
    

    # throws Exception
    def initGame()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
end

autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :ResourceInitialization, "org/allbinary/game/resource/ResourceInitialization"
autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory"
autoload :PointFactory, "org/allbinary/graphics/PointFactory"
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :AngleFactory, "org/allbinary/math/AngleFactory"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

