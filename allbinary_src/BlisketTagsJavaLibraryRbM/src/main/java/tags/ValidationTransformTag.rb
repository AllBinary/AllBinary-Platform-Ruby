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
require "java/lang/JavaClass"
# require "java/lang/reflect/Method"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/JspTagException"
require "tags/TransformTag"

module ::Tags

class ValidationTransformTag < TransformTag
    attr_accessor :logUtil, :xslFile, :logic

    def jfields_tags_ValidationTransformTag
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @xslFile = nil unless instance_variable_defined?(:@xslFile)
        @logic = nil unless instance_variable_defined?(:@logic)
    end
    

    def initialize()
        super(::Taghelpers::ValidatedViewHelperFactory.new())
        jfields_tags_ValidationTransformTag
        @logic = true
    end
    

    def setXsl(value)
        @xslFile = value
        self.setTemplateFile(@xslFile)
    end
    java_overload :setXsl, 1
    

    def setLogic(logic)
        @logic = logic
    end
    java_overload :setLogic, 1
    

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
    

    # throws Exception
    def validationInfo()
        begin
            addressHelperClass = self.getHelper().class
            method = addressHelperClass.getMethod("validationInfo", nil)
            result = method.invoke(self.getHelper(), nil)
            return result
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "validationInfo()", e)
            end
            raise e
        end
    end
    java_overload :validationInfo, 0
    

    # throws JspTagException
    def doStartTag()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                request = @pageContext.getRequest()
                stringBuffer.append("ValidationViewTag Start For: ")
                stringBuffer.append(self.getName())
                stringBuffer.append("\nView FIle: ")
                stringBuffer.append(self.getObjectFile())
                stringBuffer.append("\nRequest URI: ")
                stringBuffer.append(request.getRequestURI())
                @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
            end
            self.setHelper()
            if self.isValid()
                ValidationTransformTag.superclass.java_super_method(:doStartTag, 0).bind(self).call()
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("View File: ")
                    stringBuffer.append(self.getObjectFile())
                    stringBuffer.append("\nLogic includes body if true=")
                    stringBuffer.appendboolean(@logic)
                    @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
                end
                if @logic
                    return EVAL_BODY_INCLUDE
                else
                    return SKIP_BODY
                end
            else
                @pageContext.getOut().print(self.validationInfo())
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("View File: ")
                    stringBuffer.append(self.getObjectFile())
                    stringBuffer.append("\nisValid()=false")
                    stringBuffer.append("\nLogic skips body if true=")
                    stringBuffer.appendboolean(@logic)
                    @logUtil.putF(stringBuffer.to_s, self, @tagStrings.DO_START_TAG)
                end
                if @logic
                    return SKIP_BODY
                else
                    return EVAL_BODY_INCLUDE
                end
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
    

    def doEndTag()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().JSPTAG)
            @logUtil.putF("Tag Ended", self, "doEndTag")
        end
        @logic = true
        return ValidationTransformTag.superclass.java_super_method(:doEndTag, 0).bind(self).call()
    end
    java_overload :doEndTag, 0
end

module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbResponseHandler, "org/allbinary/logic/communication/http/request/AbResponseHandler" unless const_defined?(:AbResponseHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Taghelpers; autoload :ValidatedViewHelperFactory, "taghelpers/ValidatedViewHelperFactory" unless const_defined?(:ValidatedViewHelperFactory, false); end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end

