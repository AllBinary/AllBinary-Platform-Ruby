# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.util

require "java/lang/JavaOverload"
# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsConstructor"
require "org/allbinary/util/BasicArrayList"

module ::Org; module Allbinary; module Util

class BasicArrayListS < BasicArrayList
    

    def initialize(size)
        super(::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT_ARRAY)
        if size < 0
            raise ArgumentError.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Init Size Exception: ").appendint(size).to_s)
        end
        @objectArray = Array.new(size, nil)
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end

