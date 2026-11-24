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
# require "javax/servlet/jsp/tagext/Tag"
require "admin/tags/TableTag"

module ::Admin; module Tags

class DownloadItemsTag < TableTag
    

    def initialize()
        super()
        self.setTagHelperFactory(::Admin::Taghelpers::DownloadItemsHelperFactory.new())
        self.setTagRequestHelperFactory(::Admin::Taghelpers::DownloadItemsRequestHelperFactory.new())
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            if self.isEnabled()
                if self.getCommand() != nil
                    if self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::BACKUP) != 0 && self.getCommand().compareTo(::Org::Allbinary::Globals::GLOBALS2::RESTORE) != 0 && self.getCommand().compareTo(@commonStrings.CREATE) != 0 && self.getCommand().compareTo(@commonStrings.DROP) != 0
                        parentTag = self.getParent()
                        ParentInventoryTagHelper.getInstance().isValid(self, parentTag)
                        self.getPropertiesHashMap().put(AbTagData::PARENT, parentTag)
                    end
                    return DownloadItemsTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
                end
            end
            return SKIP_BODY
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Admin; module Taghelpers; autoload :DownloadItemsHelperFactory, "admin/taghelpers/DownloadItemsHelperFactory" unless const_defined?(:DownloadItemsHelperFactory, false); end; end
module ::Admin; module Taghelpers; autoload :DownloadItemsRequestHelperFactory, "admin/taghelpers/DownloadItemsRequestHelperFactory" unless const_defined?(:DownloadItemsRequestHelperFactory, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
autoload :AbTagData, "admin/tags/AbTagData" unless const_defined?(:AbTagData, false)
autoload :ParentInventoryTagHelper, "admin/tags/ParentInventoryTagHelper" unless const_defined?(:ParentInventoryTagHelper, false)

end; end

