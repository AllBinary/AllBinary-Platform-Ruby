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
# package tags.admin.inventory

# require "javax/servlet/jsp/JspTagException"
require "tags/StoreValidationTransformTag"

class DownloadItemTag < StoreValidationTransformTag
    

    def initialize()
        super()
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.VIEW) == 0
                    raise StandardError.new("No Such View Command: " + (self.getCommand()).to_s)
                elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                    self.setName("Add Inventory Item Validation View")
                    self.setObjectFile("views.admin.inventory.download.AddFileValidationView")
                elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                    self.setName("Delete Inventory Item Validation View")
                    self.setObjectFile("views.admin.inventory.download.DeleteFileValidationView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.EDIT) == 0
                    self.setName("Edit Inventory Item Validation View")
                    self.setObjectFile("views.admin.inventory.download.EditValidationView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.NEW) == 0
                    self.setName("New Inventory Item Validation View")
                    self.setObjectFile("views.admin.inventory.download.NewValidationView")
                elsif self.getCommand().compareTo(@commonStrings.UPDATE) == 0
                    self.setName("Update Inventory Item Validation View")
                    self.setObjectFile("views.admin.inventory.download.UpdateFileValidationView")
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

