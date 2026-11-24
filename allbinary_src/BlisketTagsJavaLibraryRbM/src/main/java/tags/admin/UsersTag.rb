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

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

module ::Tags; module Admin

class UsersTag < ::Tags::StoreValidationTransformTag
    attr_accessor :role

    def jfields_tags_admin_UsersTag
        @role = nil unless instance_variable_defined?(:@role)
    end
    

    def initialize()
        super()
        jfields_tags_admin_UsersTag
    end
    

    def setRole(value)
        @role = value
    end
    java_overload :setRole, 1
    

    # throws JspTagException
    def doStartTag()
        begin
            self.setName("Admin Users View")
            self.setObjectFile("views.admin.user.UsersValidationView")
            if self.getCommand() != nil
                self.getPropertiesHashMap().put(::Org::Allbinary::Business::User::Role::UserRoleData::NAME, @role)
                if self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::VIEW) == 0
                else
                    raise StandardError.new("No Such View Command: " + (self.getCommand()).to_s)
                end
                return UsersTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
            end
            raise StandardError.new("Command Null")
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleData, "org/allbinary/business/user/role/UserRoleData" unless const_defined?(:UserRoleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end

end; end

