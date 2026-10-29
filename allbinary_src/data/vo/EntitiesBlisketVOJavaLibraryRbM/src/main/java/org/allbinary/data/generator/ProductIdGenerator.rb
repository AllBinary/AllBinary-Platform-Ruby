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

require "org/allbinary/data/generator/UniqueIdGenerator"

class ProductIdGenerator < UniqueIdGenerator
    attr_accessor :IDFILE

    def initialize_fields
        @IDFILE = "productId"
    end
    

    def initialize()
        super()
        initialize_fields
        stringBuffer = StringMaker.new()
        stringBuffer.append(URLGLOBALS.getMainPath())
        stringBuffer.append(PATH_GLOBALS.getInstance().INIT_PATH)
        stringBuffer.append(@IDFILE)
        stringBuffer.append(UniqueIdGenerator::EXT)
        self.class.superclass.instance_method(:setFile).bind(self).call(stringBuffer.to_s, @IDFILE)
    end
end

require "org/allbinary/globals/PATH_GLOBALS"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/string/StringMaker"

