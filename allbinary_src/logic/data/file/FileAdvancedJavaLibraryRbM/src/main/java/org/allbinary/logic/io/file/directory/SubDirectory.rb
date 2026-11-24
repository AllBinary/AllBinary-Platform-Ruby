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
# package org.allbinary.logic.io.file.directory

# require "java/io/FileFilter"

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory

class SubDirectory
    attr_accessor :directory

    def jfields_org_allbinary_logic_io_file_directory_SubDirectory
        @directory = Directory.getInstance()
    end
    

    def self.getInstance()
        return SubDirectory.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_io_file_directory_SubDirectory
    end
    

    def search_j2_1(fileFilter, file)
        return @directory.search(fileFilter, file, true)
    end
    

    def search_j1(file)
        return @directory.search(file, true)
    end
    

    def search_j2_2(searchValue, file)
        return @directory.search(searchValue, file, true)
    end
    

    def search_j2_3(level, file)
        return @directory.search(level, file, true)
    end

    def search(*java_overload_args)
        return search_j2(*java_overload_args) if java_overload_args.length == 2
        return search_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method search takes #{java_overload_args.length} arguments"
    end

    def search_j2(*java_overload_args)
        return search_j2_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::FilePackage::AbFile))
        return search_j2_2(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::String)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Io::FilePackage::AbFile))
        return search_j2_3(*java_overload_args)
    end
    

    def self.toString(files)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        _NEW_LINE = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE
        size = files.size()
        (0...size).each do |index|
            file = files.get(index)
            stringBuffer.append(file.getPath())
            stringBuffer.append(_NEW_LINE)
        end
        return stringBuffer.to_s
    end

    def self.instance()
        SubDirectory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SubDirectory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SubDirectory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SubDirectory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :Directory, "org/allbinary/logic/io/file/directory/Directory" unless const_defined?(:Directory, false)

begin
    SubDirectory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

