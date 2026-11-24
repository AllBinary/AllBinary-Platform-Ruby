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
# package org.allbinary.data.generator

require "java/lang/JavaOverload"
require "org/allbinary/data/generator/UniqueIdGenerator"

module ::Org; module Allbinary; module DataPackage; module Generator

class OrderIdGenerator < UniqueIdGenerator
    attr_accessor :IDFILE

    def jfields_org_allbinary_data_generator_OrderIdGenerator
        @IDFILE = "orderId"
    end
    

    def initialize()
        super()
        jfields_org_allbinary_data_generator_OrderIdGenerator
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(::Org::Allbinary::Globals::URLGLOBALS.getMainPath())
        stringBuffer.append(::Org::Allbinary::Globals::PATH_GLOBALS.getInstance().INIT_PATH)
        stringBuffer.append(@IDFILE)
        stringBuffer.append(UniqueIdGenerator::EXT)
        OrderIdGenerator.superclass.java_super_method(:setFile, 2).bind(self).call(stringBuffer.to_s, @IDFILE)
    end
end

module ::Org; module Allbinary; module Globals; autoload :PATH_GLOBALS, "org/allbinary/globals/PATH_GLOBALS" unless const_defined?(:PATH_GLOBALS, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end

