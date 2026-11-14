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
require "tags/CustomTagSupport"

class MultipartRequestParamForwardTag < CustomTagSupport
    attr_accessor :page, :command, :paramVector

    def initialize_fields
        @page = nil
        @command = nil
        @paramVector = nil
    end

    def initialize
        super()
        initialize_fields
    end
    

    def setPage(page)
        @page = page
    end
    

    def setCommand(command)
        @command = command
    end
    

    def setParamVector(paramVector)
        @paramVector = paramVector
    end
    

    # throws JspTagException
    def doStartTag()
        begin
            parentTag = self.getParent()
            ParentInventoryTagHelper.getInstance().isValid(self, parentTag)
            hashMap = StdUtil.getInstance().createHashMap()
            hashMap.put(AbTagData::PARENT, parentTag)
            multipartRequestParamForwardHelper = MultipartRequestParamForwardHelper.new(parentTag, @page, @command, @paramVector, @pageContext)
            multipartRequestParamForwardHelper.forward()
            return Tag::SKIP_BODY
        rescue LicensingException => e
            AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return Tag::SKIP_BODY
        rescue StandardError => e
            AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return Tag::SKIP_BODY
        end
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :MultipartRequestParamForwardHelper, "admin/taghelpers/MultipartRequestParamForwardHelper"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler"
autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException"
autoload :HelperTag, "tags/HelperTag"
autoload :AbTagData, "admin/tags/AbTagData"
autoload :ParentInventoryTagHelper, "admin/tags/ParentInventoryTagHelper"

