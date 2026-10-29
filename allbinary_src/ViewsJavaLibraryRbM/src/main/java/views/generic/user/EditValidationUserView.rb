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
# package views.generic.user

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/generic/user/UserView"

class EditValidationUserView < UserView
    include ValidationComponentInterface
    attr_accessor :logUtil, :userName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @userName = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @userName = self.getWeblisketSession().getUserName()
    end
    

    def isValid()
        begin
            if UserName.getInstance().isValid(@userName) == true
                @user = UserEntityFactory.getInstance().getUser(@userName)
                if @user == nil
                    return false
                end
            else
                return false
            end
            return @user.isValid()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            if UserName.getInstance().isValid(@userName)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("User Name is valid", self, "validationInfo()")
                end
                @user = UserEntityFactory.getInstance().getUser(@userName)
                if @user == nil
                    stringBuffer.append("User does not exist.<br />")
                    return stringBuffer.to_s
                end
            else
                stringBuffer.append("User Name is not valid.<br />")
                return stringBuffer.to_s
            end
            if @user.isValid() == false
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("User exists but is invalid - Probably manually modified", self, "validationInfo()")
                end
                stringBuffer.append("User data is not valid - Please call administrator.<br />")
                stringBuffer.append(@user.validationInfo())
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
end

require "org/allbinary/business/user/username/UserName"
require "org/allbinary/data/tables/user/UserEntityFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

