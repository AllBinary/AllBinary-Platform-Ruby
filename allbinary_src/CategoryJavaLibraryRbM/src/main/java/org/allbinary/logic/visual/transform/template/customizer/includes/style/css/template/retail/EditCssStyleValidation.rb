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
# package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/allbinary/logic/visual/transform/template/customizer/includes/style/css/template/retail/CssStyleValidation"

class EditCssStyleValidation < CssStyleValidation
    include ValidationInterface
    include DomNodeInterface

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call()
    end
    

    def constructor1(document)
        method(:initialize).super_method.call(document)
    end
    

    def constructor1(hashMap)
        method(:initialize).super_method.call(hashMap)
    end
    

    def isValid()
        return super()
    end
    

    def validationInfo()
        return super()
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(StylesData.getInstance().NAME)
        styleNode = document.createElement(StyleData.getInstance().NAME)
        node.appendChild(styleNode)
        styleNode.appendChild(ColorsView.new().toXmlNode(document))
        size = @cssStyleElementVector.size()
        (0...size).each do |i|
            styleDomNodeInterface = @cssStyleElementVector.get(i)
            styleNode.appendChild(styleDomNodeInterface.toXmlNode(document))
        end
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/visual/dhtml/style/StyleData"
require "org/allbinary/logic/visual/dhtml/style/StylesData"
require "org/allbinary/logic/visual/dhtml/style/color/ColorsView"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

