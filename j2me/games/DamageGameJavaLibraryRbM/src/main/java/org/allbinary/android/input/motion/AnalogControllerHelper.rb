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
# package org.allbinary.android.input.motion


class AnalogControllerHelper
    attr_accessor :reduceTimeFactor, :SCALE_VALUE, :rightTimeElapsedHelper, :leftTimeElapsedHelper, :downTimeElapsedHelper, :upTimeElapsedHelper

    def initialize_fields
        @reduceTimeFactor = nil
        @SCALE_VALUE = AnalogControllerConfigurationFactory.getInstance().SCALE_VALUE
        @rightTimeElapsedHelper = TimeDelayHelper.new(0)
        @leftTimeElapsedHelper = TimeDelayHelper.new(0)
        @downTimeElapsedHelper = TimeDelayHelper.new(0)
        @upTimeElapsedHelper = TimeDelayHelper.new(0)
    end
    

    def initialize(reduceTimeFactor)
        initialize_fields
        @reduceTimeFactor = reduceTimeFactor
    end
    

    # throws Exception
    def right(collidableDestroyableDamageableLayer, xAnalogValue)
        @rightTimeElapsedHelper.delay = ((@SCALE_VALUE - xAnalogValue) >> @reduceTimeFactor)
        if @rightTimeElapsedHelper.isTimeTNT()
            collidableDestroyableDamageableLayer.right()
        end
    end
    

    # throws Exception
    def left(collidableDestroyableDamageableLayer, xAnalogValue)
        @leftTimeElapsedHelper.delay = ((@SCALE_VALUE + xAnalogValue) >> @reduceTimeFactor)
        if @leftTimeElapsedHelper.isTimeTNT()
            collidableDestroyableDamageableLayer.left()
        end
    end
    

    # throws Exception
    def up(collidableDestroyableDamageableLayer, xAnalogValue)
        @upTimeElapsedHelper.delay = ((@SCALE_VALUE - xAnalogValue) >> @reduceTimeFactor)
        if @upTimeElapsedHelper.isTimeTNT()
            collidableDestroyableDamageableLayer.up()
        end
    end
    

    # throws Exception
    def down(collidableDestroyableDamageableLayer, xAnalogValue)
        @downTimeElapsedHelper.delay = ((@SCALE_VALUE + xAnalogValue) >> @reduceTimeFactor)
        if @downTimeElapsedHelper.isTimeTNT()
            collidableDestroyableDamageableLayer.down()
        end
    end
end

require "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/android/input/motion/AnalogControllerConfigurationFactory"

