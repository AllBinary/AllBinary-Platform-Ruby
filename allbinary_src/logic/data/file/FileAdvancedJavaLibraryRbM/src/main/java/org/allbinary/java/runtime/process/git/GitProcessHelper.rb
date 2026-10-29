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

# require "java/io/File"
# require "java/io/IOException"
# require "java/nio/charset/StandardCharsets"
# require "java/util/List"

#Do not use this instead just skip target, build, Application paths.
class GitProcessHelper
    attr_accessor :trackedStrings

    def initialize_fields
        @trackedStrings = TrackedStrings.getInstance()
    end
    

    def self.getInstance()
        return GitProcessHelper.instance
    end
    

    def initialize()
        initialize_fields
        logUtil = LogUtil.getInstance()
        commonStrings = CommonStrings.getInstance()
        _THIS_IS_SLOW = "This is slow consider path exclusion instead"
        logUtil.putF(_THIS_IS_SLOW, self, commonStrings.CONSTRUCTOR)
    end
    

    # throws IOException, InterruptedException
    def trackedFiles(rootAsString, pathspec)
        return self.trackedFiles(rootAsString, pathspec, ".java")
    end
    

    # throws IOException, InterruptedException
    # Java overloaded method: Ruby keeps the last definition
    def trackedFiles(rootAsString, pathspec, suffix)
        process = ProcessBuilder.new(@trackedStrings.GIT_COMMAND, @trackedStrings.CHANGE_DIRECTORY_OPTION, rootAsString, @trackedStrings.LIST_FILES_COMMAND, @trackedStrings.SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE, @trackedStrings.PATHSPEC_SEPARATOR, pathspec).redirectError(ProcessBuilder::Redirect.INHERIT).start()
        output = process.getInputStream().readAllBytes()
        exitCode = process.waitFor()
        if exitCode != 0
            raise RuntimeError.new(StringMaker.new().append("git ls-files failed for ").append(rootAsString).append(" with exit code ").appendint(exitCode).to_s)
        end
        files = ArrayList.new()
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
    

    def isTracked(file)
        begin
            nativeFile = AbFileNativeUtil.get(file)
            parentFile = nativeFile.getParentFile()
            process = ProcessBuilder.new(@trackedStrings.GIT_COMMAND, @trackedStrings.CHANGE_DIRECTORY_OPTION, parentFile.getPath(), @trackedStrings.LIST_FILES_COMMAND, @trackedStrings.ERROR_UNMATCH_OPTION, @trackedStrings.PATHSPEC_SEPARATOR, nativeFile.getName()).redirectErrorStream(true).start()
            process.getInputStream().readAllBytes()
            return process.waitFor() == 0
        rescue StandardError => e
            return false
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/ArrayList"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/file/AbFileNativeUtil"
require "org/allbinary/logic/io/file/directory/TrackedStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "java/lang/InterruptedException"

class GitProcessHelper
    @@instance = GitProcessHelper.new()
end

