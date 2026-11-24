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
# require "java/io/FileReader"

module ::Org; module Allbinary; module Logic; module Io

class BufferedLineReader
    attr_accessor :tmpIn

    def jfields_org_allbinary_logic_io_BufferedLineReader
        @tmpIn = nil unless instance_variable_defined?(:@tmpIn)
    end
    

    def initialize(file)
        jfields_org_allbinary_logic_io_BufferedLineReader
        @tmpIn = BufferedReader.new(FileReader.new(::Org::Allbinary::Logic::Io::FilePackage::AbFileNativeUtil.get(file)))
    end
    

    def readUpToLines(readAheadIndex)
    end
    

    # throws Exception
    def readLine()
        return @tmpIn.readLine()
    end
    

    # throws Exception
    def ready()
        return @tmpIn.ready()
    end
    

    def getSize()
        return 0
    end
    

    def getCurrent()
        return 0
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFileNativeUtil, "org/allbinary/logic/io/file/AbFileNativeUtil" unless const_defined?(:AbFileNativeUtil, false); end; end; end; end; end

end; end; end; end

