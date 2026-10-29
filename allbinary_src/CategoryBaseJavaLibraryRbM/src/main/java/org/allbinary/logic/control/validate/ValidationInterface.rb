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
# package org.allbinary.logic.control.validate


module ValidationInterface
    

    # throws Exception
    def isValid()
        raise NotImplementedError
    end
    

    # throws Exception
    def toValidationInfoNode(document)
        raise NotImplementedError
    end
    

    # throws Exception
    def toValidationInfoDoc()
        raise NotImplementedError
    end
    

    # throws Exception
    def validationInfo()
        raise NotImplementedError
    end
end

require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

