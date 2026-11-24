#
# AllBinary Open License Version 1
# Copyright (c) 2022 AllBinary
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
# package org.allbinary.data.tree.dom

# require "javax/xml/transform/stream/StreamResult"
# require "javax/xml/transform/stream/StreamSource"

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom

class AbXslHelper
    

    def self.getInstance()
        return AbXslHelper.instance
    end
    

    # throws Exception
    def translate_j2_1(xslFile, xmlFile)
        return self.translate(xslFile.getAbsolutePath(), xmlFile.getAbsolutePath())
    end
    

    # throws Exception
    def translate_j2_2(xslPath, xmlPath)
        return self.translate(xslPath.getPath(), xmlPath.getPath())
    end
    

    # throws Exception
    def translate_j2_3(xsltFilePath, xmlFilePath)
        begin
            outputStream = ::Java::Io::ByteArrayOutputStream.new()
            return XslHelper.getInstance().translate(StreamSource.new(xsltFilePath), StreamSource.new(xmlFilePath), StreamResult.new(outputStream)).to_s
        rescue StandardError => e
            raise e
        end
    end

    def translate(*java_overload_args)
        return translate_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method translate takes #{java_overload_args.length} arguments"
    end

    def translate_j2(*java_overload_args)
        return translate_j2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::FilePackage::AbFile)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::FilePackage::AbFile))
        return translate_j2_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath))
        return translate_j2_3(*java_overload_args)
    end

    def self.instance()
        AbXslHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbXslHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbXslHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbXslHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Io; autoload :ByteArrayOutputStream, "java/io/ByteArrayOutputStream" unless const_defined?(:ByteArrayOutputStream, false); end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
autoload :XslHelper, "org/allbinary/data/tree/dom/XslHelper" unless const_defined?(:XslHelper, false)

begin
    AbXslHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

