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
# package org.allbinary.logic.io.path

require "org/allbinary/logic/io/path/AbPath"

class AbFilePath < AbPath
    

    def initialize(aPath)
        super(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
        pathData = AbPathData.getInstance()
        abPathUtil = PathUtil.getInstance()
        @schema = self.getSchema(aPath)
        self.setName(pathData.getNameFromPath(aPath))
        self.setPath(abPathUtil.adjust(self.getPathFromPath(abPathUtil.removeNameFromPath(aPath).to_s)))
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/io/path/PathUtil"

