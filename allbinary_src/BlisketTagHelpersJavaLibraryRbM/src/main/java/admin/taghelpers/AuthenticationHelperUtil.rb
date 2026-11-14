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
        AuthenticationHelperUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AuthenticationHelperUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AuthenticationHelperUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AuthenticationHelperUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :BasicUserRole, "org/allbinary/business/user/role/BasicUserRole"
autoload :UserRole, "org/allbinary/business/user/role/UserRole"
autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS"
autoload :HttpFilePermissions, "org/allbinary/logic/communication/http/file/upload/HttpFilePermissions"
autoload :HttpRequestUtil, "org/allbinary/logic/communication/http/request/HttpRequestUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :AbPath, "org/allbinary/logic/io/path/AbPath"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :AuthenticationHelper, "admin/taghelpers/AuthenticationHelper"

begin
    AuthenticationHelperUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

