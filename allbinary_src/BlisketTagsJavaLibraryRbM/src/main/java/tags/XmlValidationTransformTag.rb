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
# package tags

require "java/lang/JavaOverload"
# require "java/lang/reflect/Method"
# require "javax/servlet/jsp/JspTagException"
require "tags/TransformTag"

module ::Tags

class XmlValidationTransformTag < TransformTag
    attr_accessor :logUtil

    def jfields_tags_XmlValidationTransformTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        super()
        jfields_tags_XmlValidationTransformTag
    end
    

    # throws Exception
    def isValid()
        begin
            helperClass = self.getHelper().class
            method = helperClass.getMethod(@commonStrings.IS_VALID, nil)
            result = method.invoke(self.getHelper(), nil)
            return result
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.IS_VALID, e)
            end
            raise e
        end
    end
    java_overload :isValid, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            self.setHelper()
            if self.isValid()
                XmlValidationTransformTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
                return @EVAL_BODY_INCLUDE
            else
                XmlValidationTransformTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
                return @SKIP_BODY
            end
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagLicensingRedirect(@pageContext, e)
            return SKIP_BODY
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Http::Request::AbResponseHandler.sendJspTagRedirect(@pageContext, e)
            return SKIP_BODY
        end
    end
    java_overload :doStartTag, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end

