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


class PCGameKey < Input
    

    def initialize(keyCode, name)
        super(keyCode, name)
        id = self.getId()
        if id >= 0
            InputFactory.getInstance().add(id, self)
        end
    end
    

    def toString()
        return "PCGameKey: " + super.to_s
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

require "org/allbinary/logic/string/StringUtil"

