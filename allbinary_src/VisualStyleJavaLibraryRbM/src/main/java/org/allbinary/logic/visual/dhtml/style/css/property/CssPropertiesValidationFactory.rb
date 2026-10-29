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
# package org.allbinary.logic.visual.dhtml.style.css.property


class CssPropertiesValidationFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(nodeList)
        propertiesVector = BasicArrayListD.new()
        (0...nodeList.getLength()).each do |index|
            node = nodeList.item(index)
            if node.getNodeName().compareTo(CssPropertyData.getInstance().NAME) == 0
                cssPropertyValidationInterface = CssPropertyValidationFactory.getInstance(node)
                propertiesVector.add(cssPropertyValidationInterface)
            end
        end
        return propertiesVector
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(hashMap)
        styles = BasicArrayListD.new()
        return styles
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/w3c/dom/Node"
require "org/w3c/dom/NodeList"
require "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyData"
require "org/allbinary/logic/visual/dhtml/style/css/property/CssPropertyValidationFactory"

