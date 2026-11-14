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
require "views/admin/user/UsersView"

class UsersValidationView < UsersView
    include ValidationComponentInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        httpTransformInfoInterface = self.getTransformInfoInterface()
        role = httpTransformInfoInterface.getPropertiesHashMap().get(UserRoleData::NAME.to_s)
        userRole = UserRoleB.getRole(role)
        @userVector = UserEntityFactory.getInstance().getUsersWithRole(userRole)
    end
    

    def isValid()
        begin
            if @userVector.size() > 0
                return true
            else
                return false
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            return "No Users"
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
end

autoload :UserRole, "org/allbinary/business/user/role/UserRole"
autoload :UserRoleB, "org/allbinary/business/user/role/UserRoleB"
autoload :UserRoleData, "org/allbinary/business/user/role/UserRoleData"
autoload :UserEntityFactory, "org/allbinary/data/tables/user/UserEntityFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

