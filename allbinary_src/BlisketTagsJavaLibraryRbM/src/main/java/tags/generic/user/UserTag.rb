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
# package tags.generic.user

# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

class UserTag < StoreValidationTransformTag
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
        self.getPropertiesHashMap().put(UserRoleData::NAME, @role)
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.EDIT + org.allbinary.globals.GLOBALS2.EDIT) == 0
                    self.setName("Edit Session Validation User View - i.e. User Profile Edit")
                    self.setObjectFile("views.generic.user.EditValidationView")
                end
                if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.NEW) == 0
                    self.setName("New User View")
                    self.setObjectFile("views.generic.user.NewUserView")
                elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                    self.setName("Add Validation User View")
                    self.setObjectFile("views.generic.user.AddValidationUserView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.VIEW) == 0
                    self.setName("Validation User View")
                    self.setObjectFile("views.generic.user.ViewValidationUserView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.EDIT) == 0
                    self.setName("Validation User View")
                    self.setObjectFile("views.generic.user.EditValidationUserView")
                elsif self.getCommand().compareTo(@commonStrings.UPDATE) == 0
                    self.setName("Update Validation User View")
                    self.setObjectFile("views.generic.user.UpdateValidationUserView")
                elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                    self.setName("Delete Validation User View")
                    self.setObjectFile("views.generic.user.DeleteValidationUserView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.BACKUP) == 0
                    raise StandardError.new("View not implemented")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.RESTORE) == 0
                    raise StandardError.new("View not implemented")
                elsif self.getCommand().compareTo(@commonStrings.DROP) == 0
                    raise StandardError.new("View not implemented")
                elsif self.getCommand().compareTo(@commonStrings.CREATE) == 0
                    raise StandardError.new("View not implemented")
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

