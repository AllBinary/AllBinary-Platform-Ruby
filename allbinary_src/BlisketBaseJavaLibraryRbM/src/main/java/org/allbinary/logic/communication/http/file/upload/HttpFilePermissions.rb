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

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicUserRoleFactory, "org/allbinary/business/user/role/BasicUserRoleFactory"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbFile, "org/allbinary/logic/io/file/AbFile"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :FileUploadData, "org/allbinary/logic/communication/http/file/upload/FileUploadData"

