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
# package tags.admin.storefront

# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

class StoreFrontTag < StoreValidationTransformTag
    

    def initialize()
        super()
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(@commonStrings.INSERT) == 0
                    self.setName("Add Validation StoreFront View")
                    self.setObjectFile("views.admin.storefront.AddValidationStoreFrontView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.VIEW) == 0
                    raise StandardError.new("View not implemented")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.EDIT) == 0
                    self.setName("Edit Validation StoreFront View")
                    self.setObjectFile("views.admin.storefront.EditValidationStoreFrontView")
                elsif self.getCommand().compareTo(@commonStrings.UPDATE) == 0
                    self.setName("Update Validation StoreFront View")
                    self.setObjectFile("views.admin.storefront.UpdateValidationStoreFrontView")
                elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                    self.setName("Delete Validation StoreFront View")
                    self.setObjectFile("views.admin.storefront.DeleteValidationStoreFrontView")
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
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "org/allbinary/logic/system/security/licensing/LicensingException"

