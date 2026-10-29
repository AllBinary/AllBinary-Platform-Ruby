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
# package org.allbinary.input.automation


class ImageOutputData
    

    def initialize()
    end
end

require "org/allbinary/logic/io/file/FilePathData"
require "org/allbinary/logic/string/StringMaker"
require "java/lang/System"

class ImageOutputData
    SAVE_PATH = StringMaker.new().append(System.getProperty("user.dir")).appendchar(FilePathData.getInstance().SEPARATORCHAR).append("saves").appendchar(FilePathData.getInstance().SEPARATORCHAR).to_s
end

