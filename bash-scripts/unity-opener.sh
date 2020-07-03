CARBON_RESET_PROJECT_PATH_WINDOWS="C:\unity-projects\skrpg"

function u {
    path=$1

    # Use & to avoid waiting for Unity to stop in same WSL terminal
    /mnt/c/Program\ Files/Unity/Hub/Editor/$CARBON_RESET_UNITY_VERSION/Editor/Unity.exe -manualLicenseFile ~/Unity_v2017.x.ulf -projectPath ${path} &
}

function ucr {
    u $CARBON_RESET_PROJECT_PATH_WINDOWS
}