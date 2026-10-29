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


module ValidatorBaseInterface
    

    def isValid()
        raise NotImplementedError
    end
    

    def validationInfo()
        raise NotImplementedError
    end
    

    def toHashtable()
        raise NotImplementedError
    end
    

    def toList()
        raise NotImplementedError
    end
end

require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"

