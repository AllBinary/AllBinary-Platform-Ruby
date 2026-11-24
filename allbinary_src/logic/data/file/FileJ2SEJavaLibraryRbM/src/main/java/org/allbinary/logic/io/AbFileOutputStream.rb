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
# require "java/io/FileNotFoundException"
require "java/io/FileOutputStream"

module ::Org; module Allbinary; module Logic; module Io

class AbFileOutputStream < ::Java::Io::FileOutputStream
    

    # throws FileNotFoundException
    def self.createFromAbFile(file)
        return AbFileOutputStream.new(file.getPath(), false)
    end
    

    # throws FileNotFoundException
    def self.createFromAbFileAppend(file, append)
        return AbFileOutputStream.new(file.getPath(), append)
    end
    

    # throws FileNotFoundException
    def self.createFromFilePath(name)
        return AbFileOutputStream.new(name, false)
    end
    

    # throws FileNotFoundException
    def self.createFromFilePathAppend(name, append)
        return AbFileOutputStream.new(name, append)
    end
    

    def initialize(name, append)
        super(name, append)
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFileNativeUtil, "org/allbinary/logic/io/file/AbFileNativeUtil" unless const_defined?(:AbFileNativeUtil, false); end; end; end; end; end

end; end; end; end

