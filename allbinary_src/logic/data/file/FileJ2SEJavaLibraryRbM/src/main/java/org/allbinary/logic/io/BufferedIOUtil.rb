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

# require "java/io/BufferedReader"
# require "java/io/BufferedWriter"
# require "java/io/FileReader"
# require "java/io/FileWriter"

module ::Org; module Allbinary; module Logic; module Io

class BufferedIOUtil
    

    # throws Exception
    def self.copy(backupFile, backupFileBak)
        line = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        tmpOut = BufferedWriter.new(FileWriter.new(::Org::Allbinary::Logic::Io::FilePackage::AbFileNativeUtil.get(backupFileBak)))
        tmpIn = BufferedReader.new(FileReader.new(::Org::Allbinary::Logic::Io::FilePackage::AbFileNativeUtil.get(backupFile)))
        while tmpIn.ready()
            line = tmpIn.readLine()
            tmpOut.write(line, 0, line.length)
            tmpOut.newLine()
        end
        tmpOut.flush()
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFileNativeUtil, "org/allbinary/logic/io/file/AbFileNativeUtil" unless const_defined?(:AbFileNativeUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end

end; end; end; end

