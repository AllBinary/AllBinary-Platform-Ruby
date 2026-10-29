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
# package admin.taghelpers


class AuthenticationHelperUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return AuthenticationHelperUtil.instance
    end
    

    # throws Exception
    def isAuthorized(authenticationHelper, filePath)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
            @logUtil.putF((CommonLabels.getInstance().START).to_s + filePath, self, "isAuthorized()")
        end
        endIndex = HttpRequestUtil.getInstance().getLastSeparatorIndex(filePath)
        fullPath = AbPath.new((URLGLOBALS.getWebappPath()).to_s + filePath[0...endIndex], StringUtil.getInstance().EMPTY_STRING)
        downloadFilePermissions = HttpFilePermissions.new(fullPath)
        userRoles = downloadFilePermissions.getUserRoles()
        userRole = authenticationHelper.getRole()
        basicUserRole = userRole.getBasicUserRole()
        if userRoles.contains(basicUserRole)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Authorized", self, "isAuthorized()")
            end
            return true
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Not Authorized: " + basicUserRole.to_s, self, "isAuthorized()")
            end
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

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/role/BasicUserRole"
require "org/allbinary/business/user/role/UserRole"
require "org/allbinary/globals/URLGLOBALS"
require "org/allbinary/logic/communication/http/file/upload/HttpFilePermissions"
require "org/allbinary/logic/communication/http/request/HttpRequestUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonLabels"
require "admin/taghelpers/AuthenticationHelper"

class AuthenticationHelperUtil
    @@instance = AuthenticationHelperUtil.new()
end

