# 
# AllBinary Open License Version 1 
# Copyright (c) 2026 AllBinary 
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
# package org.allbinary.java.runtime.process.git

require "java/lang/JavaClass"
# require "java/io/File"
# require "java/io/IOException"
# require "java/nio/charset/StandardCharsets"
# require "java/util/List"

module ::Org; module Allbinary; module Java; module Runtime; module ProcessPackage; module Git

#Do not use this instead just skip target, build, Application paths.
class GitProcessHelper
    attr_accessor :trackedStrings

    def jfields_org_allbinary_java_runtime_process_git_GitProcessHelper
        @trackedStrings = ::Org::Allbinary::Logic::Io::FilePackage::Directory::TrackedStrings.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_java_runtime_process_git_GitProcessHelper
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        _THIS_IS_SLOW = "This is slow consider path exclusion instead"
        logUtil.putF(_THIS_IS_SLOW, self, commonStrings.CONSTRUCTOR)
    end
    

    # throws IOException, InterruptedException
    def trackedFiles_j2(rootAsString, pathspec)
        return self.trackedFiles(rootAsString, pathspec, ".java")
    end
    

    # throws IOException, InterruptedException
    def trackedFiles_j3(rootAsString, pathspec, suffix)
        process = ProcessBuilder.new(@trackedStrings.GIT_COMMAND, @trackedStrings.CHANGE_DIRECTORY_OPTION, rootAsString, @trackedStrings.LIST_FILES_COMMAND, @trackedStrings.SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE, @trackedStrings.PATHSPEC_SEPARATOR, pathspec).redirectError(ProcessBuilder::Redirect.INHERIT).start()
        output = process.getInputStream().readAllBytes()
        exitCode = process.waitFor()
        if exitCode != 0
            raise RuntimeError.new(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("git ls-files failed for ").append(rootAsString).append(" with exit code ").appendint(exitCode).to_s)
        end
        files = ::Java::Util::ArrayList.new()
        start = 0
        relativePath = nil
        (0...output.length).each do |index|
            if output[index] == 0
                relativePath = output, start, index - start, StandardCharsets::UTF_8.pack("c*").force_encoding("UTF-8")
                if relativePath.end_with?(suffix)
                    files.add(relativePath)
                end
                start = index + 1
            end
        end
        return files
    end

    def trackedFiles(*java_overload_args)
        return trackedFiles_j2(*java_overload_args) if java_overload_args.length == 2
        return trackedFiles_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method trackedFiles takes #{java_overload_args.length} arguments"
    end
    

    def isTracked(file)
        begin
            nativeFile = ::Org::Allbinary::Logic::Io::FilePackage::AbFileNativeUtil.get(file)
            parentFile = nativeFile.getParentFile()
            process = ProcessBuilder.new(@trackedStrings.GIT_COMMAND, @trackedStrings.CHANGE_DIRECTORY_OPTION, parentFile.getPath(), @trackedStrings.LIST_FILES_COMMAND, @trackedStrings.ERROR_UNMATCH_OPTION, @trackedStrings.PATHSPEC_SEPARATOR, nativeFile.getName()).redirectErrorStream(true).start()
            process.getInputStream().readAllBytes()
            return process.waitFor() == 0
        rescue StandardError => e
            return false
        end
    end

    def self.instance()
        GitProcessHelper.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GitProcessHelper.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GitProcessHelper.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GitProcessHelper"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :ArrayList, "java/util/ArrayList" unless const_defined?(:ArrayList, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFileNativeUtil, "org/allbinary/logic/io/file/AbFileNativeUtil" unless const_defined?(:AbFileNativeUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; module Directory; autoload :TrackedStrings, "org/allbinary/logic/io/file/directory/TrackedStrings" unless const_defined?(:TrackedStrings, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
require "java/lang/InterruptedException"

begin
    GitProcessHelper.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

