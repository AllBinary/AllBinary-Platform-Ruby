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
# package admin.tags

# require "javax/servlet/jsp/JspTagException"
require "admin/tags/TableTag"

class UserTag < TableTag
    attr_accessor :role, :enable

    def initialize_fields
        @role = nil
        @enable = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(UserHelperFactory.new())
        self.setTagRequestHelperFactory(UserHelperFactory.new())
    end
    

    def setRole(value)
        @role = value
        self.getPropertiesHashMap().put(UserRoleData::NAME, @role)
    end
    

    def setEnable(value)
        @enable = value
        self.getPropertiesHashMap().put(EntryData.getInstance().ENABLE, @enable)
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                return super()
            end
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "admin/taghelpers/UserHelperFactory"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/user/role/UserRoleData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"

