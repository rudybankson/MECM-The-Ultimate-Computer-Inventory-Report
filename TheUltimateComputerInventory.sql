SELECT        dbo.v_GS_COMPUTER_SYSTEM.Name0 AS [PC Name], dbo.v_R_User.Full_User_Name0 AS [User], dbo.v_R_User.Mail0 AS Email, dbo.v_GS_COMPUTER_SYSTEM.Model0 AS Model, dbo.v_GS_PC_BIOS.Name0 AS [BIOS Ver], 
                         dbo.v_GS_PC_BIOS.ReleaseDate0 AS [BIOS Released], dbo.v_GS_PC_BIOS.SerialNumber0 AS Serial, dbo.v_GS_OFFICE365PROPLUSCONFIGURATIONS.VersionToReport0 AS [M365 Version], 
                         dbo.v_GS_OPERATING_SYSTEM.Caption0 AS OS, dbo.v_GS_OPERATING_SYSTEM.Version0 AS [OS Version], dbo.v_GS_OPERATING_SYSTEM.InstallDate0 AS [OS Installed or Upgraded], 
                         dbo.v_GS_DEFAULT_BROWSER.BrowserProgId0 AS [Default Browser]
FROM            dbo.v_GS_SYSTEM_CONSOLE_USAGE_MAXGROUP INNER JOIN
                         dbo.v_GS_COMPUTER_SYSTEM ON dbo.v_GS_SYSTEM_CONSOLE_USAGE_MAXGROUP.ResourceID = dbo.v_GS_COMPUTER_SYSTEM.ResourceID INNER JOIN
                         dbo.v_R_User ON dbo.v_GS_SYSTEM_CONSOLE_USAGE_MAXGROUP.TopConsoleUser0 = dbo.v_R_User.Unique_User_Name0 INNER JOIN
                         dbo.v_GS_OFFICE365PROPLUSCONFIGURATIONS ON dbo.v_GS_SYSTEM_CONSOLE_USAGE_MAXGROUP.ResourceID = dbo.v_GS_OFFICE365PROPLUSCONFIGURATIONS.ResourceID INNER JOIN
                         dbo.v_GS_OPERATING_SYSTEM ON dbo.v_GS_SYSTEM_CONSOLE_USAGE_MAXGROUP.ResourceID = dbo.v_GS_OPERATING_SYSTEM.ResourceID INNER JOIN
                         dbo.v_GS_PC_BIOS ON dbo.v_GS_SYSTEM_CONSOLE_USAGE_MAXGROUP.ResourceID = dbo.v_GS_PC_BIOS.ResourceID INNER JOIN
                         dbo.v_GS_DEFAULT_BROWSER ON dbo.v_GS_SYSTEM_CONSOLE_USAGE_MAXGROUP.ResourceID = dbo.v_GS_DEFAULT_BROWSER.ResourceID
