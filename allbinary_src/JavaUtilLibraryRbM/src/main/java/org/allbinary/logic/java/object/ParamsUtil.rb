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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Java; module AnyType

class ParamsUtil
    

    def initialize()
    end
    

    def self.viewParams(params)
        if params != nil
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end; end

