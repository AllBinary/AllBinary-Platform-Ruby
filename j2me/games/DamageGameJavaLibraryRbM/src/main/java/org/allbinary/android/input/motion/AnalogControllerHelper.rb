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


module ::Org; module Allbinary; module Android; module Input; module Motion

class AnalogControllerHelper
    attr_accessor :reduceTimeFactor, :SCALE_VALUE, :rightTimeElapsedHelper, :leftTimeElapsedHelper, :downTimeElapsedHelper, :upTimeElapsedHelper

    def jfields_org_allbinary_android_input_motion_AnalogControllerHelper
        @reduceTimeFactor = nil unless instance_variable_defined?(:@reduceTimeFactor)
        @SCALE_VALUE = AnalogControllerConfigurationFactory.getInstance().SCALE_VALUE
        @rightTimeElapsedHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(0)
        @leftTimeElapsedHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(0)
        @downTimeElapsedHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(0)
        @upTimeElapsedHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(0)
    end
    

    def initialize(reduceTimeFactor)
        jfields_org_allbinary_android_input_motion_AnalogControllerHelper
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

module ::Org; module Allbinary; module Game; module Layer; module Special; autoload :CollidableDestroyableDamageableLayer, "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" unless const_defined?(:CollidableDestroyableDamageableLayer, false); end; end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end
autoload :AnalogControllerConfigurationFactory, "org/allbinary/android/input/motion/AnalogControllerConfigurationFactory" unless const_defined?(:AnalogControllerConfigurationFactory, false)

end; end; end; end; end

