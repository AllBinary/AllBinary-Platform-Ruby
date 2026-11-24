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

require "java/lang/JavaOverload"
require "org/allbinary/game/init/BaseGameInitialization"

module ::Org; module Allbinary; module Game; module Init

class CommonGameInitialization < BaseGameInitialization
    attr_accessor :commonStrings

    def jfields_org_allbinary_game_init_CommonGameInitialization
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize(resourceInitializationArray, portion)
        super(resourceInitializationArray, portion)
        jfields_org_allbinary_game_init_CommonGameInitialization
    end
    

    # throws Exception
    def init(abeClientInformation, commandListener, level)
        CommonGameInitialization.superclass.java_super_method(:init, 3).bind(self).call(abeClientInformation, commandListener, level)
        resourceLoadingLevelFactory = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance()
        if !self.isGameInitialized() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()
            self.setGameInitialized(true)
            progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
            ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().init()
            progressCanvas.addNormalPortion(50, "Integers")
            ::Org::Allbinary::Graphics::PointFactory.getInstance().init()
            progressCanvas.addNormalPortion(50, "Points")
            ::Org::Allbinary::MathPackage::AngleFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Angles")
            self.initGame()
            @resourceInitializationArray[@GAME_RESOURCES].init()
        end
        CommonGameInitialization.superclass.java_super_method(:resourceInitialization, 1).bind(self).call(level)
    end
    java_overload :init, 3
    

    # throws Exception
    def initGame()
        raise StandardError.new(@commonStrings.NOT_IMPLEMENTED)
    end
    java_overload :initGame, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceInitialization, "org/allbinary/game/resource/ResourceInitialization" unless const_defined?(:ResourceInitialization, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory" unless const_defined?(:ResourceLoadingLevelFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; autoload :PointFactory, "org/allbinary/graphics/PointFactory" unless const_defined?(:PointFactory, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module MathPackage; autoload :AngleFactory, "org/allbinary/math/AngleFactory" unless const_defined?(:AngleFactory, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end

