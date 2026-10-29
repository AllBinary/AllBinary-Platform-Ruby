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
# package org.allbinary.logic.io

# require "java/io/File"
# require "java/io/FileInputStream"
# require "java/io/FileNotFoundException"

class AbFileInputStream < FileInputStream

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(name)
        method(:initialize).super_method.call(name)
    end
    

    def constructor1(file)
        method(:initialize).super_method.call(AbFileNativeUtil.get(file))
    end
    

    def constructor1(file)
        method(:initialize).super_method.call(file)
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/AbFileNativeUtil"

