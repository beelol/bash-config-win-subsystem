CR_BUILD_DIR=/mnt/c/unity-projects/crbuilds
APP_NAME=carbonreset

function bcrw {
    if [ -d "$CR_BUILD_DIR" ]; then rm -Rf $CR_BUILD_DIR; fi
    mkdir -p $CR_BUILD_DIR
    /mnt/c/Program\ Files/Unity/Hub/Editor/$CARBON_RESET_UNITY_VERSION/Editor/Unity.exe -batchmode -serial SB-PPED-6UXY-UZCQ-7TAP-SMQS -username bilalitani1@gmail.com -buildWindows64Player $CR_BUILD_DIR/$APP_NAME.exe -logfile crbuildlog.txt -quit
}

function rcrb {
   $CR_BUILD_DIR/$APP_NAME.exe
}

function rbcr {
    bcrw
    rcrb
}

# alias bnrc="/mnt/c/Program\ Files/Unity/Hub/Editor/$CARBON_RESET_UNITY_VERSION/Editor/Unity.exe -buildWindows64Player $CARBON_RESET_PROJECT_PATH"
