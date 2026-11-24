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
# require "java/io/IOException"
require "java/io/OutputStream"
# require "java/nio/channels/FileChannel"

module ::Org; module Allbinary; module Logic; module Io

class AbFileOutputStream < ::Java::Io::OutputStream
    attr_accessor :fileOutputStream

    def jfields_org_allbinary_logic_io_AbFileOutputStream
        @fileOutputStream = nil unless instance_variable_defined?(:@fileOutputStream)
    end
    

    # throws FileNotFoundException
    def self.createFromAbFile(file)
        return AbFileOutputStream.new(::Java::Io::FileOutputStream.new(::Org::Allbinary::Logic::Io::FilePackage::AbFileNativeUtil.get(file)))
    end
    

    # throws FileNotFoundException
    def self.createFromAbFileAppend(file, append)
        return AbFileOutputStream.new(::Java::Io::FileOutputStream.new(file.getPath()))
    end
    

    # throws FileNotFoundException
    def self.createFromFilePath(name)
        return AbFileOutputStream.new(::Java::Io::FileOutputStream.new(name))
    end
    

    # throws FileNotFoundException
    def self.createFromFilePathAppend(name, append)
        return AbFileOutputStream.new(::Java::Io::FileOutputStream.new(name))
    end
    

    def initialize(fileOutputStream)
        super()
        jfields_org_allbinary_logic_io_AbFileOutputStream
        @fileOutputStream = fileOutputStream
    end
    

    # throws IOException
    def close()
        @fileOutputStream.close()
    end
    java_overload :close, 0
    

    def getChannel()
        return @fileOutputStream.getChannel()
    end
    java_overload :getChannel, 0
    

    # throws IOException
    def write_j1_1(buffer)
        @fileOutputStream.write(buffer)
    end
    

    # throws IOException
    def write_j3(buffer, offset, count)
        @fileOutputStream.write(buffer, offset, count)
    end
    

    # throws IOException
    def write_j1_2(b)
        @fileOutputStream.write(b)
    end

    def write(*java_overload_args)
        return write_j1(*java_overload_args) if java_overload_args.length == 1
        return write_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method write takes #{java_overload_args.length} arguments"
    end

    def write_j1(*java_overload_args)
        return write_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || (java_overload_args[0].is_a?(::Array) && (java_overload_args[0].instance_variable_get(:@java_component) || :B) == :B && (java_overload_args[0].empty? || java_overload_args[0][0].is_a?(::Integer))))
        return write_j1_2(*java_overload_args)
    end
end

module ::Java; module Io; autoload :FileOutputStream, "java/io/FileOutputStream" unless const_defined?(:FileOutputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFileNativeUtil, "org/allbinary/logic/io/file/AbFileNativeUtil" unless const_defined?(:AbFileNativeUtil, false); end; end; end; end; end

end; end; end; end

