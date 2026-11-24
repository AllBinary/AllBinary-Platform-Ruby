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

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/validate/ValidationInterface"

module ::Org; module Allbinary; module Logic; module ControlPackage; module Validate

class Validation
    include ValidationInterface
    attr_accessor :commonStrings

    def jfields_org_allbinary_logic_control_validate_Validation
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_logic_control_validate_Validation
    end
    

    # throws Exception
    def isValid()
        raise RuntimeError.new()
    end
    java_overload :isValid, 0
    

    # throws Exception
    def toValidationInfoNode(document)
        raise RuntimeError.new()
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def toValidationInfoDoc()
        raise RuntimeError.new()
    end
    java_overload :toValidationInfoDoc, 0
    

    # throws Exception
    def validationInfo()
        raise RuntimeError.new()
    end
    java_overload :validationInfo, 0
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end

end; end; end; end; end

