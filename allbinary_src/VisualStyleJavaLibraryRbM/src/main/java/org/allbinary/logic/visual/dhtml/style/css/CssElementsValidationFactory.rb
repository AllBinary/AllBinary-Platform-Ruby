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
# package org.allbinary.logic.visual.dhtml.style.css


class CssElementsValidationFactory
    

    def initialize()
    end
    

    # throws Exception
    def self.getInstance(cssElementStyleNodeList)
        styles = BasicArrayListD.new()
        size = cssElementStyleNodeList.size()
        cssElementStyleNode = nil
        cssValidationInterface = nil
        (0...size).each do |index|
            cssElementStyleNode = cssElementStyleNodeList.get(index)
            cssValidationInterface = CssElementValidationFactory.getInstance(cssElementStyleNode)
            styles.add(cssValidationInterface)
        end
        return styles
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(hashMap)
        styles = BasicArrayListD.new()
        return styles
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :ValidationInterface, "org/allbinary/logic/control/validate/ValidationInterface"
autoload :Node, "org/w3c/dom/Node"
autoload :CssElementValidationFactory, "org/allbinary/logic/visual/dhtml/style/css/CssElementValidationFactory"

