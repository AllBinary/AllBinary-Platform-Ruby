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
# package org.allbinary.input.gyro

require "java/lang/JavaOverload"
require "org/allbinary/input/AllBinarySensorListener"
require "org/allbinary/input/gyro/AllBinaryOrientationSensor"

module ::Org; module Allbinary; module Input; module Gyro

class NoGyroSensor < AllBinaryOrientationSensor
    include ::Org::Allbinary::Input::AllBinarySensorListener
    

    def initialize()
        super()
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
    end
    

    # throws Exception
    def getOrientation()
        return ::Org::Allbinary::Logic::MathPackage::Orientation::NONE
    end
    java_overload :getOrientation, 0
    

    def onSensorChange()
    end
    java_overload :onSensorChange, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :Orientation, "org/allbinary/logic/math/Orientation" unless const_defined?(:Orientation, false); end; end; end; end

end; end; end; end

