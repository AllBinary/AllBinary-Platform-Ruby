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
# package org.allbinary.logic.communication.sql

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBasic"

module ::Org; module Allbinary; module Logic; module Communication; module Sql

class AbSqlTablePresentation < AbSqlBasic
    

    def initialize(databaseConnectionInfoInterface)
        super(databaseConnectionInfoInterface)
    end
end

module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DbConnectionInfo, "org/allbinary/business/init/db/DbConnectionInfo" unless const_defined?(:DbConnectionInfo, false); end; end; end; end; end

end; end; end; end; end

