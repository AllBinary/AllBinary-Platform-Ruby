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
# package org.allbinary.logic.java.anyType


class ParamsUtil
    

    def initialize()
    end
    

    def self.viewParams(params)
        if params != nil
            stringBuffer = StringMaker.new()
            (0...params.length).each do |index|
                stringBuffer.append(" ")
                stringBuffer.append(params[index].getName())
            end
            return stringBuffer.to_s
        else
            return "Params Null"
        end
    end
end

require "org/allbinary/logic/string/StringMaker"

