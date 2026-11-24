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

# require "javax/servlet/jsp/PageContext"

module ::Admin; module Taghelpers

class CustomLoaderHelper
    attr_accessor :logUtil, :commonStrings

    def jfields_admin_taghelpers_CustomLoaderHelper
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_admin_taghelpers_CustomLoaderHelper_2(*args)
        when 0 then jnew_admin_taghelpers_CustomLoaderHelper_0(*args)
        else raise ArgumentError, "No constructor of CustomLoaderHelper takes #{args.length} arguments"
        end
    end
    

    def jnew_admin_taghelpers_CustomLoaderHelper_2(hashMap, pageContext)
        jfields_admin_taghelpers_CustomLoaderHelper
    end
    

    def jnew_admin_taghelpers_CustomLoaderHelper_0()
        jfields_admin_taghelpers_CustomLoaderHelper
    end
    

    # throws Exception
    def getWebappPath()
        begin
            return ::Org::Allbinary::Globals::URLGLOBALS.getWebappPath()
        rescue StandardError => e
            return nil
        end
    end
    

    # throws Exception
    def setWebappPath(path)
        begin
            urlGlobals = ::Org::Allbinary::Globals::AppUrlGlobals.new()
            urlGlobals.setWebappPath(path)
            ::Org::Allbinary::Globals::URLGLOBALS.init(urlGlobals)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "setWebappPath()", e)
            end
        end
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Globals; autoload :AppUrlGlobals, "org/allbinary/globals/AppUrlGlobals" unless const_defined?(:AppUrlGlobals, false); end; end; end
module ::Org; module Allbinary; module Globals; autoload :URLGLOBALS, "org/allbinary/globals/URLGLOBALS" unless const_defined?(:URLGLOBALS, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end

