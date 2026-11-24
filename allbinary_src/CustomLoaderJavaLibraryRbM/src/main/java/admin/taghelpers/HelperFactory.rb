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
# package admin.taghelpers

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"

module ::Admin; module Taghelpers

class HelperFactory
    attr_accessor :logUtil

    def jfields_admin_taghelpers_HelperFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize()
        jfields_admin_taghelpers_HelperFactory
    end
    

    # throws LicensingException
    def self.getInstance_j5_1(abeClientInformation, factoryName, className, hashMap, httpServletRequest)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            params = Array.new(2, nil)
            classes = Array.new(2, nil)
            abeFactory = ::Org::Allbinary::Logic::System::Loader::AbeFactory.getInstance()
            classes[0] = hashMap.class
            classes[1] = abeFactory.getClass(abeClientInformation, "javax.servlet.http.HttpServletRequest")
            params[0] = hashMap
            params[1] = httpServletRequest
            anyType = abeFactory.getInstance(abeClientInformation, className, classes, params)
            return anyType
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            error = "Failed To Get Instance Args: HashMap=" + hashMap.to_s + " HttpServletRequest=" + (httpServletRequest).to_s
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                logUtil.put(error, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            raise e
        rescue StandardError => e
            error = "Failed To Get Instance"
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                logUtil.put(error, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            return nil
        end
    end
    

    # throws LicensingException
    def self.getInstance_j5_2(abeClientInformation, factoryName, className, hashMap, pageContext)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            params = Array.new(2, nil)
            classes = Array.new(2, nil)
            abeFactory = ::Org::Allbinary::Logic::System::Loader::AbeFactory.getInstance()
            classes[0] = hashMap.class
            classes[1] = abeFactory.getClass(abeClientInformation, "javax.servlet.jsp.PageContext")
            params[0] = hashMap
            params[1] = pageContext
            anyType = abeFactory.getInstance(abeClientInformation, className, classes, params)
            return anyType
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                error = "Failed To Get Instance Args: HashMap=" + hashMap.to_s + " PageContext=" + (pageContext).to_s
                logUtil.put(error, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            return nil
        end
    end
    

    # throws LicensingException
    def self.getInstance_j6(abeClientInformation, factoryName, className, hashMap, specialhashMap, pageContext)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            params = Array.new(3, nil)
            classes = Array.new(3, nil)
            abeFactory = ::Org::Allbinary::Logic::System::Loader::AbeFactory.getInstance()
            classes[0] = hashMap.class
            classes[1] = specialhashMap.class
            classes[2] = abeFactory.getClass(abeClientInformation, "javax.servlet.jsp.PageContext")
            params[0] = hashMap
            params[1] = specialhashMap
            params[2] = pageContext
            anyType = abeFactory.getInstance(abeClientInformation, className, classes, params)
            return anyType
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                error = "Failed To Get Instance Args: HashMap=" + hashMap.to_s + " PageContext=" + (pageContext).to_s
                logUtil.put(error, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            return nil
        end
    end
    

    # throws LicensingException
    def self.getInstance_j3(abeClientInformation, factoryName, className)
        logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        begin
            anyType = ::Org::Allbinary::Logic::System::Loader::AbeFactory.getInstance().getInstance(abeClientInformation, className)
            return anyType
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            return nil
        end
    end

    def self.getInstance(*java_overload_args)
        return getInstance_j5(*java_overload_args) if java_overload_args.length == 5
        return getInstance_j6(*java_overload_args) if java_overload_args.length == 6
        return getInstance_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def self.getInstance_j5(*java_overload_args)
        return getInstance_j5_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::System::Security::Licensing::AbeClientInformationInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::String)) && (java_overload_args[3].nil? || java_overload_args[3].is_a?(::Java::Util::HashMap)) && !(java_overload_args[4].is_a?(::Numeric) || java_overload_args[4] == true || java_overload_args[4] == false || java_overload_args[4].is_a?(::Array))
        return getInstance_j5_2(*java_overload_args)
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Loader; autoload :AbeFactory, "org/allbinary/logic/system/loader/AbeFactory" unless const_defined?(:AbeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

