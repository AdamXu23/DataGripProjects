UPDATE Port_Table SET ID = @ID , " +
                        "EQ = @EQ , " +
                        "Name = @Name , " +
                        "IP = @IP , " +
                        "Port = @Port , " +
                        "O2_Enable = @O2_Enable , " +
                        "RH_Enable = @RH_Enable , " +
                        "color_A = @color_A , " +
                        "color_R = @color_R , " +
                        "color_G = @color_G , " +
                        "color_B = @color_B , " +
                        "Port_Enable = @Port_Enable " +
                        "WHERE ID = @_ID OR (EQ = @_EQ AND Name = @_Name);";