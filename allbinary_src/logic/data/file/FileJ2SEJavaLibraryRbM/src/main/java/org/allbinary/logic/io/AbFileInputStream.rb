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

require "java/lang/JavaOverload"
# require "java/io/File"
require "java/io/FileInputStream"
# require "java/io/FileNotFoundException"

module ::Org; module Allbinary; module Logic; module Io

class AbFileInputStream < ::Java::Io::FileInputStream
    

    def initialize(name)
        super(name)
    end
    

    # throws FileNotFoundException
    def self.createFromAbFile(file)
        return AbFileInputStream.new(::Org::Allbinary::Logic::Io::FilePackage::AbFileNativeUtil.get(file).getPath())
    end
    

    # throws FileNotFoundException
    def self.createFromFile(file)
        return AbFileInputStream.new(file.getPath())
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFileNativeUtil, "org/allbinary/logic/io/file/AbFileNativeUtil" unless const_defined?(:AbFileNativeUtil, false); end; end; end; end; end

end; end; end; end

