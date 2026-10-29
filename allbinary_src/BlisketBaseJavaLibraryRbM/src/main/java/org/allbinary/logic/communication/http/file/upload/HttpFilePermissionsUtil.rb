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
# package org.allbinary.logic.communication.http.file.upload


class HttpFilePermissionsUtil
    

    def self.getInstance()
        return HttpFilePermissionsUtil.instance
    end
    

    # throws Exception
    def create(path)
        file = AbFile.createAbFileFromAbPath(path)
        if !file.isFile()
            file.createNewFile()
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/path/AbPath"

class HttpFilePermissionsUtil
    @@instance = HttpFilePermissionsUtil.new()
end

