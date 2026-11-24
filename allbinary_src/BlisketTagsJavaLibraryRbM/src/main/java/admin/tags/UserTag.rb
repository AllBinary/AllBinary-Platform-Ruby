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

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/JspTagException"
require "admin/tags/TableTag"

module ::Admin; module Tags

class UserTag < TableTag
    attr_accessor :role, :enable

    def jfields_admin_tags_UserTag
        @role = nil unless instance_variable_defined?(:@role)
        @enable = nil unless instance_variable_defined?(:@enable)
    end
    

    def initialize()
        super()
        jfields_admin_tags_UserTag
        self.setTagHelperFactory(::Admin::Taghelpers::UserHelperFactory.new())
        self.setTagRequestHelperFactory(::Admin::Taghelpers::UserHelperFactory.new())
    end
    

    def setRole(value)
        @role = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Business::User::Role::UserRoleData::NAME, @role)
    end
    java_overload :setRole, 1
    

    def setEnable(value)
        @enable = value
        self.getPropertiesHashMap().put(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE, @enable)
    end
    java_overload :setEnable, 1
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                return UserTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
            end
            return SKIP_BODY
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Admin; module Taghelpers; autoload :UserHelperFactory, "admin/taghelpers/UserHelperFactory" unless const_defined?(:UserHelperFactory, false); end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleData, "org/allbinary/business/user/role/UserRoleData" unless const_defined?(:UserRoleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end

end; end

