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
# package org.allbinary.business.installer

require "java/lang/JavaOverload"
require "org/allbinary/business/installer/InitDb"

module ::Org; module Allbinary; module Business; module Installer

#Warning you must have sql root access
class DynamicInitDb < InitDb

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_installer_DynamicInitDb_1(*args)
        when 2 then jnew_org_allbinary_business_installer_DynamicInitDb_2(*args)
        else raise ArgumentError, "No constructor of DynamicInitDb takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_installer_DynamicInitDb_1(abeClientInformation)
        DynamicInitDb.superclass.instance_method(:initialize).bind(self).call()
        self.setHelper(::Org::Allbinary::Business::Init::Db::InitDbHelperFactory.getInstance(abeClientInformation))
    end
    

    def jnew_org_allbinary_business_installer_DynamicInitDb_2(abeClientInformation, databaseConnectionInfoInterface)
        DynamicInitDb.superclass.instance_method(:initialize).bind(self).call()
        self.setHelper(::Org::Allbinary::Business::Init::Db::InitDbHelperFactory.getInstance(abeClientInformation, databaseConnectionInfoInterface))
    end
end

module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DatabaseConnectionInfoInterface, "org/allbinary/business/init/db/DatabaseConnectionInfoInterface" unless const_defined?(:DatabaseConnectionInfoInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :InitDbHelperFactory, "org/allbinary/business/init/db/InitDbHelperFactory" unless const_defined?(:InitDbHelperFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end

end; end; end; end

