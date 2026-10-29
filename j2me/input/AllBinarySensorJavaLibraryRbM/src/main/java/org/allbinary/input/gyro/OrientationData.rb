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


class OrientationData
    attr_accessor :ORIENTATION_SENSOR_INPUT, :ORIENTATION_TYPE

    def initialize_fields
        @ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
        @ORIENTATION_TYPE = "Orientation Type"
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return OrientationData::SINGLETON
    end
end

class OrientationData
    SINGLETON = OrientationData.new()
end

