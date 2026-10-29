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

class WorkFlowsTag < StoreValidationTransformTag
    

    def initialize()
        super()
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.NEW) == 0
                    self.setName("New WorkFlow View")
                    self.setObjectFile("views.admin.workflow.NewView")
                elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                    self.setName("Add Validation WorkFlow View")
                    self.setObjectFile("views.admin.workflow.AddValidationView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.VIEW) == 0
                    self.setName("Validation WorkFlow View")
                    self.setObjectFile("views.admin.workflow.WorkflowsValidationView")
                elsif self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.EDIT) == 0
                    self.setName("Validation WorkFlow View")
                    self.setObjectFile("views.admin.workflow.EditValidationView")
                elsif self.getCommand().compareTo(@commonStrings.UPDATE) == 0
                    self.setName("Update Validation WorkFlow View")
                    self.setObjectFile("views.admin.workflow.UpdateValidationView")
                elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                    self.setName("Delete Validation WorkFlow View")
                    self.setObjectFile("views.admin.workflow.DeleteValidationView")
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

require "org/allbinary/logic/communication/http/request/AbResponseHandler"

