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
# package org.allbinary.business.advertisement.area

require "org/allbinary/business/advertisement/area/AdvertisementAreaConstraintsInterface"

class AdvertisementAreaConstraints
    include AdvertisementAreaConstraintsInterface
    attr_accessor :displayInBrowserContraintsInterface, :twoDimensionConstraintsInterface

    def initialize_fields
        @displayInBrowserContraintsInterface = nil
        @twoDimensionConstraintsInterface = nil
    end
    

    def initialize(document)
        initialize_fields
        node = DomSearchHelper.getNode(AdvertisementAreaData.getInstance().NAME, document.getChildNodes())
        @displayInBrowserContraintsInterface = DisplayInBrowserContraints.new(node)
        @twoDimensionConstraintsInterface = TwoDimensionalConstraint.new(node)
    end
    

    def setDisplayInBrowserContraints(displayInBrowserContraintsInterface)
        @displayInBrowserContraintsInterface = displayInBrowserContraintsInterface
    end
    

    def getTwoDimensionContraints(twoDimensionConstraintsInterface)
        @twoDimensionConstraintsInterface = twoDimensionConstraintsInterface
    end
    

    def getDisplayInBrowserContraints()
        return @displayInBrowserContraintsInterface
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getTwoDimensionContraints()
        return @twoDimensionConstraintsInterface
    end
end

require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraints"
require "org/allbinary/logic/control/contraints/display/browser/DisplayInBrowserContraintsInterface"
require "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraint"
require "org/allbinary/logic/control/contraints/size/TwoDimensionalConstraintInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/business/advertisement/area/AdvertisementAreaData"

