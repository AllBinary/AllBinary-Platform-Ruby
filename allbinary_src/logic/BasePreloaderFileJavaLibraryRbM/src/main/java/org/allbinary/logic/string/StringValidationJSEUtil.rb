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
# package org.allbinary.logic.string


class StringValidationJSEUtil
    

    def initialize()
    end
    

    def self.isBlank(string)
        len = string.length
        (0...len).each do |i|
            c = string[i]
            if (c).match?(/\s/) == false
                return false
            end
        end
        return true
    end
end

