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

class UpdateValidationUserView < HttpContextView
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
            if UserEntityFactory.getInstance().getUser(@user.getUserName()) == nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("User does not exist", self, @commonStrings.IS_VALID)
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
            if UserEntityFactory.getInstance().getUser(@user.getUserName()) == nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("User does not exist", self, "validationInfo()")
                end
                stringBuffer.append("Unable to update user that does not exist.<br />")
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

autoload :NewUserFactory, "org/allbinary/business/user/NewUserFactory"
autoload :UserInterface, "org/allbinary/business/user/UserInterface"
autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

