
_nl='\n'
_nls="\n*** "
_nlb="\n * "
_uhoh="\n!!! Uh-oh !!! "
_nlsp="\n    "
_nlt="\n~  "

los="${_nl}**********************************************************"
lot="${_nl}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
loh="${_nl}  ##########################################################${_nl}${_nl}Continuing set up...${_nl}"
_err="${_nl}***                    *** ERROR ***"
wrn="${_nl}#####################* W A R N I N G *#####################"
blank="***"
bl_a="  ##"

_s_title=" ___     ___   __       ___    ___
 \\\\\\\\   ////  //\\\\     ||||\\  /||||   _____   __ ____
  \\\\\\\\ ////  ///\\\\\\    ||||\\\//||||  ///|\\\\\\  ||//|\\\\\\
   \\\\\\'///  ////\\\\\\\\   ||||\\\\//|||| ////^\\\\\\\\ |||/^\\|||
    \\\|//  ////  \\\\\\\  |||| \\/ |||| |||   ||| |||   |||
    ////  //////\\\\\\\\\\\\ ||||    |||| \\\\\\\\.//// |||   |||
   ////  ////      \\\\\\\\||||    ||||  \\\\\\|///  |||   |||
   
              Yet Another Monitor (v: $_version)
            Copyright (c) 2013-2020 Al Caughey
            Copyright (c) 2023 Mo'men Mamdouh
            
                  All rights reserved.
               http://usage-monitoring.com"

_s_noconfig="${los}${_err}${_nls}\`config.file\` does not exist!!!${_nls}Please install.sh again to ensure that this file is created properly.${los}${_nl}"

_s_cannotgettime="${los}${_err}${_nls}Cannot get the date/time set properly?!?${_nls}Please check your date & time settings in the DD-WRT GUI${los}${_nl}"

_s_tostop="${_nl}To stop the script:${_nlb}run \`shutdown.sh\` [*RECOMMENDED*]${_nlsp}e.g., \`${d_baseDir}/shutdown.sh\`${_nlb}or delete the \`$_lockDir\` directory${_nlsp}e.g., \`rmdir $_lockDir\`"

_s_running="${los}${_err}${_nls}Unable to start...${_nls}An instance of \`yamon$_version.sh\` is already running!!!${_nls}You must stop that instance before starting a new one${los}${_nl}$_s_tostop${_nl}"

_s_notrunning="${los}${_nls}No need to stop... \`yamon$_version.sh\` is not running!${_nls}(The lock directory does not exist)${los}${_nl}"

_s_stopping="${los}${_nls}${_nls}Please wait for the message indicating that the script${_nls}has stopped... this may take up to $_updatefreq seconds${_nls}${los}${_nl}"

_s_stopped="${los}${_nls}As requested, \`yamon$_version.sh\` has been stopped.${los}${_nl}"

_s_started="${los}${_nls}\`yamon$_version.sh\` has been started${los}${_nl}$_s_tostop"
