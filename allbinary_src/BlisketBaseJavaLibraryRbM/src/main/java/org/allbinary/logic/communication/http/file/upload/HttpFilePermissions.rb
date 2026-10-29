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


class HttpFilePermissions
    attr_accessor :logUtil, :commonStrings, :file, :userRoles

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @file = nil
        @userRoles = BasicArrayListD.new()
    end
    

    def initialize(fullPath)
        initialize_fields
        @file = AbFile.createAbFileFromAbPath(AbPath.new(fullPath.toFileSystemString(), FileUploadData.getInstance().FILE))
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
            @logUtil.putF("Loading Privileges: " + (fullPath.toFileSystemString()).to_s, self, @commonStrings.CONSTRUCTOR)
        end
        if self.isFile()
            @userRoles.add(BasicUserRoleFactory.getInstance().ADMINISTRATOR)
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
            @logUtil.putF("User Roles: " + (@userRoles).to_s, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def isFile()
        return @file.isFile()
    end
    

    def getUserRoles()
        return @userRoles
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/role/BasicUserRoleFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/file/AbFile"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/http/file/upload/FileUploadData"

