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

class InventoryTag < TableTag
    attr_accessor :storeName

    def initialize_fields
        @storeName = nil
    end
    

    def initialize()
        super()
        initialize_fields
        self.setTagHelperFactory(InventoryHelperFactory.new())
        self.setTagRequestHelperFactory(InventoryRequestHelperFactory.new())
    end
    

    def setStoreName(value)
        @storeName = value
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
                        self.getPropertiesHashMap().put(StoreFrontData.getInstance().NAME, @storeName)
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

require "admin/taghelpers/InventoryHelperFactory"
require "admin/taghelpers/InventoryRequestHelperFactory"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/logic/communication/http/request/AbResponseHandler"
require "admin/tags/AbTagData"
require "admin/tags/ParentInventoryTagHelper"

