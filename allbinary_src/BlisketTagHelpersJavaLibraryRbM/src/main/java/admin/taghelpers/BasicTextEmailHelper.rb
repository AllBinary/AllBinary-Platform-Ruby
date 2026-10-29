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
require "admin/taghelpers/TagHelper"

class BasicTextEmailHelper < TagHelper
    attr_accessor :abeClientInformation, :hashMap, :pageContext

    def initialize_fields
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @hashMap = nil
        @pageContext = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @pageContext = pageContext
        @hashMap = hashMap
    end
    

    # throws Exception
    def send()
        adminEmailSubject = @hashMap.get("Subject")
        adminEmailTextBody = @hashMap.get("Body")
        adminBasicEmailInfo = AdminEmailInfo.new(adminEmailSubject, adminEmailTextBody)
        adminEmailInfo = EmailInfo.new(adminBasicEmailInfo)
        adminUserEmailEventHandler = AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, UserEmailEventNameData::INSTALLER)
        adminUserEmailEventHandler.receiveEmailInfo(UserEmailEventNameData::INSTALLER, adminEmailInfo)
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
require "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"
require "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons"
require "org/allbinary/logic/communication/smtp/info/AdminEmailInfo"
require "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"
require "org/allbinary/logic/communication/smtp/info/EmailInfo"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"

