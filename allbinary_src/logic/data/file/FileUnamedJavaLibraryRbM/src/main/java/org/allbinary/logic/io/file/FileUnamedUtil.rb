# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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


module ::Org; module Allbinary; module Logic; module Io; module FilePackage

class FileUnamedUtil
    attr_accessor :commonSeps

    def jfields_org_allbinary_logic_io_file_FileUnamedUtil
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
    end

    def initialize
        jfields_org_allbinary_logic_io_file_FileUnamedUtil
    end
    

    def self.getInstance()
        return FileUnamedUtil.instance
    end
    

    def process(string)
        simplifiedString = string.downcase
        simplifiedString = simplifiedString.gsub(@commonSeps.SPACE, @commonSeps.UNDERSCORE)
        simplifiedString = simplifiedString.gsub(@commonSeps.DASH, @commonSeps.UNDERSCORE)
        return simplifiedString
    end

    def self.instance()
        FileUnamedUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        FileUnamedUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = FileUnamedUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "FileUnamedUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

begin
    FileUnamedUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

