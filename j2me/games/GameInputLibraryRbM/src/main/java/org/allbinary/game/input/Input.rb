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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Game; module Input

class Input
    attr_accessor :id, :name

    def jfields_org_allbinary_game_input_Input
        @id = 0 unless instance_variable_defined?(:@id)
        @name = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
    end
    

    def initialize(id, name)
        jfields_org_allbinary_game_input_Input
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("Name: ")
        stringBuffer.append(self.getName())
        stringBuffer.append(" Id: ")
        stringBuffer.appendint(self.getId())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end

