!include NTProfiles.nsh
 
Section Example
 
    ## Display the root path for all local profiles
        ${ProfilesPath} $0
        MessageBox MB_OK `Path for Local Profiles:$\n"$0"`
 
    ## Display the All Users profile path
        ${ProfilePathAllUsers} $0
        MessageBox MB_OK `All Users profile path:$\n"$0"`
 
    ## Display the Default User profile path
        ${ProfilePathDefaultUser} $0
        MessageBox MB_OK `Default User profile path:$\n"$0"`
 
    ## Display the profile path for a SID
        ${ProfilePathFromSID} $0 "S-1-5-21-899922695-4071275077-1934628579-500"
        MessageBox MB_OK `SID's profile path:$\n"$0"`
 
    ## Display profile path for the Administrator account
        ${ProfilePathFromUserName} $0 Administrator
        MessageBox MB_OK `Administrator's profile path:$\n"$0"`
 
    ## List all Profiles
        ${EnumProfilePaths} EnumMyProfiles
 
    ## List all Profiles except system profiles
        !define NTProfilePaths::IgnoreSystem
        ${EnumProfilePaths} EnumMyProfiles
 
    ## List all Profiles except local Administrator account
        !define NTProfilePaths::IgnoreAdministrator
        ${EnumProfilePaths} EnumMyProfiles
 
    ## List all Profiles except system profiles & local Administrator account
        !define NTProfilePaths::IgnoreLocal
        ${EnumProfilePaths} EnumMyProfiles
 
SectionEnd
 
Function EnumMyProfiles 
    ## Get the profile path from the stack
        Pop $0
 
    ## Display Results and ask if we want to continue the enumeration.
        MessageBox MB_YESNO|MB_ICONQUESTION `Enumerated profile path is:$\n"$0"$\n$\nContinue Enumeration?` IDNO Stop 
 
    ## Continue Enumeration
        Push ""
        Return
 
    ## Stop Enumeration
        Stop:
        Push "~" # Any value other than an empty string will abort the enumeration
FunctionEnd