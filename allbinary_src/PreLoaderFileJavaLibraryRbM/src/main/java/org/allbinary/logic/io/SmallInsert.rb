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

class SmallInsert
    attr_accessor :logUtil, :commonStrings, :fileName, :string

    def jfields_org_allbinary_logic_io_SmallInsert
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @fileName = nil unless instance_variable_defined?(:@fileName)
        @string = nil unless instance_variable_defined?(:@string)
    end
    

    def initialize(fileName)
        jfields_org_allbinary_logic_io_SmallInsert
        @fileName = fileName
        @string = ::Org::Allbinary::Logic::Io::FilePackage::AbFileSystem.getInstance().readAsString(fileName)
    end
    

    def atBeginning(text)
        begin
            idFile = ::Java::Io::FileOutputStream.new(@fileName)
            idOutData = ::Java::Io::DataOutputStream.new(idFile)
            idOutData.writeBytes(text + @string)
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().IDLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insertAtBeginning", e)
            end
            return false
        end
    end
    

    def after(text, after)
        begin
            index = (@string.index(after) || -1)
            if index < 0
                puts("No such start: " + after + " in: " + @string)
                return false
            end
            index = index + after.length
            start = @string[0...index]
            end_ = @string[index + 1...@string.length]
            idFile = ::Java::Io::FileOutputStream.new(@fileName)
            idOutData = ::Java::Io::DataOutputStream.new(idFile)
            idOutData.writeBytes(start + text + end_)
            idOutData.close()
            idFile.close()
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().IDLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "after", e)
            end
            return false
        end
    end
    

    def atEnd(text)
        begin
            idFile = ::Java::Io::FileOutputStream.new(@fileName)
            idOutData = ::Java::Io::DataOutputStream.new(idFile)
            idOutData.writeBytes(@string + text)
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().IDLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "insertAtEnd", e)
            end
            return false
        end
    end
end

module ::Java; module Io; autoload :DataOutputStream, "java/io/DataOutputStream" unless const_defined?(:DataOutputStream, false); end; end
module ::Java; module Io; autoload :FileOutputStream, "java/io/FileOutputStream" unless const_defined?(:FileOutputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFileSystem, "org/allbinary/logic/io/file/AbFileSystem" unless const_defined?(:AbFileSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
require "java/lang/System"

end; end; end; end

