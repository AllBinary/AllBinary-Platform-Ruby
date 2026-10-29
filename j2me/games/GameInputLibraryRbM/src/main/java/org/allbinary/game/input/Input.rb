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
# package org.allbinary.game.input


class Input
    attr_accessor :id, :name

    def initialize_fields
        @id = 0
        @name = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(id, name)
        initialize_fields
        self.setId(id)
        self.setName(name)
    end
    

    def getId()
        return @id
    end
    

    def setId(key)
        @id = key
    end
    

    def getName()
        return @name
    end
    

    def setName(keyName)
        @name = keyName
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("Name: ")
        stringBuffer.append(self.getName())
        stringBuffer.append(" Id: ")
        stringBuffer.appendint(self.getId())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

