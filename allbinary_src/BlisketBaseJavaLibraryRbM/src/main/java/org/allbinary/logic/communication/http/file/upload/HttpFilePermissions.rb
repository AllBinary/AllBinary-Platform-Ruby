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


module ::Org; module Allbinary; module Logic; module Communication; module Http; module FilePackage; module Upload

class HttpFilePermissions
    attr_accessor :logUtil, :commonStrings, :file, :userRoles

    def jfields_org_allbinary_logic_communication_http_file_upload_HttpFilePermissions
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @file = nil unless instance_variable_defined?(:@file)
        @userRoles = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def initialize(fullPath)
        jfields_org_allbinary_logic_communication_http_file_upload_HttpFilePermissions
        @file = ::Org::Allbinary::Logic::Io::FilePackage::AbFile.createAbFileFromAbPath(::Org::Allbinary::Logic::Io::Path::AbPath.new(fullPath.toFileSystemString(), FileUploadData.getInstance().FILE))
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
            @logUtil.putF("Loading Privileges: " + (fullPath.toFileSystemString()).to_s, self, @commonStrings.CONSTRUCTOR)
        end
        if self.isFile()
            @userRoles.add(::Org::Allbinary::Business::User::Role::BasicUserRoleFactory.getInstance().ADMINISTRATOR)
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
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

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :BasicUserRoleFactory, "org/allbinary/business/user/role/BasicUserRoleFactory" unless const_defined?(:BasicUserRoleFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module FilePackage; autoload :AbFile, "org/allbinary/logic/io/file/AbFile" unless const_defined?(:AbFile, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :FileUploadData, "org/allbinary/logic/communication/http/file/upload/FileUploadData" unless const_defined?(:FileUploadData, false)

end; end; end; end; end; end; end

