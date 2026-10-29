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
# package org.allbinary.logic.control.contraints.size

require "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface"

class TwoDimensionalConstraint
    include TwoDimensionalConstraintInterface
    attr_accessor :widthSizeConstraintInterface, :heightSizeConstraintInterface

    def initialize_fields
        @widthSizeConstraintInterface = nil
        @heightSizeConstraintInterface = nil
    end
    

    def initialize(node)
        initialize_fields
    end
    

    def getHeight()
        return @heightSizeConstraintInterface
    end
    

    def getWidth()
        return @widthSizeConstraintInterface
    end
    

    def setHeight(heightSizeConstraintInterface)
        @heightSizeConstraintInterface = heightSizeConstraintInterface
    end
    

    def setWidth(widthSizeConstraintInterface)
        @widthSizeConstraintInterface = widthSizeConstraintInterface
    end
end

require "org/w3c/dom/Node"
require "org/allbinary/logic/control/contraints/size/SizeConstraintInterface"

