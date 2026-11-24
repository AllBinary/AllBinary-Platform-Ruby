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

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface"

module ::Org; module Allbinary; module Logic; module ControlPackage; module Contraints; module Size

class TwoDimensionalConstraint
    include TwoDimensionalConstraintInterface
    attr_accessor :widthSizeConstraintInterface, :heightSizeConstraintInterface

    def jfields_org_allbinary_logic_control_contraints_size_TwoDimensionalConstraint
        @widthSizeConstraintInterface = nil unless instance_variable_defined?(:@widthSizeConstraintInterface)
        @heightSizeConstraintInterface = nil unless instance_variable_defined?(:@heightSizeConstraintInterface)
    end
    

    def initialize(node)
        jfields_org_allbinary_logic_control_contraints_size_TwoDimensionalConstraint
    end
    

    def getHeight()
        return @heightSizeConstraintInterface
    end
    java_overload :getHeight, 0
    

    def getWidth()
        return @widthSizeConstraintInterface
    end
    java_overload :getWidth, 0
    

    def setHeight(heightSizeConstraintInterface)
        @heightSizeConstraintInterface = heightSizeConstraintInterface
    end
    java_overload :setHeight, 1
    

    def setWidth(widthSizeConstraintInterface)
        @widthSizeConstraintInterface = widthSizeConstraintInterface
    end
    java_overload :setWidth, 1
end

module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
autoload :SizeConstraintInterface, "org/allbinary/logic/control/contraints/size/SizeConstraintInterface" unless const_defined?(:SizeConstraintInterface, false)

end; end; end; end; end; end

