#!/bin/sh

install_resource()
{
  case $1 in
    *.storyboard)
      echo "ibtool --errors --warnings --notices --output-format human-readable-text --compile ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .storyboard`.storyboardc ${PODS_ROOT}/$1 --sdk ${SDKROOT}"
      ibtool --errors --warnings --notices --output-format human-readable-text --compile "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .storyboard`.storyboardc" "${PODS_ROOT}/$1" --sdk "${SDKROOT}"
      ;;
    *.xib)
        echo "ibtool --errors --warnings --notices --output-format human-readable-text --compile ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .xib`.nib ${PODS_ROOT}/$1 --sdk ${SDKROOT}"
      ibtool --errors --warnings --notices --output-format human-readable-text --compile "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .xib`.nib" "${PODS_ROOT}/$1" --sdk "${SDKROOT}"
      ;;
    *.framework)
      echo "rsync -rp ${PODS_ROOT}/$1 ${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
      rsync -rp "${PODS_ROOT}/$1" "${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
      ;;
    *)
      echo "cp -R ${PODS_ROOT}/$1 ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"
      cp -R "${PODS_ROOT}/$1" "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"
      ;;
  esac
}
install_resource 'ABCalendarPicker/ABCalendarPicker/GradientBar.png'
install_resource 'ABCalendarPicker/ABCalendarPicker/TileDisabledSelected.png'
install_resource 'ABCalendarPicker/ABCalendarPicker/TileNormal.png'
install_resource 'ABCalendarPicker/ABCalendarPicker/TilePattern.png'
install_resource 'ABCalendarPicker/ABCalendarPicker/TileSelected.png'
install_resource 'ABCalendarPicker/ABCalendarPicker/TileToday.png'
install_resource 'ABCalendarPicker/ABCalendarPicker/TileTodaySelected.png'
install_resource 'CKCalendar/Source/resources/left_arrow.png'
install_resource 'CKCalendar/Source/resources/left_arrow@2x.png'
install_resource 'CKCalendar/Source/resources/right_arrow.png'
install_resource 'CKCalendar/Source/resources/right_arrow@2x.png'
install_resource 'MFSideMenu/MFSideMenuDemo/MFSideMenu/back-arrow.png'
install_resource 'MFSideMenu/MFSideMenuDemo/MFSideMenu/back-arrow@2x.png'
install_resource 'MFSideMenu/MFSideMenuDemo/MFSideMenu/menu-icon.png'
install_resource 'MFSideMenu/MFSideMenuDemo/MFSideMenu/menu-icon@2x.png'
install_resource 'MKHorizMenu/MKHorizMenu/ButtonSelected.png'
install_resource 'MKHorizMenu/MKHorizMenu/MenuBar.png'
install_resource 'MKHorizMenu/MKHorizMenu/MenuBar@2x.png'
install_resource 'SVWebViewController/SVWebViewController/SVWebViewController.bundle'
