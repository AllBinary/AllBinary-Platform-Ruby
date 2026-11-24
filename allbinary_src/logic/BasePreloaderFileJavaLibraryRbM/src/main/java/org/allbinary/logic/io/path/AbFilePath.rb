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

require "java/lang/JavaOverload"
require "org/allbinary/logic/io/path/AbPath"

module ::Org; module Allbinary; module Logic; module Io; module Path

class AbFilePath < AbPath
    

    def initialize(aPath)
        super(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        pathData = AbPathData.getInstance()
        abPathUtil = PathUtil.getInstance()
        @schema = self.getSchema(aPath)
        self.setName(pathData.getNameFromPath(aPath))
        self.setPath(abPathUtil.adjust(self.getPathFromPath(abPathUtil.removeNameFromPath(aPath).to_s)))
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false)
autoload :PathUtil, "org/allbinary/logic/io/path/PathUtil" unless const_defined?(:PathUtil, false)

end; end; end; end; end

