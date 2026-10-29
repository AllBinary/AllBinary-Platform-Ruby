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
# require "javax/servlet/jsp/tagext/Tag"
require "admin/tags/TableTag"

class DownloadItemsTag < TableTag
    

    def initialize()
        super()
        self.setTagHelperFactory(DownloadItemsHelperFactory.new())
        self.setTagRequestHelperFactory(DownloadItemsRequestHelperFactory.new())
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand() != nil
                    if self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.BACKUP) != 0 && self.getCommand().compareTo(org.allbinary.globals.GLOBALS2.RESTORE) != 0 && self.getCommand().compareTo(@commonStrings.CREATE) != 0 && self.getCommand().compareTo(@commonStrings.DROP) != 0
                        parentTag = self.getParent()
                        ParentInventoryTagHelper.getInstance().isValid(self, parentTag)
                        self.getPropertiesHashMap().put(AbTagData::PARENT, parentTag)
                    end
                    return super()
                end
            end
            return SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
end

require "admin/taghelpers/DownloadItemsHelperFactory"
require "admin/taghelpers/DownloadItemsRequestHelperFactory"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "admin/tags/AbTagData"
require "admin/tags/ParentInventoryTagHelper"

