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
# package org.allbinary.logic.control.workflow

# require "javax/servlet/ServletConfig"
# require "javax/servlet/ServletContext"
# require "javax/servlet/ServletRequest"
# require "javax/servlet/ServletResponse"
# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"

module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow

class RequestWorkFlowFactory
    

    def initialize()
    end
    

    # throws Exception, LicensingException
    def self.getInstance_j4(request, response, servletConfig, servletContext)
        httpRequest = request
        requestCommand = httpRequest.getPathInfo()
        index = (requestCommand.index(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR) || -1)
        storeName = requestCommand[0...index]
        requestName = requestCommand[index...requestCommand.length]
        return ::Org::Allbinary::DataPackage::Tables::Workflow::WorkFlowEntityFactory.getInstance().create2().get(requestName, storeName)
    end
    

    # throws Exception, LicensingException
    def self.getInstance_j2(hashMap, pageContext)
        workFlowName = pageContext.getRequest().getParameter(WorkFlowData.getInstance().NAME)
        weblisketSession = ::Org::Allbinary::Logic::Communication::Http::Request::Session::WeblisketSession.new(hashMap, pageContext)
        storeName = weblisketSession.getStoreName()
        return ::Org::Allbinary::DataPackage::Tables::Workflow::WorkFlowEntityFactory.getInstance().create2().get(workFlowName, storeName)
    end

    def self.getInstance(*java_overload_args)
        return getInstance_j4(*java_overload_args) if java_overload_args.length == 4
        return getInstance_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Workflow; autoload :WorkFlowEntityFactory, "org/allbinary/data/tables/workflow/WorkFlowEntityFactory" unless const_defined?(:WorkFlowEntityFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; module Session; autoload :WeblisketSession, "org/allbinary/logic/communication/http/request/session/WeblisketSession" unless const_defined?(:WeblisketSession, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
autoload :WorkFlowData, "org/allbinary/logic/control/workflow/WorkFlowData" unless const_defined?(:WorkFlowData, false)
autoload :WorkFlowInterface, "org/allbinary/logic/control/workflow/WorkFlowInterface" unless const_defined?(:WorkFlowInterface, false)

end; end; end; end; end

