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


module ::Org; module Allbinary; module Logic; module Io

class LineReader
    attr_accessor :logUtil, :commonStrings, :fileName, :string, :index, :idFile, :idData

    def jfields_org_allbinary_logic_io_LineReader
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @fileName = nil unless instance_variable_defined?(:@fileName)
        @string = nil unless instance_variable_defined?(:@string)
        @index = 0
        @idFile = nil unless instance_variable_defined?(:@idFile)
        @idData = nil unless instance_variable_defined?(:@idData)
    end
    

    def initialize(fileName)
        jfields_org_allbinary_logic_io_LineReader
        begin
            bytes = (Array.new(100000, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :B) }
            @fileName = fileName
            @idFile = AbFileInputStream.new(fileName)
            @idFile.read(bytes)
            @string = bytes.pack("c*").force_encoding("UTF-8")
        rescue StandardError => e
            @logUtil.put("File: " + fileName, self, "LineReader", e)
            begin
            end
        end
    end
    

    def hasNext()
        begin
            nextIndex = (@string.index(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE, @index) || -1)
            if nextIndex == -1
                return false
            end
            return true
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "hasNext", e)
            begin
            end
            return false
        end
    end
    

    # throws Exception
    def next_()
        begin
            nextIndex = (@string.index(::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE, @index) || -1)
            if nextIndex == -1
                raise StandardError.new("next() should have been called first")
            end
            temp = @string[@index...nextIndex]
            @index = nextIndex + 1
            return temp
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, "next", e)
            begin
            end
            raise e
        end
    end
end

module ::Java; module Io; autoload :DataInputStream, "java/io/DataInputStream" unless const_defined?(:DataInputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
autoload :AbFileInputStream, "org/allbinary/logic/io/AbFileInputStream" unless const_defined?(:AbFileInputStream, false)

end; end; end; end

