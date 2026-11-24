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

require "java/lang/JavaOverload"
# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/TagHelper"

module ::Admin; module Taghelpers

class BasicTextEmailHelper < TagHelper
    attr_accessor :abeClientInformation, :hashMap, :pageContext

    def jfields_admin_taghelpers_BasicTextEmailHelper
        @abeClientInformation = ::Org::Allbinary::Logic::System::Security::Licensing::ServiceClientInformationInterfaceFactory.getInstance()
        @hashMap = nil unless instance_variable_defined?(:@hashMap)
        @pageContext = nil unless instance_variable_defined?(:@pageContext)
    end
    

    def initialize(hashMap, pageContext)
        super()
        jfields_admin_taghelpers_BasicTextEmailHelper
        @pageContext = pageContext
        @hashMap = hashMap
    end
    

    # throws Exception
    def send()
        adminEmailSubject = @hashMap.get("Subject")
        adminEmailTextBody = @hashMap.get("Body")
        adminBasicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::AdminEmailInfo.new(adminEmailSubject, adminEmailTextBody)
        adminEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(adminBasicEmailInfo)
        adminUserEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, ::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::INSTALLER)
        adminUserEmailEventHandler.receiveEmailInfo(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::INSTALLER, adminEmailInfo)
    end
    java_overload :send, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData" unless const_defined?(:UserEmailEventNameData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; autoload :UserEmailEventHandler, "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler" unless const_defined?(:UserEmailEventHandler, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :AdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons" unless const_defined?(:AdminUserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :AdminEmailInfo, "org/allbinary/logic/communication/smtp/info/AdminEmailInfo" unless const_defined?(:AdminEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :BasicEmailInfo, "org/allbinary/logic/communication/smtp/info/BasicEmailInfo" unless const_defined?(:BasicEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo" unless const_defined?(:EmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory" unless const_defined?(:ServiceClientInformationInterfaceFactory, false); end; end; end; end; end; end

end; end

