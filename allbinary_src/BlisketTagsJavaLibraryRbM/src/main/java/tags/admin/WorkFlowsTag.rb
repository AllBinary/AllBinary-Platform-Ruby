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

class WorkFlowsTag < ::Tags::StoreValidationTransformTag
    

    def initialize()
        super()
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.getCommand() != nil
                if self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::NEW) == 0
                    self.setName("New WorkFlow View")
                    self.setObjectFile("views.admin.workflow.NewView")
                elsif self.getCommand().compareTo(@commonStrings.INSERT) == 0
                    self.setName("Add Validation WorkFlow View")
                    self.setObjectFile("views.admin.workflow.AddValidationView")
                elsif self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::VIEW) == 0
                    self.setName("Validation WorkFlow View")
                    self.setObjectFile("views.admin.workflow.WorkflowsValidationView")
                elsif self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::EDIT) == 0
                    self.setName("Validation WorkFlow View")
                    self.setObjectFile("views.admin.workflow.EditValidationView")
                elsif self.getCommand().compareTo(@commonStrings.UPDATE) == 0
                    self.setName("Update Validation WorkFlow View")
                    self.setObjectFile("views.admin.workflow.UpdateValidationView")
                elsif self.getCommand().compareTo(@commonStrings.DELETE) == 0
                    self.setName("Delete Validation WorkFlow View")
                    self.setObjectFile("views.admin.workflow.DeleteValidationView")
                elsif self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::BACKUP) == 0
                    raise StandardError.new("View not implemented")
                elsif self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::RESTORE) == 0
                    raise StandardError.new("View not implemented")
                elsif self.getCommand().compareTo(@commonStrings.DROP) == 0
                    raise StandardError.new("View not implemented")
                elsif self.getCommand().compareTo(@commonStrings.CREATE) == 0
                    raise StandardError.new("View not implemented")
                else
                    raise StandardError.new("No Such View Command: " + (self.getCommand()).to_s)
                end
                return WorkFlowsTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
            end
            raise StandardError.new("Command Null")
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end

end; end

