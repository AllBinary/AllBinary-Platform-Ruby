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


module ::Admin; module Taghelpers

class AuthenticationHelperUtil
    attr_accessor :logUtil

    def jfields_admin_taghelpers_AuthenticationHelperUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        jfields_admin_taghelpers_AuthenticationHelperUtil
    end
    

    def self.getInstance()
        return @@instance
    end
    

    # throws Exception
    def isAuthorized(authenticationHelper, filePath)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
            @logUtil.putF((::Org::Allbinary::StringPackage::CommonLabels.getInstance().START).to_s + filePath, self, "isAuthorized()")
        end
        endIndex = ::Org::Allbinary::Logic::Communication::Http::Request::HttpRequestUtil.getInstance().getLastSeparatorIndex(filePath)
        fullPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new((::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()).to_s + filePath[0...endIndex], ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        downloadFilePermissions = ::Org::Allbinary::Logic::Communication::Http::FilePackage::Upload::HttpFilePermissions.new(fullPath)
        userRoles = downloadFilePermissions.getUserRoles()
        userRole = authenticationHelper.getRole()
        basicUserRole = userRole.getBasicUserRole()
        if userRoles.contains(basicUserRole)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Authorized", self, "isAuthorized()")
            end
            return true
        else
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :BasicUserRole, "org/allbinary/business/user/role/BasicUserRole" unless const_defined?(:BasicUserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload; autoload :HttpFilePermissions, "org/allbinary/logic/communication/http/file/upload/HttpFilePermissions" unless const_defined?(:HttpFilePermissions, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :HttpRequestUtil, "org/allbinary/logic/communication/http/request/HttpRequestUtil" unless const_defined?(:HttpRequestUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :AuthenticationHelper, "admin/taghelpers/AuthenticationHelper" unless const_defined?(:AuthenticationHelper, false)

begin
    AuthenticationHelperUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end

