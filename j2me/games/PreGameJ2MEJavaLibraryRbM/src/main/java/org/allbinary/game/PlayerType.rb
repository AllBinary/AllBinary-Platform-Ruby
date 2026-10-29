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
# package org.allbinary.game


class PlayerType
    attr_accessor :id, :name

    def initialize_fields
        @id = nil
        @name = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(name, value)
        initialize_fields
        @name = name
        @id = value
    end
    

    def getId()
        return @id
    end
    

    def getName()
        return @name
    end
    

    def toString()
        return self.getName()
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringUtil"

