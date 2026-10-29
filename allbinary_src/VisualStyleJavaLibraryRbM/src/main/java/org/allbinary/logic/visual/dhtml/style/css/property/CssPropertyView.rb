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

require "org/allbinary/data/tree/dom/DomNodeInterface"

class CssPropertyView
    include DomNodeInterface
    attr_accessor :commonStrings, :cssProperty

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
        @cssProperty = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(name)
        initialize_fields
        @cssProperty = CssProperty.new(name)
    end
    

    def constructor1(node)
        initialize_fields
        @cssProperty = CssProperty.new(node)
    end
    

    def getProperty()
        return @cssProperty
    end
    

    # throws Exception
    def toXmlNode(document)
        return @cssProperty.toXmlNode(document)
    end
end

require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/dhtml/style/css/property/CssProperty"

