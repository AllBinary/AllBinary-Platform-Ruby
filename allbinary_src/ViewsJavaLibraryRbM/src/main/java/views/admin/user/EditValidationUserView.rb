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
# package views.admin.user

require "java/lang/JavaOverload"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/admin/user/UserView"

module ::Views; module Admin; module User

class EditValidationUserView < UserView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    attr_accessor :logUtil, :userName

    def jfields_views_admin_user_EditValidationUserView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @userName = nil unless instance_variable_defined?(:@userName)
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_admin_user_EditValidationUserView
        httpServletRequest = self.getPageContext().getRequest()
        hashMap = ::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(httpServletRequest).toHashMap()
        @userName = ::Org::Allbinary::Business::User::Username::UserName.new(hashMap).get()
    end
    

    def isValid()
        begin
            if ::Org::Allbinary::Business::User::Username::UserName.getInstance().isValid(@userName) == true
                @user = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().getUser(@userName)
                if @user == nil
                    return false
                end
            else
                return false
            end
            return @user.isValid()
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 0
    

    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            if ::Org::Allbinary::Business::User::Username::UserName.getInstance().isValid(@userName) == true
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("User Name is valid", self, "validationInfo()")
                end
                @user = ::Org::Allbinary::DataPackage::Tables::User::UserEntityFactory.getInstance().getUser(@userName)
                if @user == nil
                    stringBuffer.append("User does not exist.<br />")
                    return stringBuffer.to_s
                end
            else
                stringBuffer.append("User Name is not valid.<br />")
                return stringBuffer.to_s
            end
            if @user.isValid() == false
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("User exists but is invalid - Probably manually modified", self, "validationInfo()")
                end
                stringBuffer.append("User data is not valid - Please call administrator.<br />")
                stringBuffer.append(@user.validationInfo())
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    java_overload :validationInfo, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def getTransformInfoInterface()
        return EditValidationUserView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module User; module Username; autoload :UserName, "org/allbinary/business/user/username/UserName" unless const_defined?(:UserName, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module User; autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory" unless const_defined?(:UserEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end

