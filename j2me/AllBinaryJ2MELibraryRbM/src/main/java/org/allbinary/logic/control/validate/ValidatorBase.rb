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

require "org/allbinary/logic/control/validate/ValidatorBaseInterface"

class ValidatorBase
    include ValidatorBaseInterface
    

    def self.getInstance()
        return ValidatorBase.instance
    end
    

    def initialize()
    end
    

    def isValid()
        return BooleanFactory.getInstance().TRUE
    end
    

    def validationInfo()
        return StringUtil.getInstance().EMPTY_STRING
    end
    

    def toHashtable()
        return StdUtil.getInstance().NULL_TABLE
    end
    

    def toList()
        return BasicArrayListUtil.getInstance().getImmutableInstance()
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/java/bool/BooleanFactory"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListUtil"
require "org/allbinary/util/ABHashtable"

class ValidatorBase
    @@instance = ValidatorBase.new()
end

