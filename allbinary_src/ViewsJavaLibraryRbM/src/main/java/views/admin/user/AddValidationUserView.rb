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

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/HttpContextView"

class AddValidationUserView < HttpContextView
    include ValidationComponentInterface
    attr_accessor :logUtil, :user

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @user = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @user = NewUserFactory.getInstance(transformInfoInterface)
    end
    

    def isValid()
        begin
            if UserEntityFactory.getInstance().getUser(@user.getUserName()) != nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("User already in existance.", self, @commonStrings.IS_VALID)
                end
                return false
            end
            if @user.isValid() == false
                return false
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            if UserEntityFactory.getInstance().getUser(@user.getUserName()) != nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("User already exists", self, "validationInfo()")
                end
                stringBuffer.append("The User Name you selected is already in use.<br/>  Please select another User Name.<br />")
            end
            if @user.isValid() == false
                stringBuffer.append(@user.validationInfo())
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Getting Validation Info"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    # throws Exception
    def view()
        return @views.ValidationOnlyTempUtil.getInstance().view(self)
    end
end

require "org/allbinary/business/user/NewUserFactory"
require "org/allbinary/business/user/UserInterface"
require "org/allbinary/data/tables/user/UserEntityFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

