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
# package org.allbinary.logic.io.file

# require "java/io/File"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage

class FileWrapperUtil
    

    def self.wrapFiles(files)
        begin
            abFileArray = Array.new(files.length, nil)
            (files.length - 1).step(0, -(1)) do |index|
                abFileArray[index] = AbFile.new(files[index])
            end
            return abFileArray
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putSE("Exception Wrapping Files", "FileWrapperUtil", "wrapFiles", e)
            return Array.new(0, nil)
        end
    end
    

    def self.wrapFile(file)
        begin
            return AbFile.new(file)
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putSE("Exception Wrapping File", "FileWrapperUtil", "wrapFile", e)
            return AbFile::NULL_FILE
        end
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false)

end; end; end; end; end

