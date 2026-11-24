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
# package org.allbinary.game.input

require "java/lang/JavaOverload"
require "org/allbinary/game/input/mapping/PersistentInputMapping"

module ::Org; module Allbinary; module Game; module Input

class PCGameInputMapping < ::Org::Allbinary::Game::Input::Mapping::PersistentInputMapping
    

    def initialize()
        super(::Org::Allbinary::Game::Configuration::Persistance::GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID)
    end
    

    # throws Exception
    def init(abeClientInformation)
        @logUtil.putF(@commonStrings.START, self, @commonStrings.INIT)
        PCKeyFactory.getInstance()
        ::Org::Allbinary::Input::Motion::Gesture::TouchMotionGestureFactory.getInstance()
        ::Org::Allbinary::Input::Motion::Gesture::TrackballMotionGestureFactory.getInstance()
        ::Org::Allbinary::Input::Motion::Button::BasicTouchInputFactory.getInstance()
        PCGameInputMapping.superclass.java_super_method(:init, 1).bind(self).call(abeClientInformation)
        if self.getTotalMapped() == 0 || self.isDefaultNew()
            self.getInputMapping().addMapping(self.getDefault())
            self.save(abeClientInformation)
        end
    end
    java_overload :init, 1
    

    def isDelete(input)
        if input == PCKeyFactory.getInstance().DEL
            return true
        else
            return false
        end
    end
    java_overload :isDelete, 1
    

    def isSystemInput(input)
        return false
    end
    java_overload :isSystemInput, 1
end

module ::Org; module Allbinary; module Game; module Configuration; module Persistance; autoload :GamePersistanceStrings, "org/allbinary/game/configuration/persistance/GamePersistanceStrings" unless const_defined?(:GamePersistanceStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory" unless const_defined?(:BasicTouchInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TouchMotionGestureFactory, "org/allbinary/input/motion/gesture/TouchMotionGestureFactory" unless const_defined?(:TouchMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; autoload :TrackballMotionGestureFactory, "org/allbinary/input/motion/gesture/TrackballMotionGestureFactory" unless const_defined?(:TrackballMotionGestureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
autoload :Input, "org/allbinary/game/input/Input" unless const_defined?(:Input, false)
autoload :PCKeyFactory, "org/allbinary/game/input/PCKeyFactory" unless const_defined?(:PCKeyFactory, false)

end; end; end; end

