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
# package tags.admin

# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

class UsersTag < StoreValidationTransformTag
    attr_accessor :role

    def initialize_fields
        @role = nil
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def setRole(value)
        @role = value
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            self.setName("Admin Users View")
            self.setObjectFile("views.admin.user.UsersValidationView")
            if self.getCommand() != nil
                self.getPropertiesHashMap().put(UserRoleData::NAME, @role)
                if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.VIEW) == 0
                else
                    raise StandardError.new("No Such View Command: " + (self.getCommand()).to_s)
                end
                return super()
            end
            raise StandardError.new("Command Null")
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "org/allbinary/business/user/role/UserRoleData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"

