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

class UserNameOrderHistoryTag < StoreValidationTransformTag
    attr_accessor :status

    def initialize_fields
        @status = nil
    end
    

    def initialize()
        super()
        initialize_fields
    end
    

    def setStatus(value)
        @status = value
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            self.setName("Range Order History View")
            self.setObjectFile("views.admin.orderhistory.UserNameOrderHistoryView")
            if self.getCommand() != nil
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

require "org/allbinary/logic/communication/http/request/AbResponseHandler"

