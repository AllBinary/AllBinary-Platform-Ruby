# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.logic.control.validate

require "org/allbinary/logic/control/validate/ValidationInterface"

class Validation
    include ValidationInterface
    attr_accessor :commonStrings

    def initialize_fields
        @commonStrings = CommonStrings.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def isValid()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def toValidationInfoNode(document)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def toValidationInfoDoc()
        raise RuntimeError.new()
    end
    

    # throws Exception
    def validationInfo()
        raise RuntimeError.new()
    end
end

require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

