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


class GameMode
    attr_accessor :name

    def initialize_fields
        @name = StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(name)
        initialize_fields
        self.setName(name)
    end
    

    def setName(name)
        @name = name
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

class GameMode
    NONE = GameMode.new(StringUtil.getInstance().NULL_STRING)
    SERVER = GameMode.new("Server")
    CLIENT = GameMode.new("Client")
end

