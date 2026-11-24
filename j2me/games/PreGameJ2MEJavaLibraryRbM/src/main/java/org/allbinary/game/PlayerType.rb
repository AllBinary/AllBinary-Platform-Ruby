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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Game

class PlayerType
    attr_accessor :id, :name

    def jfields_org_allbinary_game_PlayerType
        @id = nil unless instance_variable_defined?(:@id)
        @name = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(name, value)
        jfields_org_allbinary_game_PlayerType
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

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end

