# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.logic


class PropertyInitUtil
    

    def self.getInstance(value)
        commonStrings = CommonStrings.getInstance()
        logUtil = LogUtil.getInstance()
        logUtil.putF(StringMaker.new().append("PropertyInitUtil: ").appendint(value).to_s, logUtil, commonStrings.CONSTRUCTOR)
        return PropertyInitUtil.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"

class PropertyInitUtil
    @@instance = PropertyInitUtil.new()
end

