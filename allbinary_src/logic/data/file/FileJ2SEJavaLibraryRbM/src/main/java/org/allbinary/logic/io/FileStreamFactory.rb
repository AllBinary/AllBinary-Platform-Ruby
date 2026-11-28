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

class FileStreamFactory
    

    def self.getInstance()
        if SINGLETON == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (FileStreamFactory.instance_exec(FileStreamFactory.new()) { |java_value| remove_const(:SINGLETON) if const_defined?(:SINGLETON, false); const_set(:SINGLETON, java_value) })
        end
        return SINGLETON
    end
    

    def initialize()
    end
    

    # throws Exception
    def getFileInputStreamInstance(path, fileName)
        _FILEABPATH = ::Org::Allbinary::Logic::Io::Path::AbPath.new(path, fileName)
        file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(_FILEABPATH)
        return AbFileInputStream.createFromAbFile(file)
    end
    

    # throws Exception
    def getFileOutputStreamInstance(path, fileName)
        _FILEABPATH = ::Org::Allbinary::Logic::Io::Path::AbPath.new(path, fileName)
        file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(_FILEABPATH)
        if file.exists()
            file.delete()
            file.createNewFile()
        end
        return AbFileOutputStream.createFromAbFile(file)
    end
    

    # throws Exception
    def delete(path, fileName)
        _FILEABPATH = ::Org::Allbinary::Logic::Io::Path::AbPath.new(path, fileName)
        file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(_FILEABPATH)
        file.delete()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FileStreamFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
autoload :AbFileInputStream, "org/allbinary/logic/io/AbFileInputStream" unless const_defined?(:AbFileInputStream, false)
autoload :AbFileOutputStream, "org/allbinary/logic/io/AbFileOutputStream" unless const_defined?(:AbFileOutputStream, false)

begin
    FileStreamFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

