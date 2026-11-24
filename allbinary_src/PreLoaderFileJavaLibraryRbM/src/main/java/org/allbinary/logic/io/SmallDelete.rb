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

class SmallDelete
    attr_accessor :logUtil, :commonStrings, :fileName, :string

    def jfields_org_allbinary_logic_io_SmallDelete
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @fileName = nil unless instance_variable_defined?(:@fileName)
        @string = nil unless instance_variable_defined?(:@string)
    end
    

    def initialize(fileName)
        jfields_org_allbinary_logic_io_SmallDelete
        @fileName = fileName
        @string = ::Org::Allbinary::Logic::Io::FilePackage::AbFileSystem.getInstance().readAsString(fileName)
    end
    

    def deleteAtStart(start, end_)
        begin
            beginIndex = 0
            endIndex = 0
            beginIndex = (@string.index(start) || -1)
            endIndex = (@string.index(end_) || -1)
            if endIndex > beginIndex && beginIndex >= 0 && endIndex >= 0 && beginIndex < 10 && endIndex < 525
                text = @string[endIndex...@string.length]
                idFile = ::Java::Io::FileOutputStream.new(@fileName)
                idOutData = ::Java::Io::DataOutputStream.new(idFile)
                idOutData.writeBytes(text)
                return true
            end
            return false
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().IDLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "deleteAtStart", e)
            end
            return false
        end
    end
    

    def deleteBetween(start, end_, newText)
        begin
            beginIndex = 0
            endIndex = 0
            beginIndex = (@string.index(start) || -1)
            endIndex = (@string.index(end_) || -1)
            if endIndex > beginIndex && beginIndex >= 0 && endIndex >= 0 && beginIndex < 50 && endIndex < 425
                newStart = @string[0...beginIndex]
                text = @string[endIndex + end_.length...@string.length]
                idFile = ::Java::Io::FileOutputStream.new(@fileName)
                idOutData = ::Java::Io::DataOutputStream.new(idFile)
                idOutData.writeBytes(newStart + newText + text)
                return true
            end
            return false
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().IDLOGGING)
                @logUtil.put(@commonStrings.EXCEPTION, self, "deleteAtStart", e)
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

end; end; end; end

