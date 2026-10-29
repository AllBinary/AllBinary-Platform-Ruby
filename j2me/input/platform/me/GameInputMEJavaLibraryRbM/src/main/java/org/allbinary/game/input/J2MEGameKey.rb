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


class J2MEGameKey < Input
    

    def initialize(key, keyName)
        super(key, keyName)
        id = self.getId()
        if id >= 0
            inputFactory = InputFactory.getInstance()
            inputFactory.add(id, self)
        end
    end
    

    def toString()
        return StringMaker.new().append("J2MEGameKey: ").append(super.to_s).to_s
    end
    alias_method :to_s, :toString
    

    def self.getString(keyCode)
        input = InputFactory.getInstance().getInstanceById(keyCode)
        if input != nil
            return input.getName()
        else
            return StringUtil.getInstance().EMPTY_STRING
        end
    end
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

