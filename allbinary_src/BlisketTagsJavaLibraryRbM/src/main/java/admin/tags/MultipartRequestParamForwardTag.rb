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
require "tags/CustomTagSupport"

module ::Admin; module Tags

class MultipartRequestParamForwardTag < ::Tags::CustomTagSupport
    attr_accessor :page, :command, :paramVector

    def jfields_admin_tags_MultipartRequestParamForwardTag
        @page = nil unless instance_variable_defined?(:@page)
        @command = nil unless instance_variable_defined?(:@command)
        @paramVector = nil unless instance_variable_defined?(:@paramVector)
    end

    def initialize
        super()
        jfields_admin_tags_MultipartRequestParamForwardTag
    end
    

    def setPage(page)
        @page = page
    end
    java_overload :setPage, 1
    

    def setCommand(command)
        @command = command
    end
    java_overload :setCommand, 1
    

    def setParamVector(paramVector)
        @paramVector = paramVector
    end
    java_overload :setParamVector, 1
    

    # throws JspTagException
    def doStartTag()
        begin
            parentTag = self.getParent()
            ParentInventoryTagHelper.getInstance().isValid(self, parentTag)
            hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            hashMap.put(AbTagData::PARENT, parentTag)
            multipartRequestParamForwardHelper = ::Admin::Taghelpers::MultipartRequestParamForwardHelper.new(parentTag, @page, @command, @paramVector, @pageContext)
            multipartRequestParamForwardHelper.forward()
            return Tag::SKIP_BODY
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return Tag::SKIP_BODY
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return Tag::SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Admin; module Taghelpers; autoload :MultipartRequestParamForwardHelper, "admin/taghelpers/MultipartRequestParamForwardHelper" unless const_defined?(:MultipartRequestParamForwardHelper, false); end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Tags; autoload :HelperTag, "tags/HelperTag" unless const_defined?(:HelperTag, false); end
autoload :AbTagData, "admin/tags/AbTagData" unless const_defined?(:AbTagData, false)
autoload :ParentInventoryTagHelper, "admin/tags/ParentInventoryTagHelper" unless const_defined?(:ParentInventoryTagHelper, false)

end; end

