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
# package org.allbinary.logic.visual.theme

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/Validation"

class ThemesValidation < Validation
    include DomNodeInterface
    attr_accessor :themeVector

    def initialize_fields
        @themeVector = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call()
        initialize_fields
        @themeVector = BasicArrayListD.new()
    end
    

    def constructor1(node)
        method(:initialize).super_method.call()
        initialize_fields
    end
    

    def constructor1(hashMap)
        method(:initialize).super_method.call()
        initialize_fields
    end
    

    def isValid()
        return true
    end
    

    def validationInfo()
        return nil
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    # throws Exception
    def toXmlNode(document)
        node = document.createElement(ThemesData.getInstance().NAME)
        size = @themeVector.size()
        (0...size).each do |i|
            themeDomNodeInterface = @themeVector.get(i)
            node.appendChild(themeDomNodeInterface.toXmlNode(document))
        end
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/theme/ThemesData"

