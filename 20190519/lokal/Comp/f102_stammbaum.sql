--------------------------------------------------------
--  Datei erstellt -Sonntag-Mai-19-2019   
--------------------------------------------------------
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.1.00.08'
,p_default_workspace_id=>4780819566595722
,p_default_application_id=>102
,p_default_owner=>'COMPANY'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 102 - Stammbaum
--
-- Application Export:
--   Application:     102
--   Name:            Stammbaum
--   Date and Time:   20:53 Sonntag Mai 19, 2019
--   Exported By:     COMPANY
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.1.1.00.08
--   Instance ID:     211678604897970
--

-- Application Statistics:
--   Pages:                     19
--     Items:                   82
--     Validations:             16
--     Processes:               30
--     Regions:                 54
--     Buttons:                 58
--     Dynamic Actions:         21
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 8
--       Breadcrumbs:            1
--         Entries:              1
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                19
--         Region:              37
--         Label:                6
--         List:                19
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:              11
--         Report:              11
--       Shortcuts:              1
--     Globalization:
--     Reports:
--   Supporting Objects:  Excluded

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,102)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'STAMMBAUM')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Stammbaum')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_103')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'A8FC7E96CBAF6166900235B1933864B6368866EB32738A4A1316EF51972EB34B'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(18650968647540685)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:Stammbaum'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20190102120105'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
null;
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15349438457922419)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15349524650922419)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15349770711922420)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(18639878415540658)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(20889377686568835)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(20889583731568835)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(18650855610540684)
,p_icon_sequence=>200
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(18652359455540695)
,p_tab_set=>'TS1'
,p_tab_sequence=>110
,p_tab_name=>'T_HOME'
,p_tab_text=>'Home'
,p_tab_step=>110
,p_tab_also_current_for_pages=>'2,110'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(18663575925310176)
,p_tab_set=>'TS1'
,p_tab_sequence=>120
,p_tab_name=>'T_PERSON'
,p_tab_text=>'Person'
,p_tab_step=>120
,p_tab_also_current_for_pages=>'120,123'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(18663768808313508)
,p_tab_set=>'TS1'
,p_tab_sequence=>130
,p_tab_name=>'T_ELTERN'
,p_tab_text=>'Eltern'
,p_tab_step=>130
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(18663959750317700)
,p_tab_set=>'TS1'
,p_tab_sequence=>140
,p_tab_name=>'T_LEBENSPARTNERSCHAFTEN'
,p_tab_text=>'Lebenspartnerschaften'
,p_tab_step=>140
,p_tab_also_current_for_pages=>'140'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(18664184970321180)
,p_tab_set=>'TS1'
,p_tab_sequence=>150
,p_tab_name=>'T_GESCHWISTER'
,p_tab_text=>'Geschwister'
,p_tab_step=>150
,p_tab_also_current_for_pages=>'150'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(18664381519322826)
,p_tab_set=>'TS1'
,p_tab_sequence=>160
,p_tab_name=>'T_PERSONENSUCHE'
,p_tab_text=>'Personensuche'
,p_tab_step=>110
,p_tab_parent_tabset=>'TS1'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(18664578500324207)
,p_tab_set=>'TS1'
,p_tab_sequence=>170
,p_tab_name=>'T_STAMMDATEN'
,p_tab_text=>'Stammdaten'
,p_tab_step=>170
,p_tab_also_current_for_pages=>'170,171,172,173,174,175'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(18664773324326551)
,p_tab_set=>'TS1'
,p_tab_sequence=>180
,p_tab_name=>'T_ADMINISTRATION'
,p_tab_text=>'Administration'
,p_tab_step=>110
);
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(18652069233540693)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(18652473892540696)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18639987169540659)
,p_theme_id=>26
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uLogin">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uLoginContainer">',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uSingleAlertMessage red" id="uNotificationMessage">',
'	<p>#MESSAGE#</p>',
'	<a href="javascript:void(0)" class="closeMessage" onclick="$x_Remove(''uNotificationMessage'')"></a>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18640076692540661)
,p_theme_id=>26
,p_name=>'Minimal Page'
,p_internal_name=>'MINIMAL_PAGE'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer" class="minimalPage">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#TITLE#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading uErrorRegion">',
'  <div class="uRegionContent">',
'    <p><strong>#MESSAGE#</strong></p>',
'    <p>#ADDITIONAL_INFO#</p>',
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'  </div>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>',
'    </span>',
'  </div>',
'</section>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18640177412540662)
,p_theme_id=>26
,p_name=>'No Tabs - Left Sidebar'
,p_internal_name=>'NO_TABS_LEFT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18640283046540662)
,p_theme_id=>26
,p_name=>'No Tabs - Left and Right Sidebar'
,p_internal_name=>'NO_TABS_LEFT_AND_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18640365408540662)
,p_theme_id=>26
,p_name=>'No Tabs - No Sidebar'
,p_internal_name=>'NO_TABS_NO_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading uErrorRegion">',
'  <div class="uRegionContent">',
'    <p><strong>#MESSAGE#</strong></p>',
'    <p>#ADDITIONAL_INFO#</p>',
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'  </div>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>',
'    </span>',
'  </div>',
'</section>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18640457168540662)
,p_theme_id=>26
,p_name=>'No Tabs - Right Sidebar'
,p_internal_name=>'NO_TABS_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18640566239540662)
,p_theme_id=>26
,p_name=>'One Level Tabs - Content Frame'
,p_internal_name=>'ONE_LEVEL_TABS_CONTENT_FRAME'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<section class="uRegion uRegionNoPadding clearfix uRegionFrame">',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'		#REGION_POSITION_02#',
'    </span>',
'  </div>',
'  <div class="uFrameContent">',
'	<div class="uFrameMain">',
'		#BODY#',
'	</div>',
'	<div class="uFrameSide">',
'		#REGION_POSITION_03#',
'	</div>',
'  </div>',
'</section>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>9
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18640665331540662)
,p_theme_id=>26
,p_name=>'One Level Tabs - Left Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18640762900540662)
,p_theme_id=>26
,p_name=>'One Level Tabs - Left and Right Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_AND_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18640877388540662)
,p_theme_id=>26
,p_name=>'One Level Tabs - No Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_NO_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0;">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'class="regionColumns"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18640959572540663)
,p_theme_id=>26
,p_name=>'One Level Tabs - Right Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18641058362540663)
,p_theme_id=>26
,p_name=>'One Level Tabs - Search Filter Bar'
,p_internal_name=>'ONE_LEVEL_TABS_SEARCH_FILTER_BAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="body" class="uSearchContainer">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary=""  width="100%">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-sidebar" style="vertical-align:top">',
'          <div class="ebaSearchFilterBar">#REGION_POSITION_02#</div>',
'        </td>',
'        <td class="tbl-main">#BODY##REGION_POSITION_03#</td>',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>9
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18641179777540663)
,p_theme_id=>26
,p_name=>'One Level Tabs - Wizard Page'
,p_internal_name=>'ONE_LEVEL_TABS_WIZARD_PAGE'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'',
'<div class="cWizard">',
'	<div class="cWizardHeader">',
'		#REGION_POSITION_02#',
'	</div>',
'    <div class="cWizardContentContainer">',
'    <div class="cWizardContent">',
'        #BODY##REGION_POSITION_03#',
'    </div>',
'    <div class="clear"></div>',
'</div>',
'',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18641272351540663)
,p_theme_id=>26
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uPopup">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'  #REGION_POSITION_01#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_04#',
'  #REGION_POSITION_05#',
'  #REGION_POSITION_06#',
'  #REGION_POSITION_07#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18641363780540663)
,p_theme_id=>26
,p_name=>'Printer Friendly'
,p_internal_name=>'PRINTER_FRIENDLY'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD# id="uPrinterFriendly">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18641466415540663)
,p_theme_id=>26
,p_name=>'Two Level Tabs - Left Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_LEFT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18641576682540663)
,p_theme_id=>26
,p_name=>'Two Level Tabs - Left and Right Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_LEFT_AND_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18641657358540663)
,p_theme_id=>26
,p_name=>'Two Level Tabs - No Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_NO_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(18641754659540663)
,p_theme_id=>26
,p_name=>'Two Level Tabs - Right Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#?v=2">',
'  <script src="#IMAGE_PREFIX#themes/theme_26/js/4_2.js?v=#APEX_VERSION#"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="userBlock">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'      <span>&APP_USER.</span>',
'      #NAVIGATION_BAR#',
'    </div>',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'    #REGION_POSITION_08#',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #SCREEN_READER_TOGGLE#',
'    <span class="uFooterVersion">',
'      #APP_VERSION#',
'    </span>',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18649073939540673)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>'<a href="#LINK#" class="uButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButton uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18649182776540673)
,p_template_name=>'Interactive Report Button'
,p_internal_name=>'INTERACTIVE_REPORT_BUTTON'
,p_template=>'<a href="#LINK#" class="uButtonIR #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18649255773540673)
,p_template_name=>'Interactive Report Button (Next)'
,p_internal_name=>'INTERACTIVE_REPORT_BUTTON_NEXT'
,p_template=>'<a href="#LINK#" class="uButtonIR nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18649364037540673)
,p_template_name=>'Large Button'
,p_internal_name=>'LARGE_BUTTON'
,p_template=>'<a href="#LINK#" class="uButtonLarge #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18649457851540673)
,p_template_name=>'Large Button (Next)'
,p_internal_name=>'LARGE_BUTTON_NEXT'
,p_template=>'<a href="#LINK#" class="uButtonLarge nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge uHotButton nextButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#<img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon nextIcon" alt=""></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18649574682540673)
,p_template_name=>'Large Button (Previous)'
,p_internal_name=>'LARGE_BUTTON_PREVIOUS'
,p_template=>'<a href="#LINK#" class="uButtonLarge prevButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button" title="#LABEL#"><span><img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon prevIcon" alt="#LABEL#"></span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge utHotButton prevButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button" title="#LABEL#"><span><img src="#IMAGE_PREFIX#f_spacer.gif" class="uButtonIcon prevIcon" alt="#LABEL#"></span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18649655177540673)
,p_template_name=>'Small Button'
,p_internal_name=>'SMALL_BUTTON'
,p_template=>'<a href="#LINK#" class="uButtonSmall #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonSmall uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18649766673540673)
,p_template_name=>'[ + ] Add Button'
,p_internal_name=>'[_+_]_ADD_BUTTON'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="addIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#"  class="addIcon"/></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18649885804540673)
,p_template_name=>'[ > ] Go To Button'
,p_internal_name=>'[_>_]_GO_TO_BUTTON'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="gotoIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# title="#LABEL#" role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="#LABEL#" class="gotoIcon"/></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(18649974083540673)
,p_template_name=>'[ Text ] Button'
,p_internal_name=>'[_TEXT_]_BUTTON'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>26
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(20899397434568985)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_internal_name=>'HTML_BUTTON_LEGACY_APEX_5_MIGRATION'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>26
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18641870211540664)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#BUTTON_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Accessible Region with Heading'
,p_internal_name=>'ACCESSIBLE_REGION_WITH_HEADING'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18641967179540665)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Alert Region'
,p_internal_name=>'ALERT_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Used for alerts and confirmations.  Please use a region image for the success/warning icon'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18642063543540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Borderless Region'
,p_internal_name=>'BORDERLESS_REGION'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18642160659540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    #BODY#',
'</section>'))
,p_page_plug_template_name=>'Borderless Region (no heading)'
,p_internal_name=>'BORDERLESS_REGION_NO_HEADING'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18642281903540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uBracketedRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_internal_name=>'BRACKETED_REGION'
,p_theme_id=>26
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18642360469540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBreadcrumbs" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  #BODY#',
'  <div class="uBreadcrumbsBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_internal_name=>'BREADCRUMB_REGION'
,p_theme_id=>26
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18642469378540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_internal_name=>'BUTTON_REGION_WITH_TITLE'
,p_theme_id=>26
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18642565186540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <div class="uButtonRegionContent">#BODY#</div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_internal_name=>'BUTTON_REGION_WITHOUT_TITLE'
,p_theme_id=>26
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18642680832540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Chart List'
,p_internal_name=>'CHART_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18642774569540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Chart Region'
,p_internal_name=>'CHART_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18642862277540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SUB_REGION_HEADERS#',
'#BODY#',
'<div class="uFrameContainer" class="#REGION_CSS_CLASSES#">',
'#SUB_REGIONS#',
'</div>'))
,p_sub_plug_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uFrameRegionSelector clearfix">',
'  <ul>',
'    <li><a href="javascript:void(0);" class="showAllLink active"><span>Show All</span></a></li>',
'    #ENTRIES#',
'  </ul>',
'</div>'))
,p_sub_plug_header_entry_templ=>'<li><a href="javascript:void(0);" id="sub_#SUB_REGION_ID#"><span>#SUB_REGION_TITLE#</span></a></li>'
,p_page_plug_template_name=>'Content Frame Body Container'
,p_internal_name=>'CONTENT_FRAME_BODY_CONTAINER'
,p_theme_id=>26
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18642954629540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_internal_name=>'DIV_REGION_WITH_ID'
,p_theme_id=>26
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18643070692540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Form Region'
,p_internal_name=>'FORM_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18643163287540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_internal_name=>'HIDE_AND_SHOW_REGION'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18643285942540666)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl uRegionCollapsed"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix" style="display: none;">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Hidden First) - Borderless'
,p_internal_name=>'HIDE_AND_SHOW_REGION_HIDDEN_FIRST_BORDERLESS'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18643363637540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region - Borderless'
,p_internal_name=>'HIDE_AND_SHOW_REGION_BORDERLESS'
,p_theme_id=>26
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18643456371540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uIRRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Interactive Report Region'
,p_internal_name=>'INTERACTIVE_REPORT_REGION'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18643575448540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding uLoginRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uLoginHeading">',
'    <span class="bgArrow"></span>',
'    <div class="appIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="appIcon #REGION_STATIC_ID#" alt=""/>',
'    </div> ',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uLoginBody clearfix">',
'    #BODY#',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Login Region'
,p_internal_name=>'LOGIN_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18643679894540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uModalRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Modal Region'
,p_internal_name=>'MODAL_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18643785546540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Navigation Region'
,p_internal_name=>'NAVIGATION_REGION'
,p_theme_id=>26
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18643882817540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Navigation Region - Heading Inside'
,p_internal_name=>'NAVIGATION_REGION_HEADING_INSIDE'
,p_theme_id=>26
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18643963721540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix">',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_internal_name=>'REGION_WITHOUT_BUTTONS_AND_TITLES'
,p_theme_id=>26
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18644054939540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Title'
,p_internal_name=>'REGION_WITHOUT_TITLE'
,p_theme_id=>26
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18644159927540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion uNoHeading uReportFilter #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    <div class="uReportFilterRow">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uSearchIcon" alt="" />',
'    #BODY#',
'    </div>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_internal_name=>'REPORT_FILTER_SINGLE_ROW'
,p_theme_id=>26
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18644268643540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Report List'
,p_internal_name=>'REPORT_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18644354730540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region'
,p_internal_name=>'REPORTS_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18644483359540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region - 100% Width'
,p_internal_name=>'REPORTS_REGION_100%_WIDTH'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18644567301540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Reports Region - Heading Inside'
,p_internal_name=>'REPORTS_REGION_HEADING_INSIDE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18644668351540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix"  style="height: 400px; overflow:scroll">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Scrollable Content Region'
,p_internal_name=>'SCROLLABLE_CONTENT_REGION'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1826089610826571714
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18644765015540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uFilterRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'    <span class="uButtonContainer">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Search Filter Region'
,p_internal_name=>'SEARCH_FILTER_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>26
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18644857736540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_internal_name=>'SIDEBAR_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18644958259540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region - Heading Inside'
,p_internal_name=>'SIDEBAR_REGION_HEADING_INSIDE'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>26
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18645073305540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="cWizardButtons cWizardButtonsLeft">',
'#PREVIOUS##CLOSE#',
'</div>',
'<div class="cWizardButtons cWizardButtonsRight">',
'#NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'Wizard Buttons'
,p_internal_name=>'WIZARD_BUTTONS'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18645181317540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Wizard Region'
,p_internal_name=>'WIZARD_REGION'
,p_theme_id=>26
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18645273463540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_internal_name=>'WIZARD_REGION_WITH_ICON'
,p_theme_id=>26
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18645366220540667)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" style="display:none" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'jQuery Modal Region Template'
,p_internal_name=>'JQUERY_MODAL_REGION_TEMPLATE'
,p_theme_id=>26
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(18734578886477885)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#TITLE#',
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'#BODY##SUB_REGION_HEADERS##SUB_REGIONS#',
'<div style="clear:both;"></div>',
'</div>',
'<link rel="stylesheet" href="#JQUERYUI_DIRECTORY#themes/base/jquery.ui.tabs.css" type="text/css" />',
'<script src="#JQUERYUI_DIRECTORY#ui/minified/jquery.ui.tabs.min.js" type="text/javascript"></script>'))
,p_sub_plug_header_template=>'<ul style="height: auto;">#ENTRIES#</ul>'
,p_sub_plug_header_entry_templ=>'<li><a href="##REGION_STATIC_ID#-tab-#SUB_REGION_ID#">#SUB_REGION_TITLE#</a></li>'
,p_sub_plug_template=>'<div id="#REGION_STATIC_ID#-tab-#SUB_REGION_ID#">#SUB_REGION#</div>'
,p_page_plug_template_name=>'jqueryTab'
,p_internal_name=>'JQUERYTAB'
,p_theme_id=>26
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18737481946590930)
,p_plug_template_id=>wwv_flow_api.id(18734578886477885)
,p_name=>'Subregion'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(18737856545590930)
,p_plug_template_id=>wwv_flow_api.id(18734578886477885)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18646564946540669)
,p_list_template_current=>'<a href="#LINK#" class="uButtonSmall uHotButton" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_noncurrent=>'<a href="#LINK#" class="uButtonSmall" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>26
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="uButtonList">'
,p_list_template_after_rows=>'</div>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18646663768540670)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_internal_name=>'DHTML_TREE'
,p_theme_id=>26
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18646776209540670)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_name=>'Featured List with Subtext'
,p_internal_name=>'FEATURED_LIST_WITH_SUBTEXT'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="featuredLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18646861223540670)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_internal_name=>'HIERARCHICAL_EXPANDING'
,p_theme_id=>26
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18646973216540670)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_internal_name=>'HORIZONTAL_IMAGES_WITH_LABEL_LIST'
,p_theme_id=>26
,p_theme_class_id=>4
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uImagesList uHorizontalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18647063025540670)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_name=>'Horizontal Links List'
,p_internal_name=>'HORIZONTAL_LINKS_LIST'
,p_theme_id=>26
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="uHorizontalLinksList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18647165127540670)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Horizontal Wizard Progress List'
,p_internal_name=>'HORIZONTAL_WIZARD_PROGRESS_LIST'
,p_theme_id=>26
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uHorizontalProgressList">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18647263785540670)
,p_list_template_current=>'<li><a href="#LINK#" class="active">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_internal_name=>'PAGE_LEVEL_TABS_LIST'
,p_theme_id=>26
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<nav class="uPageTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</nav>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18647382739540670)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_internal_name=>'PULL_DOWN_MENU'
,p_theme_id=>26
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#f_spacer.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />',
'</li>'))
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18647462473540670)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_internal_name=>'PULL_DOWN_MENU_WITH_IMAGE'
,p_theme_id=>26
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(thi'
||'s,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(th'
||'is,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18647567602540670)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Search Filter Tabs'
,p_internal_name=>'SEARCH_FILTER_TABS'
,p_theme_id=>26
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="ebaViewTabs">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18647673312540670)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_internal_name=>'TABBED_NAVIGATION_LIST'
,p_theme_id=>26
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uHorizontalTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18647765662540670)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Vertical Images List'
,p_internal_name=>'VERTICAL_IMAGES_LIST'
,p_theme_id=>26
,p_theme_class_id=>5
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uImagesList uVerticalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18647861112540671)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_name=>'Vertical List with Subtext and Icon'
,p_internal_name=>'VERTICAL_LIST_WITH_SUBTEXT_AND_ICON'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="largeLinkList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18647957513540671)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_internal_name=>'VERTICAL_ORDERED_LIST'
,p_theme_id=>26
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="uNumberedList">'
,p_list_template_after_rows=>'</ol>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18648075478540671)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_internal_name=>'VERTICAL_SIDEBAR_LIST'
,p_theme_id=>26
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="uVerticalSidebarList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18648180234540671)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITH_BULLETS'
,p_theme_id=>26
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="uVerticalList">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18648257619540671)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITHOUT_BULLETS'
,p_theme_id=>26
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="uVerticalList noBullets">'
,p_list_template_after_rows=>'</ul>'
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(18648380540540671)
,p_list_template_current=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_name=>'Wizard Progress List - Vertical'
,p_internal_name=>'WIZARD_PROGRESS_LIST_VERTICAL'
,p_theme_id=>26
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="uVerticalProgressList" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18645483611540667)
,p_row_template_name=>'Borderless Report'
,p_internal_name=>'BORDERLESS_REPORT'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportContainer uBorderlessReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportBorderless">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(18645483611540667)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18645579584540668)
,p_row_template_name=>'Comment Bubbles'
,p_internal_name=>'COMMENT_BUBBLES'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#1#">',
'<div>',
'	<em>#2#</em>',
'	#3##4##5##6##7#',
'</div>',
'<span>',
'	#8# (#9#) #10#',
'</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="commentBubbles">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18645678133540668)
,p_row_template_name=>'Fixed Headers'
,p_internal_name=>'FIXED_HEADERS'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<div class="uFixedHeadersContainer">',
'<table summary="#REGION_TITLE#" class="uReport uReportFixedHeaders">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</div>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(18645678133540668)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18645767242540668)
,p_row_template_name=>'Horizontal Border'
,p_internal_name=>'HORIZONTAL_BORDER'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportHorizontal">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(18645767242540668)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18645885349540668)
,p_row_template_name=>'One Column Unordered List'
,p_internal_name=>'ONE_COLUMN_UNORDERED_LIST'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportList" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<ul class="uReportList">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(18645885349540668)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18645973475540668)
,p_row_template_name=>'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_internal_name=>'SEARCH_RESULTS_REPORT_SELECT_LINK_TEXT,_LINK_TARGET,_DETAIL1,_DETAIL2,_LAST_MODIFIED'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="sSearchResultsReport">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18646068826540668)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportStandard">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>26
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(18646068826540668)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18646175659540668)
,p_row_template_name=>'Standard - Alternative'
,p_internal_name=>'STANDARD_ALTERNATIVE'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template3=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="uOddRow">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportAlternative">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>26
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(18646175659540668)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18646275477540668)
,p_row_template_name=>'Two Column Portlet'
,p_internal_name=>'TWO_COLUMN_PORTLET'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #1#',
'  </span>',
'  <span class="uValue">',
'    #2#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18646368472540668)
,p_row_template_name=>'Value Attribute Pairs'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #COLUMN_HEADER#',
'  </span>',
'  <span class="uValue">',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(18646470335540669)
,p_row_template_name=>'Value Attribute Pairs - Left Aligned'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_LEFT_ALIGNED'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <label>',
'    #COLUMN_HEADER#',
'  </label>',
'  <span>',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="vapList tableBased" #REPORT_ATTRIBUTES# id="report_#REPORT_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>26
,p_theme_class_id=>6
,p_translate_this_template=>'N'
,p_row_template_comment=>'shrahman 03/12/2012 Making table based '
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18648456623540671)
,p_template_name=>'Hidden label, read by screen reader'
,p_internal_name=>'HIDDEN_LABEL,_READ_BY_SCREEN_READER'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999" class="hideMeButHearMe">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>26
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18648556044540672)
,p_template_name=>'No Label'
,p_internal_name=>'NO_LABEL'
,p_template_body1=>'<span class="uNoLabel">'
,p_template_body2=>'</span>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18648673590540672)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18648754543540672)
,p_template_name=>'Optional with help'
,p_internal_name=>'OPTIONAL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18648859154540672)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired">'
,p_template_body2=>' <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(18648970087540672)
,p_template_name=>'Required with help'
,p_internal_name=>'REQUIRED_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a> <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(18650081882540674)
,p_name=>'Breadcrumb Menu'
,p_internal_name=>'BREADCRUMB_MENU'
,p_before_first=>'<ul>'
,p_current_page_option=>'<li class="active"><span>#NAME#</span></li> '
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> '
,p_between_levels=>'<li class="uSeparator"><img src="#IMAGE_PREFIX#f_spacer.gif" class="uBreadcrumbSeparator" alt="" /></li> '
,p_after_last=>'</ul>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(18650168472540674)
,p_name=>'Hierarchical Menu'
,p_internal_name=>'HIERARCHICAL_MENU'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>26
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(18650555232540676)
,p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif'
,p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge" /><![endif]-->',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_26/css/4_2.css?v=#APEX_VERSION#" type="text/css" media="all"/>',
'',
'</head>'))
,p_page_body_attr=>'class="uPopUpLOV"'
,p_before_field_text=>'<div class="uActionBar">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="smallButton"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="smallButton hotButton"'
,p_next_button_text=>'Next >'
,p_next_button_attr=>'class="smallButton"'
,p_prev_button_text=>'< Previous'
,p_prev_button_attr=>'class="smallButton"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="lovLinks">'
,p_theme_id=>26
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(18650257308540675)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>'<th valign="bottom" class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="CalendarAlternative1">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top" height="100" height="100">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>1
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(18650356741540676)
,p_cal_template_name=>'Calendar - Alternative'
,p_internal_name=>'CALENDAR_ALTERNATIVE'
,p_day_of_week_format=>'<th class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>2
);
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(18650482380540676)
,p_cal_template_name=>'Small Calendar'
,p_internal_name=>'SMALL_CALENDAR'
,p_day_of_week_format=>'<th scope="col">#DY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uCalendarSmall" summary="#IMONTH# #YYYY#">',
'  <caption>#IMONTH# #YYYY#</caption>'))
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </tbody>',
'</table>'))
,p_day_title_format=>'#DD#'
,p_day_open_format=>'<td>#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'#DD#'
,p_weekend_open_format=>'<td class="weekend">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'#DD#'
,p_nonday_open_format=>'<td class="inactive">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top"><div class="inner">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t1Today" valign="top"><div class="inner">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay"><div class="inner">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#DY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>26
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(18650686213540679)
,p_theme_id=>26
,p_theme_name=>'Productivity Applications'
,p_theme_internal_name=>'PRODUCTIVITY_APPLICATIONS'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(18640877388540662)
,p_error_template=>wwv_flow_api.id(18640365408540662)
,p_printer_friendly_template=>wwv_flow_api.id(18641363780540663)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(18639987169540659)
,p_default_button_template=>wwv_flow_api.id(18649073939540673)
,p_default_region_template=>wwv_flow_api.id(18644354730540667)
,p_default_chart_template=>wwv_flow_api.id(18642774569540666)
,p_default_form_template=>wwv_flow_api.id(18643070692540666)
,p_default_reportr_template=>wwv_flow_api.id(18644354730540667)
,p_default_tabform_template=>wwv_flow_api.id(18644354730540667)
,p_default_wizard_template=>wwv_flow_api.id(18645181317540667)
,p_default_menur_template=>wwv_flow_api.id(18642360469540666)
,p_default_listr_template=>wwv_flow_api.id(18642680832540666)
,p_default_irr_template=>wwv_flow_api.id(18643456371540667)
,p_default_report_template=>wwv_flow_api.id(18646068826540668)
,p_default_label_template=>wwv_flow_api.id(18648673590540672)
,p_default_menu_template=>wwv_flow_api.id(18650081882540674)
,p_default_calendar_template=>wwv_flow_api.id(18650257308540675)
,p_default_list_template=>wwv_flow_api.id(18648180234540671)
,p_default_option_label=>wwv_flow_api.id(18648754543540672)
,p_default_required_label=>wwv_flow_api.id(18648970087540672)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(26),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(18669484780388727)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(18650968647540685)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:110:&SESSION.'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(18650772817540680)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>26
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>true
,p_include_jquery_migrate=>true
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20160102215036'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18652577163540696)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18642360469540666)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(18652069233540693)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(18650081882540674)
,p_plug_query_row_template=>1
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Tree Page'
,p_page_mode=>'NORMAL'
,p_step_title=>'Tree Page'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Tree Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160123050151'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18654560970578810)
,p_plug_name=>'Eltern'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18643456371540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from v_rep_elt'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18654654917578810)
,p_name=>'Eltern'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANNE'
,p_internal_uid=>3305600387656398
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18654886729578814)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18654971800578815)
,p_db_column_name=>'ELTERN'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Eltern'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ELTERN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18655084739578815)
,p_db_column_name=>'KIND'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Kind'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'KIND'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18655177444578815)
,p_db_column_name=>'PARENT_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Parent Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARENT_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18655265581578815)
,p_db_column_name=>'PARENT_VORNAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Parent Vorname'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PARENT_VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18655364945578815)
,p_db_column_name=>'CHILD_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Child Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CHILD_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18655468932578815)
,p_db_column_name=>'CHILD_VORNAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Child Vorname'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CHILD_VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18656675990644969)
,p_db_column_name=>'PAR_LB_NAME'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Par Lb Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAR_LB_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18656759190644970)
,p_db_column_name=>'PAR_LB_VORNAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Par Lb Vorname'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAR_LB_VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18656986779644970)
,p_db_column_name=>'CH_LB_VORNAME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Ch Lb Vorname'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CH_LB_VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18657386816852702)
,p_db_column_name=>'CH_LB_NAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Ch Lb Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CH_LB_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18657486915852703)
,p_db_column_name=>'PAR_GES_NAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Par Ges Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAR_GES_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18657559575852703)
,p_db_column_name=>'PAR_GES_VORNAME'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Par Ges Vorname'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAR_GES_VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18657677397852703)
,p_db_column_name=>'LB_CH_GES_NAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Lb Ch Ges Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LB_CH_GES_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18657771358852703)
,p_db_column_name=>'LB_CH_GES_VORNAME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Lb Ch Ges Vorname'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LB_CH_GES_VORNAME'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18655561663578977)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'33066'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'ID:ELTERN:KIND:PARENT_NAME:PARENT_VORNAME:PAR_LB_NAME:PAR_LB_VORNAME:PAR_GES_NAME:PAR_GES_VORNAME:CHILD_NAME:CHILD_VORNAME:CH_LB_NAME:CH_LB_VORNAME:LB_CH_GES_NAME:LB_CH_GES_VORNAME:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(18658379755915367)
,p_report_id=>wwv_flow_api.id(18655561663578977)
,p_name=>'Row text contains ''Anit'''
,p_condition_type=>'SEARCH'
,p_allow_delete=>'Y'
,p_expr=>'Anit'
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18653670018549247)
,p_button_sequence=>10
,p_button_name=>'CONTRACT_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Collapse All'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'javascript:apex.widget.tree.collapse_all(''tree3304412115626834'');'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18653863401549248)
,p_button_sequence=>10
,p_button_name=>'EXPAND_ALL'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Expand All'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'javascript:apex.widget.tree.expand_all(''tree3304412115626834'');'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Chart'
,p_page_mode=>'NORMAL'
,p_step_title=>'Chart'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Chart'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160109162632'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18659764530452397)
,p_plug_name=>'Chart'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18642774569540666)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(18659958076452399)
,p_default_chart_type=>'ScatterMarker'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_3310903546529987'
,p_chart_width=>700
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:B:B:N::V:Y:Circle:::N:::Default:::S'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'6'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'Y'
,p_chart_xml=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<?xml version = "1.0" encoding="utf-8" standalone = "yes"?>',
'<anychart>',
'  <settings>',
'    <animation enabled="false"/>',
'    <no_data show_waiting_animation="False">',
'      <label>',
'        <text>#NO_DATA_MESSAGE#</text>',
'        <font family="Verdana" bold="yes" size="10"/>',
'      </label>',
'    </no_data>',
'  </settings>',
'  <margin left="0" top="0" right="0" bottom="0" />',
'  <charts>',
'    <chart plot_type="Scatter" name="chart_3310903546529987"> ',
'      <chart_settings>',
'        <title enabled="False" />',
'        <chart_background>',
'          <fill type="Solid" color="0xffffff" opacity="0" />',
'          <border enabled="false"/>',
'          <corners type="Square"/>',
'        </chart_background>',
'        <data_plot_background>',
'',
'        </data_plot_background>',
'        <axes>',
'          <y_axis >',
'            <scale   mode="Normal"    />',
'            <title enabled="false" />',
'            <labels enabled="true" position="Outside">',
'              <font family="Tahoma" size="10" color="0x000000" />',
'              <format><![CDATA[{%Value}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format>',
'            </labels>',
'            <major_grid enabled="True" interlaced="false">',
'                <line color="Black" />',
'              </major_grid>',
'<minor_grid enabled="True">',
'              </minor_grid>',
'            <zoom enabled="true" show_scroll_bar="true" />',
'          </y_axis>',
'          <x_axis>',
'            <scale  mode="Normal"    />',
'            <title enabled="false"/>',
'            <labels enabled="true" position="Outside">',
'              <font family="Tahoma" size="10" color="0x000000" />',
'              <format><![CDATA[{%Value}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format>',
'            </labels>',
'            <major_grid enabled="True" interlaced="false">',
'                <line color="Black" />',
'              </major_grid>',
'<minor_grid enabled="True">',
'              </minor_grid>',
'            <zoom enabled="true" show_scroll_bar="true" />',
'          </x_axis>',
'          ',
'        </axes>',
'',
'',
'      </chart_settings>',
'      <data_plot_settings enable_3d_mode="false" default_series_type="Marker">',
'        <marker_series>',
'          <marker_style marker_type="Circle">',
'            <marker />',
'            <effects>',
'              <drop_shadow enabled="true"/>',
'            </effects>',
'',
'          </marker_style>',
'          <tooltip_settings enabled="true">',
'            <format><![CDATA[{%Name}{enabled:False}: {%XValue}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}, {%YValue}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format>',
'            <font family="Tahoma" size="10" color="0x000000" />',
'              <position anchor="Float" valign="Top" padding="10" /> ',
'          </tooltip_settings>',
'          <label_settings enabled="true" mode="Outside" multi_line_align="Center">',
'            <format><![CDATA[{%Name}{enabled:False}: {%XValue}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}, {%YValue}{numDecimals:0,decimalSeparator:.,thousandsSeparator:\,}]]></format>',
'            <background enabled="false"/>',
'',
'            <font family="Tahoma" size="10" color="0x000000" />',
'          </label_settings>',
'        </marker_series>',
'      </data_plot_settings>',
'',
'#DATA#',
'    </chart>',
'  </charts>',
'</anychart>',
''))
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(18660083517452401)
,p_chart_id=>wwv_flow_api.id(18659958076452399)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'null,',
'null,',
'act_lev_id,',
'act_lev_sub_id',
'from tree_tab'))
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'no data found'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_name=>'Form on PERSON_WOHNORT'
,p_page_mode=>'NORMAL'
,p_step_title=>'Form on PERSON_WOHNORT'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_protection_level=>'C'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160128132129'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22372701955272882)
,p_plug_name=>'Form on PERSON_WOHNORT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18643070692540666)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22373254424272884)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22372701955272882)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P8_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22373423986272886)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22372701955272882)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22373069452272884)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22372701955272882)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P8_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22373273691272884)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22372701955272882)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P8_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22374974060272891)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22375355758272892)
,p_name=>'P8_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22375841158272907)
,p_name=>'P8_PK_PERSON_WOHNORT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pk Person Wohnort'
,p_source=>'PK_PERSON_WOHNORT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648970087540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22376242672272909)
,p_name=>'P8_FK_WOHNORT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fk Wohnort'
,p_source=>'FK_WOHNORT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22376601658272909)
,p_name=>'P8_FK_PERSON'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fk Person'
,p_source=>'FK_PERSON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22376983379272909)
,p_name=>'P8_KOMMENTAR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Kommentar'
,p_source=>'KOMMENTAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22377425312272909)
,p_name=>'P8_REIHENFOLGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reihenfolge'
,p_source=>'REIHENFOLGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22377846470272910)
,p_name=>'P8_VON'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Von'
,p_source=>'VON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22378241628272910)
,p_name=>'P8_BIS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Bis'
,p_source=>'BIS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22378632405272910)
,p_name=>'P8_CREATION_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22378985815272910)
,p_name=>'P8_CREATED_BY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22379405729272911)
,p_name=>'P8_MODIFY_DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modify Date'
,p_source=>'MODIFY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22379825601272911)
,p_name=>'P8_MODIFIED_BY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(22372701955272882)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modified By'
,p_source=>'MODIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22383863221272915)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from PERSON_WOHNORT'
,p_attribute_02=>'PERSON_WOHNORT'
,p_attribute_03=>'P8_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22384256282272916)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of PERSON_WOHNORT'
,p_attribute_02=>'PERSON_WOHNORT'
,p_attribute_03=>'P8_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22384745193272916)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(22373273691272884)
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Report 1'
,p_page_mode=>'NORMAL'
,p_step_title=>'Report 1'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Report 1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160125123713'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18820258034940525)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(18644354730540667)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  id, ',
'  dateiname, ',
'  dbms_lob.getlength(thumbnail) vorschau, ',
'  dbms_lob.getlength(bild)      bildgroesse, ',
'  breite_px, ',
'  hoehe_px,',
'  null as bild_aktion',
'from bilder_tab'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20939354674216856)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20939808410216857)
,p_query_column_id=>2
,p_column_alias=>'DATEINAME'
,p_column_display_sequence=>2
,p_column_heading=>'Dateiname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20940214021216858)
,p_query_column_id=>3
,p_column_alias=>'VORSCHAU'
,p_column_display_sequence=>3
,p_column_heading=>'Vorschau'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:BILDER_TAB:THUMBNAIL:ID:::DATEINAME:::Inline:Download:'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20940651342216858)
,p_query_column_id=>4
,p_column_alias=>'BILDGROESSE'
,p_column_display_sequence=>4
,p_column_heading=>'Bildgroesse'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20941014712216858)
,p_query_column_id=>5
,p_column_alias=>'BREITE_PX'
,p_column_display_sequence=>5
,p_column_heading=>'Breite Px'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20941411535216859)
,p_query_column_id=>6
,p_column_alias=>'HOEHE_PX'
,p_column_display_sequence=>6
,p_column_heading=>'Hoehe Px'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20941777589216859)
,p_query_column_id=>7
,p_column_alias=>'BILD_AKTION'
,p_column_display_sequence=>7
,p_column_heading=>'Bild Aktion'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18821466121963159)
,p_plug_name=>'Bild hochladen'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644354730540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21369336256750388)
,p_plug_name=>'bilder'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(18644354730540667)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18822058633970514)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18821466121963159)
,p_button_name=>'P20_UPLOAD'
,p_button_static_id=>'P20_UPLOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20899397434568985)
,p_button_image_alt=>'Datei hochladen'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18821768241965915)
,p_name=>'P20_FILE_UPLOAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18821466121963159)
,p_prompt=>'File Upload'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'WWV_FLOW_FILES'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21379349900768573)
,p_name=>'P20_BILD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(21369336256750388)
,p_prompt=>'Bild'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'SQL'
,p_attribute_06=>'SELECt thumbnail from bilder_tab where id = 41'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20927905379037889)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPLOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_filename  wwv_flow_files.filename%type;',
'',
' v_bild      blob := null;',
' v_thumb     blob := null;',
'',
' v_oi_bild   ordimage := null;',
' v_oi_thumb  ordimage := null;',
'',
' v_id BILDER_TAB.ID%TYPE;',
'begin',
'   begin',
'     -- Bild aus WWV_FLOW_FILES holen ...',
'     select blob_content, filename ',
'      into v_bild, v_filename ',
'     from wwv_flow_files',
'     where name = :P20_FILE_UPLOAD;',
'',
'     -- Temporären LOB für Thumbnail erzeugen',
'     dbms_lob.createtemporary(v_thumb, true, dbms_lob.call);',
'',
'     -- ORDIMAGE-Objekt für Bild und Thumbnail erzeugen',
'     v_oi_bild  := ordimage(v_bild);',
'     v_oi_bild.setproperties();',
'     v_oi_thumb := ordimage(v_thumb);',
'',
'     -- Thumbnail generieren',
'     v_oi_bild.processcopy(',
'       command => ''maxScale=100 100'',',
'       dest    => v_oi_thumb',
'     );',
'',
'     -- Bild und Thumbnail in Tabelle BILDER_TAB ablegen',
'     insert into bilder_tab (id, bild, thumbnail, dateiname)',
'     values (seq_bilder_tab.nextval, v_bild, v_oi_thumb.getcontent(), v_filename);',
'',
'     -- Bild aus WWV_FLOW_FILES entfernen',
'     delete from wwv_flow_files where name = :P20_FILE_UPLOAD;',
'',
'     -- Temporären LOB freigeben',
'     dbms_lob.freetemporary(v_thumb);',
'   exception ',
'     -- Im Fehlerfall nix machen; in der Praxis aber zumindest Logging!',
'     when NO_DATA_FOUND then null; ',
'     when TOO_MANY_ROWS then null; ',
'   end;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18822058633970514)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(18639987169540659)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_upd_yyyymmddhh24miss=>'20160102215036'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18651266769540689)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18643070692540666)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18651557415540692)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18651266769540689)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18651379808540691)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18651266769540689)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18651461576540692)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18651266769540689)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18651767818540693)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18651681973540693)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18651984025540693)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18651854551540693)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00110
begin
wwv_flow_api.create_page(
 p_id=>110
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'HOME'
,p_alias=>'HOME'
,p_page_mode=>'NORMAL'
,p_step_title=>'HOME'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160123050151'
);
end;
/
prompt --application/pages/page_00120
begin
wwv_flow_api.create_page(
 p_id=>120
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Personenübersicht'
,p_page_mode=>'NORMAL'
,p_step_title=>'Personenübersicht'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Personenübersicht'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'// Modal-Dialog initialisieren',
'function initDialog ( pRegId , pTitle , pWidth , pHeight ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( {',
'      autoOpen:   false,',
'      bgiframe:   true,',
'      modal:      false,',
'      minHeight:  pHeight,',
'      width:      pWidth,',
'      minWidth:   pWidth,',
'      title:      pTitle,',
'      resizable: true,',
'      closeOnEscape : true',
'  } )',
'}',
'',
'// setzt die Breite des Dialogs auf (nahezu) genau die für den Report benötigte Breite',
'function setzeDialogBreite ( pRegId ) {',
'  var $vRegion  = $( "#" + pRegId );',
'  var vMinWidth = $vRegion.dialog ( "option" , "minWidth" );',
'  var vWidth    = $vRegion.find ( "table[id^=''report_'']" ).width();',
'  //',
'  $vRegion.dialog ( "option" , "width" , Math.max ( vMinWidth , vWidth + 30 ) );',
'}',
'',
'',
'// zeigt die Reports-Region als jQuery-Dialog an',
'function showDialog ( pRegId ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( "open" );',
'  setzeDialogBreite ( pRegId );',
'',
'}',
'',
'',
'// jQuery-Dialog schliessen',
'function closeDialog (pRegId) {',
'  $("#" + pRegId).dialog("close");',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160205132238'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18688475510510141)
,p_plug_name=>'Übersicht Personen'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18643456371540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with wo as (select * from Person_Wohnort wo join ort on wo.fk_wohnort = ort.pk_ort)',
'SELECT ',
'	    p.PK_PERSON',
',	p.NAME',
',	p.VORNAME',
',	p.GESCHLECHT',
',	p.GEBOREN_AM',
',	p.GESTORBEN_AM',
',	p.BESCHREIBUNG',
',	p.GEBURTSNAME',
',	p.TITEL',
',	p.ADELSTITEL',
',	p.RUFNAME',
',	p.NR_AHNENTAFEL',
',   wo.ort wohnort',
',   wo.land wo_land',
',   go.ort  geburtsort',
',   go.land go_land',
',   so.ort sterbeort',
',   so.land so_land',
',   r.religion',
',   r.status Religion_status',
',   r.ausgetreten_am',
',   round((nvl(p.gestorben_am, sysdate) - p.geboren_am)/365,0) as alt',
',   bt.id',
',   bt.dateiname',
',   dbms_lob.getlength(bt.thumbnail) vorschau',
',   dbms_lob.getlength(bt.bild)      bildgroesse',
',   bt.breite_px',
',   bt.hoehe_px',
',   null as bild_aktion',
'FROM Person p',
' left join wo on p.pk_person = wo.fk_person',
' left join ort go on p.fk_geburtsort = go.pk_ort',
' left join ort so on p.fk_sterbeort = so.pk_ort',
' left join Person_Religion r on r.fk_person = p.PK_person',
' left join person_bild pb on pb.fk_person = p.pk_person',
' left join bilder_tab bt on bt.id = pb.fk_bild'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_header=>'<div style="Overflow:auto;width:97%;height:95%">'
,p_plug_footer=>'</div>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18688676072510142)
,p_name=>'Orte'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANNE'
,p_internal_uid=>3339621542587730
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18693166464549040)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_link=>'javascript:popUp2(''f?p=&APP_ID.:121:&SESSION.:::RP:P121_PK_PERSON:#PK_PERSON#'',2000,1000);'
,p_column_linktext=>'#NAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18693284631549040)
,p_db_column_name=>'VORNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Vorname'
,p_column_link=>'javascript:popUp2(''f?p=&APP_ID.:121:&SESSION.:::RP:P121_PK_PERSON:#PK_PERSON#'',2000,1000);'
,p_column_linktext=>'#VORNAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18693356840549041)
,p_db_column_name=>'GESCHLECHT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Geschlecht'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'GESCHLECHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18693555990549041)
,p_db_column_name=>'GESTORBEN_AM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'gestorben am'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_format_mask=>'DD.MM.YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_static_id=>'GESTORBEN_AM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18693762303549041)
,p_db_column_name=>'BESCHREIBUNG'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Beschreibung'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_static_id=>'BESCHREIBUNG'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18693864781549041)
,p_db_column_name=>'GEBURTSNAME'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Geburtsname'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'GEBURTSNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18693973199549041)
,p_db_column_name=>'TITEL'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Titel'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18694079931549041)
,p_db_column_name=>'ADELSTITEL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Adelstitel'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ADELSTITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18694261630549042)
,p_db_column_name=>'RUFNAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Rufname'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RUFNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18694357676549042)
,p_db_column_name=>'NR_AHNENTAFEL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Nr Ahnentafel'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NR_AHNENTAFEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18698065886725117)
,p_db_column_name=>'WOHNORT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Wohnort'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WOHNORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18698162017725117)
,p_db_column_name=>'WO_LAND'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Land<br>(Wohnort)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WO_LAND'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18698274947725117)
,p_db_column_name=>'GEBURTSORT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Geburtsort'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'GEBURTSORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18698373202725117)
,p_db_column_name=>'GO_LAND'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Land<br>(Geburtsort)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'GO_LAND'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18698476559725117)
,p_db_column_name=>'STERBEORT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Sterbeort'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STERBEORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18698581543725117)
,p_db_column_name=>'SO_LAND'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Land<br>(Sterbeort)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SO_LAND'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18730573465720612)
,p_db_column_name=>'RELIGION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Religion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RELIGION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18730675469720613)
,p_db_column_name=>'RELIGION_STATUS'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Status<br>(Religion)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RELIGION_STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18730783554720613)
,p_db_column_name=>'AUSGETRETEN_AM'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'ausgetreten am'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'AUSGETRETEN_AM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18766075066429167)
,p_db_column_name=>'ALT'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Alter'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ALT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18823867912166419)
,p_db_column_name=>'PK_PERSON'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'ID'
,p_column_link=>'javascript:popUp2(''f?p=&APP_ID.:121:&SESSION.:::RP:P121_PK_PERSON:#PK_PERSON#'',2000,1000);'
,p_column_linktext=>'#PK_PERSON#'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PK_PERSON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21249450583493278)
,p_db_column_name=>'ID'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21250119595493284)
,p_db_column_name=>'DATEINAME'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Dateiname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21250797229493285)
,p_db_column_name=>'VORSCHAU'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Vorschau'
,p_sync_form_label=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:BILDER_TAB:THUMBNAIL:ID:::DATEINAME:::Inline:Download:'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21251515307493288)
,p_db_column_name=>'BILDGROESSE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Bildgroesse'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21252223352493289)
,p_db_column_name=>'BREITE_PX'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Breite Px'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21252862063493290)
,p_db_column_name=>'HOEHE_PX'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Hoehe Px'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21253590530493291)
,p_db_column_name=>'BILD_AKTION'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Bild Aktion'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22928526209520380)
,p_db_column_name=>'GEBOREN_AM'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Geboren am'
,p_column_type=>'DATE'
,p_format_mask=>'DD.MM.YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18688962203510142)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'33400'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5000
,p_report_columns=>'PK_PERSON:NR_AHNENTAFEL:TITEL:NAME:VORNAME:VORSCHAU:GESCHLECHT:GEBOREN_AM:GESTORBEN_AM:ALT:GEBURTSNAME:RUFNAME:GEBURTSORT:GO_LAND:STERBEORT:SO_LAND:WOHNORT:WO_LAND:BESCHREIBUNG:RELIGION:RELIGION_STATUS:AUSGETRETEN_AM:ADELSTITEL:ID:DATEINAME:BILDGROES'
||'SE:BREITE_PX:HOEHE_PX:BILD_AKTION:'
,p_break_on=>'NAME:VORNAME'
,p_break_enabled_on=>'NAME:VORNAME'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18813266377426507)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(18688475510510141)
,p_button_name=>'STAMMBAUM'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Stammbaum'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:popUp2(''f?p=&APP_ID.:122:&SESSION.:::RP:'',1300,1300);'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21920010004175720)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(18688475510510141)
,p_button_name=>'Datenprüfung'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Datenprüfung'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22249196016688761)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(18688475510510141)
,p_button_name=>'NEW_PERSON'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Neue Person'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:popUp2(''f?p=&APP_ID.:121:&SESSION.::NO:RP:P121_PK_PERSON:'',1300,650);'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18691872992510144)
,p_branch_action=>'f?p=&APP_ID.:120:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18691166054510143)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'171'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18689560429510142)
);
end;
/
prompt --application/pages/page_00121
begin
wwv_flow_api.create_page(
 p_id=>121
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_name=>'Person'
,p_alias=>'PERSON'
,p_page_mode=>'NORMAL'
,p_step_title=>'Person'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// Modal-Dialog initialisieren',
'function initDialog ( pRegId , pTitle , pWidth , pHeight ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( {',
'      autoOpen:   false,',
'      bgiframe:   true,',
'      modal:      false,',
'      minHeight:  pHeight,',
'      width:      pWidth,',
'      minWidth:   pWidth,',
'      title:      pTitle,',
'      resizable: true,',
'      closeOnEscape : true',
'  } )',
'}',
'',
'// setzt die Breite des Dialogs auf (nahezu) genau die für den Report benötigte Breite',
'function setzeDialogBreite ( pRegId ) {',
'  var $vRegion  = $( "#" + pRegId );',
'  var vMinWidth = $vRegion.dialog ( "option" , "minWidth" );',
'  var vWidth    = $vRegion.find ( "table[id^=''report_'']" ).width();',
'  //',
'  $vRegion.dialog ( "option" , "width" , Math.max ( vMinWidth , vWidth + 30 ) );',
'}',
'',
'',
'// zeigt die Reports-Region als jQuery-Dialog an',
'function showDialog ( pRegId ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( "open" );',
'  setzeDialogBreite ( pRegId );',
'',
'}',
'',
'',
'// jQuery-Dialog schliessen',
'function closeDialog (pRegId) {',
'  $("#" + pRegId).dialog("close");',
'}',
'',
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'',
'// Überschriften über das Shuttle "P40_SEL_USR_GRP" setzen',
'$(''#P121_ELTERN'').find (''table'').prepend(''<tr><td><label class="uRequired">Verfügbare Personen<br><br></label></td><td></td><td><label class="uRequired">Eltern<br><br></label></td></tr>'');',
'$(''label[for="P121_ELTERN"]'').attr(''style'', ''padding-top: 46px;'');'))
,p_step_template=>wwv_flow_api.id(18641272351540663)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160205172707'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18731963129427883)
,p_plug_name=>'Person'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18734578886477885)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
' apex.jQuery(function() {',
' apex.jQuery("##REGION_STATIC_ID#").tabs();',
' });',
'</script>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18738258346606311)
,p_plug_name=>'Person'
,p_parent_plug_id=>wwv_flow_api.id(18731963129427883)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18738466311608578)
,p_plug_name=>'Eltern  / Kind'
,p_parent_plug_id=>wwv_flow_api.id(18731963129427883)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25099314597614657)
,p_name=>'Eltern'
,p_parent_plug_id=>wwv_flow_api.id(18738466311608578)
,p_template=>wwv_flow_api.id(18644354730540667)
,p_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_report_attributes=>'style="background-color:#7FFFD4;"'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
' apex_item.checkbox2(1,E."PK_ELTERN") as pk_eltern,',
' E."PK_ELTERN" PK_ELTERN_DISPLAY,',
' P.TITEL,',
' E."FK_ELTERN",',
' :P121_PK_PERSON "FK_KIND",',
' E."CREATION_DATE",',
' E."CREATED_BY",',
' E."MODIFY_DATE",',
' E."MODIFIED_BY",',
' P.NAME,',
' P.VORNAME,',
' P.GESCHLECHT,',
' P.NR_AHNENTAFEL,',
' P.GEBOREN_AM,',
' P.GESTORBEN_AM,',
' P.BESCHREIBUNG,',
' P.RUFNAME,',
' P.GEBURTSNAME,',
' GO.ORT GEBURTSORT,',
' GO.LAND GEBURTSLAND,',
' SO.ORT STERBEORT,',
' SO.LAND STERBELAND',
',   bt.id',
',   bt.dateiname',
',   dbms_lob.getlength(bt.thumbnail) vorschau',
',   dbms_lob.getlength(bt.bild)      bildgroesse',
',   bt.breite_px',
',   bt.hoehe_px',
',   null as bild_aktion',
'from "#OWNER#"."ELTERN" E',
'  LEFT JOIN PERSON P ON P.PK_PERSON = E.FK_ELTERN',
'  LEFT JOIN ORT GO ON GO.PK_ORT = P.FK_GEBURTSORT',
'  LEFT JOIN ORT SO ON SO.PK_ORT = P.FK_STERBEORT',
'  left join person_bild pb on pb.fk_person = p.pk_person',
'  left join bilder_tab bt on bt.id = pb.fk_bild',
'',
'WHERE FK_KIND = :P121_PK_PERSON'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25099874156614682)
,p_query_column_id=>1
,p_column_alias=>'PK_ELTERN'
,p_column_display_sequence=>1
,p_column_heading=>'<input type="checkbox" onClick="$f_CheckFirstColumn(this)"/>'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_pk_col_source_type=>'T'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25100349938614682)
,p_query_column_id=>2
,p_column_alias=>'PK_ELTERN_DISPLAY'
,p_column_display_sequence=>2
,p_column_heading=>'Pk Eltern Display'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25100683977614683)
,p_query_column_id=>3
,p_column_alias=>'TITEL'
,p_column_display_sequence=>3
,p_column_heading=>'Titel'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25101067392614683)
,p_query_column_id=>4
,p_column_alias=>'FK_ELTERN'
,p_column_display_sequence=>4
,p_column_heading=>'Fk Eltern'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25101528700614683)
,p_query_column_id=>5
,p_column_alias=>'FK_KIND'
,p_column_display_sequence=>5
,p_column_heading=>'Fk Kind'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25101908040614683)
,p_query_column_id=>6
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>21
,p_column_heading=>'Erstelldatum'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25102294895614684)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>22
,p_column_heading=>'Erstellt von'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25102718075614684)
,p_query_column_id=>8
,p_column_alias=>'MODIFY_DATE'
,p_column_display_sequence=>23
,p_column_heading=>'Änderungsdatum'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25103128396614684)
,p_query_column_id=>9
,p_column_alias=>'MODIFIED_BY'
,p_column_display_sequence=>24
,p_column_heading=>'Geändert durch'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25103459483614685)
,p_query_column_id=>10
,p_column_alias=>'NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#NAME#</b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25103857925614685)
,p_query_column_id=>11
,p_column_alias=>'VORNAME'
,p_column_display_sequence=>7
,p_column_heading=>'Vorname'
,p_use_as_row_header=>'N'
,p_column_html_expression=>' <b>#VORNAME#</b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25104352897614686)
,p_query_column_id=>12
,p_column_alias=>'GESCHLECHT'
,p_column_display_sequence=>8
,p_column_heading=>'Geschlecht'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b><i>#GESCHLECHT#</i></b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25104667338614686)
,p_query_column_id=>13
,p_column_alias=>'NR_AHNENTAFEL'
,p_column_display_sequence=>10
,p_column_heading=>'<span title="Nr der Person in der Ahnentafel (Papierform)">Nr Ahnentafel</span>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25105135863614686)
,p_query_column_id=>14
,p_column_alias=>'GEBOREN_AM'
,p_column_display_sequence=>13
,p_column_heading=>'Geboren Am'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25105515184614686)
,p_query_column_id=>15
,p_column_alias=>'GESTORBEN_AM'
,p_column_display_sequence=>16
,p_column_heading=>'Gestorben Am'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25105862280614687)
,p_query_column_id=>16
,p_column_alias=>'BESCHREIBUNG'
,p_column_display_sequence=>19
,p_column_heading=>'Beschreibung'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25106307892614687)
,p_query_column_id=>17
,p_column_alias=>'RUFNAME'
,p_column_display_sequence=>12
,p_column_heading=>'Rufname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25106657710614687)
,p_query_column_id=>18
,p_column_alias=>'GEBURTSNAME'
,p_column_display_sequence=>11
,p_column_heading=>'Geburtsname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25107076447614687)
,p_query_column_id=>19
,p_column_alias=>'GEBURTSORT'
,p_column_display_sequence=>14
,p_column_heading=>'Geburtsort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25107531478614688)
,p_query_column_id=>20
,p_column_alias=>'GEBURTSLAND'
,p_column_display_sequence=>15
,p_column_heading=>'Geburtsland'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25107867965614688)
,p_query_column_id=>21
,p_column_alias=>'STERBEORT'
,p_column_display_sequence=>17
,p_column_heading=>'Sterbeort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25108320671614688)
,p_query_column_id=>22
,p_column_alias=>'STERBELAND'
,p_column_display_sequence=>18
,p_column_heading=>'Sterbeland'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25694433423318864)
,p_query_column_id=>23
,p_column_alias=>'ID'
,p_column_display_sequence=>25
,p_column_heading=>'Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25694697440318865)
,p_query_column_id=>24
,p_column_alias=>'DATEINAME'
,p_column_display_sequence=>20
,p_column_heading=>'Dateiname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25695119848318867)
,p_query_column_id=>25
,p_column_alias=>'VORSCHAU'
,p_column_display_sequence=>9
,p_column_heading=>'Vorschau'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:BILDER_TAB:THUMBNAIL:ID:::DATEINAME:::Inline:Download:'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25695516713318868)
,p_query_column_id=>26
,p_column_alias=>'BILDGROESSE'
,p_column_display_sequence=>26
,p_column_heading=>'Bildgroesse'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25695866763318869)
,p_query_column_id=>27
,p_column_alias=>'BREITE_PX'
,p_column_display_sequence=>27
,p_column_heading=>'Breite Px'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25696346583318871)
,p_query_column_id=>28
,p_column_alias=>'HOEHE_PX'
,p_column_display_sequence=>28
,p_column_heading=>'Hoehe Px'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25696702100318872)
,p_query_column_id=>29
,p_column_alias=>'BILD_AKTION'
,p_column_display_sequence=>29
,p_column_heading=>'Bild Aktion'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25128886769629846)
,p_plug_name=>'md_Eltern'
,p_region_name=>'md_Eltern'
,p_parent_plug_id=>wwv_flow_api.id(18738466311608578)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display:none"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>200
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25327967667840054)
,p_name=>'Kinder'
,p_parent_plug_id=>wwv_flow_api.id(18738466311608578)
,p_template=>wwv_flow_api.id(18644354730540667)
,p_display_sequence=>310
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_report_attributes=>'style="background-color:#FFB6C1"'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
' apex_item.checkbox2(2,E."PK_ELTERN") PK_Eltern,',
' E."PK_ELTERN" PK_ELTERN_DISPLAY,',
' P.TITEL,',
' E."FK_KIND",',
' :P121_PK_PERSON "FK_ELTERN",',
' E."CREATION_DATE",',
' E."CREATED_BY",',
' E."MODIFY_DATE",',
' E."MODIFIED_BY",',
' P.NAME,',
' P.VORNAME,',
' P.GESCHLECHT,',
' P.NR_AHNENTAFEL,',
' P.GEBOREN_AM,',
' P.GESTORBEN_AM,',
' P.BESCHREIBUNG,',
' P.RUFNAME,',
' P.GEBURTSNAME,',
' GO.ORT GEBURTSORT,',
' GO.LAND GEBURTSLAND,',
' SO.ORT STERBEORT,',
' SO.LAND STERBELAND',
',   bt.id',
',   bt.dateiname',
',   dbms_lob.getlength(bt.thumbnail) vorschau',
',   dbms_lob.getlength(bt.bild)      bildgroesse',
',   bt.breite_px',
',   bt.hoehe_px',
',   null as bild_aktion',
'from "#OWNER#"."ELTERN" E',
'  LEFT JOIN PERSON P ON P.PK_PERSON = E.FK_KIND',
'  LEFT JOIN ORT GO ON GO.PK_ORT = P.FK_GEBURTSORT',
'  LEFT JOIN ORT SO ON SO.PK_ORT = P.FK_STERBEORT',
'  left join person_bild pb on pb.fk_person = p.pk_person',
'  left join bilder_tab bt on bt.id = pb.fk_bild    ',
'WHERE FK_ELTERN = :P121_PK_PERSON'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25328291472840058)
,p_query_column_id=>1
,p_column_alias=>'PK_ELTERN'
,p_column_display_sequence=>1
,p_column_heading=>'<input type="checkbox" onClick="$f_CheckFirstColumn(this)"/>'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_pk_col_source_type=>'T'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25328707207840058)
,p_query_column_id=>2
,p_column_alias=>'PK_ELTERN_DISPLAY'
,p_column_display_sequence=>2
,p_column_heading=>'Pk Eltern Display'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25329134133840059)
,p_query_column_id=>3
,p_column_alias=>'TITEL'
,p_column_display_sequence=>3
,p_column_heading=>'Titel'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25329906984840059)
,p_query_column_id=>4
,p_column_alias=>'FK_KIND'
,p_column_display_sequence=>5
,p_column_heading=>'Fk Kind'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25329474668840059)
,p_query_column_id=>5
,p_column_alias=>'FK_ELTERN'
,p_column_display_sequence=>4
,p_column_heading=>'Fk Eltern'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25330281492840059)
,p_query_column_id=>6
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>21
,p_column_heading=>'Erstelldatum'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25330655242840060)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>22
,p_column_heading=>'Erstellt von'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25331095305840060)
,p_query_column_id=>8
,p_column_alias=>'MODIFY_DATE'
,p_column_display_sequence=>23
,p_column_heading=>'Änderungsdatum'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25331550775840060)
,p_query_column_id=>9
,p_column_alias=>'MODIFIED_BY'
,p_column_display_sequence=>24
,p_column_heading=>'Geändert durch'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25331920239840060)
,p_query_column_id=>10
,p_column_alias=>'NAME'
,p_column_display_sequence=>6
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#NAME#</b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25332269123840061)
,p_query_column_id=>11
,p_column_alias=>'VORNAME'
,p_column_display_sequence=>7
,p_column_heading=>'Vorname'
,p_use_as_row_header=>'N'
,p_column_html_expression=>' <b>#VORNAME#</b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25332654964840061)
,p_query_column_id=>12
,p_column_alias=>'GESCHLECHT'
,p_column_display_sequence=>8
,p_column_heading=>'Geschlecht'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b><i>#GESCHLECHT#</i></b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25333147944840061)
,p_query_column_id=>13
,p_column_alias=>'NR_AHNENTAFEL'
,p_column_display_sequence=>10
,p_column_heading=>'<span title="Nr der Person in der Ahnentafel (Papierform)">Nr Ahnentafel</span>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25336691721840063)
,p_query_column_id=>14
,p_column_alias=>'GEBOREN_AM'
,p_column_display_sequence=>13
,p_column_heading=>'Geboren Am'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25333525057840061)
,p_query_column_id=>15
,p_column_alias=>'GESTORBEN_AM'
,p_column_display_sequence=>16
,p_column_heading=>'Gestorben Am'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25333881847840062)
,p_query_column_id=>16
,p_column_alias=>'BESCHREIBUNG'
,p_column_display_sequence=>19
,p_column_heading=>'Beschreibung'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25334294291840062)
,p_query_column_id=>17
,p_column_alias=>'RUFNAME'
,p_column_display_sequence=>12
,p_column_heading=>'Rufname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25334657239840062)
,p_query_column_id=>18
,p_column_alias=>'GEBURTSNAME'
,p_column_display_sequence=>11
,p_column_heading=>'Geburtsname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25335091721840062)
,p_query_column_id=>19
,p_column_alias=>'GEBURTSORT'
,p_column_display_sequence=>14
,p_column_heading=>'Geburtsort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25335529622840063)
,p_query_column_id=>20
,p_column_alias=>'GEBURTSLAND'
,p_column_display_sequence=>15
,p_column_heading=>'Geburtsland'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25335897292840063)
,p_query_column_id=>21
,p_column_alias=>'STERBEORT'
,p_column_display_sequence=>17
,p_column_heading=>'Sterbeort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25336352755840063)
,p_query_column_id=>22
,p_column_alias=>'STERBELAND'
,p_column_display_sequence=>18
,p_column_heading=>'Sterbeland'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25864650142458470)
,p_query_column_id=>23
,p_column_alias=>'ID'
,p_column_display_sequence=>25
,p_column_heading=>'Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25864942941458473)
,p_query_column_id=>24
,p_column_alias=>'DATEINAME'
,p_column_display_sequence=>20
,p_column_heading=>'Dateiname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25865268603458474)
,p_query_column_id=>25
,p_column_alias=>'VORSCHAU'
,p_column_display_sequence=>9
,p_column_heading=>'Vorschau'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:BILDER_TAB:THUMBNAIL:ID:::DATEINAME:::Inline:Download:'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25865747858458475)
,p_query_column_id=>26
,p_column_alias=>'BILDGROESSE'
,p_column_display_sequence=>26
,p_column_heading=>'Bildgroesse'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25866121021458477)
,p_query_column_id=>27
,p_column_alias=>'BREITE_PX'
,p_column_display_sequence=>27
,p_column_heading=>'Breite Px'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25866528651458478)
,p_query_column_id=>28
,p_column_alias=>'HOEHE_PX'
,p_column_display_sequence=>28
,p_column_heading=>'Hoehe Px'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25866943957458479)
,p_query_column_id=>29
,p_column_alias=>'BILD_AKTION'
,p_column_display_sequence=>29
,p_column_heading=>'Bild Aktion'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25365700593872551)
,p_plug_name=>'md_Kinder'
,p_region_name=>'md_Kinder'
,p_parent_plug_id=>wwv_flow_api.id(18738466311608578)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display:none"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>320
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18738674276610870)
,p_plug_name=>'Geschwister'
,p_parent_plug_id=>wwv_flow_api.id(18731963129427883)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25959185453513712)
,p_name=>'Geschwister'
,p_parent_plug_id=>wwv_flow_api.id(18738674276610870)
,p_template=>wwv_flow_api.id(18644354730540667)
,p_display_sequence=>330
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_report_attributes=>'style="background-color:#ADD8E6"'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
' apex_item.checkbox2(3, G."PK_GESCHWISTER") PK_GESCHWISTER,',
' G."PK_GESCHWISTER" PK_GESCHWISTER_DISPLAY,',
' P.TITEL,',
' G."FK_GESCHWISTER",',
' :P121_PK_PERSON "FK_PERSON",',
' G."CREATION_DATE",',
' G."CREATED_BY",',
' G."MODIFY_DATE",',
' G."MODIFIED_BY",',
' P.NAME,',
' P.VORNAME,',
' P.GESCHLECHT,',
' P.NR_AHNENTAFEL,',
' P.GEBOREN_AM,',
' P.GESTORBEN_AM,',
' TO_CHAR(SUBSTR(P.BESCHREIBUNG,1,2000)) BESCHREIBUNG,',
' P.RUFNAME,',
' P.GEBURTSNAME,',
' GO.ORT GEBURTSORT,',
' GO.LAND GEBURTSLAND,',
' SO.ORT STERBEORT,',
' SO.LAND STERBELAND',
',   bt.id',
',   bt.dateiname',
',   dbms_lob.getlength(bt.thumbnail) vorschau',
',   dbms_lob.getlength(bt.bild)      bildgroesse',
',   bt.breite_px',
',   bt.hoehe_px',
',   null as bild_aktion',
'from "GESCHWISTER" G',
'  LEFT JOIN PERSON P ON P.PK_PERSON = G.FK_GESCHWISTER',
'  LEFT JOIN ORT GO ON GO.PK_ORT = P.FK_GEBURTSORT',
'  LEFT JOIN ORT SO ON SO.PK_ORT = P.FK_STERBEORT',
'  left join person_bild pb on pb.fk_person = p.pk_person',
'  left join bilder_tab bt on bt.id = pb.fk_bild    ',
'WHERE g.FK_PERSON = :P121_PK_PERSON'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_header=>'<div style="Overflow:auto;height:90%">'
,p_footer=>'</div>'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25980909651544558)
,p_query_column_id=>1
,p_column_alias=>'PK_GESCHWISTER'
,p_column_display_sequence=>1
,p_column_heading=>'<input type="checkbox" onClick="$f_CheckFirstColumn(this)"/>'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25981159578544565)
,p_query_column_id=>2
,p_column_alias=>'PK_GESCHWISTER_DISPLAY'
,p_column_display_sequence=>27
,p_column_heading=>'Pk Geschwister Display'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25960286703513807)
,p_query_column_id=>3
,p_column_alias=>'TITEL'
,p_column_display_sequence=>2
,p_column_heading=>'Titel'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25981574079544567)
,p_query_column_id=>4
,p_column_alias=>'FK_GESCHWISTER'
,p_column_display_sequence=>28
,p_column_heading=>'Fk Geschwister'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25981993453544569)
,p_query_column_id=>5
,p_column_alias=>'FK_PERSON'
,p_column_display_sequence=>29
,p_column_heading=>'Fk Person'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25961553264513810)
,p_query_column_id=>6
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>18
,p_column_heading=>'Erstelldatum'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25961930923513811)
,p_query_column_id=>7
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>19
,p_column_heading=>'Erstellt von'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25962291808513812)
,p_query_column_id=>8
,p_column_alias=>'MODIFY_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Änderungsdatum'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25962690575513814)
,p_query_column_id=>9
,p_column_alias=>'MODIFIED_BY'
,p_column_display_sequence=>21
,p_column_heading=>'Geändert durch'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25963152264513815)
,p_query_column_id=>10
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#NAME#</b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25963518942513816)
,p_query_column_id=>11
,p_column_alias=>'VORNAME'
,p_column_display_sequence=>4
,p_column_heading=>'Vorname'
,p_use_as_row_header=>'N'
,p_column_html_expression=>' <b>#VORNAME#</b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25963922701513817)
,p_query_column_id=>12
,p_column_alias=>'GESCHLECHT'
,p_column_display_sequence=>5
,p_column_heading=>'Geschlecht'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b><i>#GESCHLECHT#</i></b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25964344442513818)
,p_query_column_id=>13
,p_column_alias=>'NR_AHNENTAFEL'
,p_column_display_sequence=>7
,p_column_heading=>'<span title="Nr der Person in der Ahnentafel (Papierform)">Nr Ahnentafel</span>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25967886450513828)
,p_query_column_id=>14
,p_column_alias=>'GEBOREN_AM'
,p_column_display_sequence=>10
,p_column_heading=>'Geboren Am'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25964712311513820)
,p_query_column_id=>15
,p_column_alias=>'GESTORBEN_AM'
,p_column_display_sequence=>13
,p_column_heading=>'Gestorben Am'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
end;
/
begin
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25965134829513821)
,p_query_column_id=>16
,p_column_alias=>'BESCHREIBUNG'
,p_column_display_sequence=>16
,p_column_heading=>'Beschreibung'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25965553690513822)
,p_query_column_id=>17
,p_column_alias=>'RUFNAME'
,p_column_display_sequence=>9
,p_column_heading=>'Rufname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25965870788513823)
,p_query_column_id=>18
,p_column_alias=>'GEBURTSNAME'
,p_column_display_sequence=>8
,p_column_heading=>'Geburtsname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25966268607513824)
,p_query_column_id=>19
,p_column_alias=>'GEBURTSORT'
,p_column_display_sequence=>11
,p_column_heading=>'Geburtsort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25966737201513825)
,p_query_column_id=>20
,p_column_alias=>'GEBURTSLAND'
,p_column_display_sequence=>12
,p_column_heading=>'Geburtsland'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25967142109513826)
,p_query_column_id=>21
,p_column_alias=>'STERBEORT'
,p_column_display_sequence=>14
,p_column_heading=>'Sterbeort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25967468426513827)
,p_query_column_id=>22
,p_column_alias=>'STERBELAND'
,p_column_display_sequence=>15
,p_column_heading=>'Sterbeland'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25968256285513830)
,p_query_column_id=>23
,p_column_alias=>'ID'
,p_column_display_sequence=>22
,p_column_heading=>'Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25968667835513831)
,p_query_column_id=>24
,p_column_alias=>'DATEINAME'
,p_column_display_sequence=>17
,p_column_heading=>'Dateiname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25969099935513833)
,p_query_column_id=>25
,p_column_alias=>'VORSCHAU'
,p_column_display_sequence=>6
,p_column_heading=>'Vorschau'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:BILDER_TAB:THUMBNAIL:ID:::DATEINAME:::Inline:Download:'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25969510615513834)
,p_query_column_id=>26
,p_column_alias=>'BILDGROESSE'
,p_column_display_sequence=>23
,p_column_heading=>'Bildgroesse'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25969889244513835)
,p_query_column_id=>27
,p_column_alias=>'BREITE_PX'
,p_column_display_sequence=>24
,p_column_heading=>'Breite Px'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25970309884513836)
,p_query_column_id=>28
,p_column_alias=>'HOEHE_PX'
,p_column_display_sequence=>25
,p_column_heading=>'Hoehe Px'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25970742831513837)
,p_query_column_id=>29
,p_column_alias=>'BILD_AKTION'
,p_column_display_sequence=>26
,p_column_heading=>'Bild Aktion'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26027577584590570)
,p_plug_name=>'md_Geschwister'
,p_region_name=>'md_Geschwister'
,p_parent_plug_id=>wwv_flow_api.id(18738674276610870)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display:none"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>340
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18738887089614552)
,p_plug_name=>'Familie'
,p_parent_plug_id=>wwv_flow_api.id(18731963129427883)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24269169551417698)
,p_name=>'Familien'
,p_parent_plug_id=>wwv_flow_api.id(18738887089614552)
,p_template=>wwv_flow_api.id(18644354730540667)
,p_display_sequence=>240
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.Familie',
', pf.Herkunft',
', pf.kommentar',
', pf.pk_person_familie',
', pf.fk_familie',
'from Person_Familie pf',
' join Familie f on f.pk_familie = pf.fk_familie',
'where pf.fK_person= :P121_PK_PERSON'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24269472389417767)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24299392306426449)
,p_query_column_id=>2
,p_column_alias=>'FAMILIE'
,p_column_display_sequence=>2
,p_column_heading=>'Familie'
,p_use_as_row_header=>'N'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24299657096426450)
,p_query_column_id=>3
,p_column_alias=>'HERKUNFT'
,p_column_display_sequence=>3
,p_column_heading=>'Herkunft'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Herkunft',
'from Person_familie',
'Group by herkunft'))
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24278702477417788)
,p_query_column_id=>4
,p_column_alias=>'KOMMENTAR'
,p_column_display_sequence=>4
,p_column_heading=>'Kommentar'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'YES'
,p_report_column_width=>500
,p_column_width=>80
,p_column_height=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24599428684456334)
,p_query_column_id=>5
,p_column_alias=>'PK_PERSON_FAMILIE'
,p_column_display_sequence=>5
,p_column_heading=>'Pk Person Familie'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24599738566456336)
,p_query_column_id=>6
,p_column_alias=>'FK_FAMILIE'
,p_column_display_sequence=>6
,p_column_heading=>'Fk Familie'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUPKEY_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'Familie,',
'pk_familie',
'from Familie',
''))
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24609257539461719)
,p_plug_name=>'md_familien'
,p_region_name=>'md_Familien'
,p_parent_plug_id=>wwv_flow_api.id(18738887089614552)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display:none"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>250
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18739061248616533)
,p_plug_name=>'Lebenspartner'
,p_parent_plug_id=>wwv_flow_api.id(18731963129427883)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(26152265546054011)
,p_name=>'Lebenspartner'
,p_parent_plug_id=>wwv_flow_api.id(18739061248616533)
,p_template=>wwv_flow_api.id(18644354730540667)
,p_display_sequence=>350
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_report_attributes=>'style="background-color:#DCDCDC"'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
' apex_item.checkbox2(4, lb.pk_lebenspartner) as lebenspartner_id	',
', case when p.pk_person is not null then p.pk_person else plb.pk_person end as leb',
', nvl(p.pk_person, plb.pk_person) as pk_person',
', nvl(p.NAME, plb.name) as name',
', nvl(p.VORNAME, plb.vorname) as vorname',
', nvl(p.GESCHLECHT, plb.geschlecht) as geschlecht',
', nvl(p.GEBOREN_AM, plb.geboren_am) as geboren_am',
', nvl(p.GESTORBEN_AM, plb.gestorben_am) as gestorben_am',
', nvl(p.GEBURTSNAME, plb.geburtsname) as geburtsname',
', nvl(p.TITEL, plb.titel) as titel',
', nvl(p.ADELSTITEL, plb.adelstitel) as adelstitel',
', nvl(p.RUFNAME, plb.rufname) as rufname',
', nvl(p.NR_AHNENTAFEL, plb.nr_ahnentafel) as nr_ahnentafel',
', lb.status',
', lb.datum_standesamtlich',
', lb.standesamt',
', lb.datum_kirchlich',
', lb.kirche',
', lb.KOMMENTAR',
', lb.fk_ort',
', o.ort',
', o.land',
', nvl(pgo.ort, plbgo.ort) geburtsort',
', nvl(pso.ort, plbso.ort) sterbeort',
', nvl(pgo.land, plbgo.land) geburtsland',
', nvl(pso.land, plbso.land) sterbeland',
', nvl(bt.id, btplb.id) id',
', nvl(bt.dateiname, btplb.dateiname) dateiname',
', nvl(dbms_lob.getlength(bt.thumbnail),  dbms_lob.getlength( btplb.thumbnail)) vorschau',
', nvl(dbms_lob.getlength(bt.bild), dbms_lob.getlength( btplb.bild))      bildgroesse',
', nvl(bt.breite_px, btplb.breite_px) breite_px',
', nvl(bt.hoehe_px,  btplb.hoehe_px)  hoehe_px',
'from Lebenspartner lb',
' left join (select * from Person where pk_person <> :P121_PK_PERSON)  p on lb.fk_person = p.pk_person',
' left join (select * from Person where pk_person <> :P121_PK_PERSON) plb on lb.fk_lebenspartner = plb.pk_person',
' left join ort o on lb.fk_ort = o.pk_ort ',
' left join ort pgo on pgo.pk_ort = p.fk_geburtsort',
' left join ort pso on pso.pk_ort = p.fk_sterbeort',
' left join ort plbgo on plbgo.pk_ort = plb.fk_geburtsort',
' left join ort plbso on plbso.pk_ort = plb.fk_sterbeort',
' left join person_bild pb on pb.fk_person = p.pk_person',
' left join bilder_tab bt on bt.id = pb.fk_bild ',
' left join person_bild pbplb on pbplb.fk_person = plb.pk_person',
' left join bilder_tab btplb on btplb.id = pbplb.fk_bild ',
'where (lb.fk_lebenspartner = :P121_PK_PERSON',
' or lb.fk_person =:P121_PK_PERSON)'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_header=>'<div style="Overflow:auto;height:90%">'
,p_footer=>'</div>'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26179224750138611)
,p_query_column_id=>1
,p_column_alias=>'LEBENSPARTNER_ID'
,p_column_display_sequence=>1
,p_column_heading=>'<input type="checkbox" onClick="$f_CheckFirstColumn(this)"/>'
,p_use_as_row_header=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26179547153138624)
,p_query_column_id=>2
,p_column_alias=>'LEB'
,p_column_display_sequence=>30
,p_column_heading=>'Leb'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26179917940138626)
,p_query_column_id=>3
,p_column_alias=>'PK_PERSON'
,p_column_display_sequence=>2
,p_column_heading=>'PK_PERSON'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26154513499054054)
,p_query_column_id=>4
,p_column_alias=>'NAME'
,p_column_display_sequence=>4
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#NAME#</b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26154869887054055)
,p_query_column_id=>5
,p_column_alias=>'VORNAME'
,p_column_display_sequence=>5
,p_column_heading=>'Vorname'
,p_use_as_row_header=>'N'
,p_column_html_expression=>' <b>#VORNAME#</b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26155310058054056)
,p_query_column_id=>6
,p_column_alias=>'GESCHLECHT'
,p_column_display_sequence=>6
,p_column_heading=>'Geschlecht'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b><i>#GESCHLECHT#</i></b>'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26159270483054070)
,p_query_column_id=>7
,p_column_alias=>'GEBOREN_AM'
,p_column_display_sequence=>11
,p_column_heading=>'Geboren Am'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26156080189054060)
,p_query_column_id=>8
,p_column_alias=>'GESTORBEN_AM'
,p_column_display_sequence=>14
,p_column_heading=>'Gestorben Am'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY HH24:MI:SS'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26157303599054063)
,p_query_column_id=>9
,p_column_alias=>'GEBURTSNAME'
,p_column_display_sequence=>9
,p_column_heading=>'Geburtsname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26152625176054045)
,p_query_column_id=>10
,p_column_alias=>'TITEL'
,p_column_display_sequence=>3
,p_column_heading=>'Titel'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26180272522138627)
,p_query_column_id=>11
,p_column_alias=>'ADELSTITEL'
,p_column_display_sequence=>31
,p_column_heading=>'Adelstitel'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26156953980054062)
,p_query_column_id=>12
,p_column_alias=>'RUFNAME'
,p_column_display_sequence=>10
,p_column_heading=>'Rufname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26155673794054058)
,p_query_column_id=>13
,p_column_alias=>'NR_AHNENTAFEL'
,p_column_display_sequence=>8
,p_column_heading=>'<span title="Nr der Person in der Ahnentafel (Papierform)">Nr Ahnentafel</span>'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26180718833138629)
,p_query_column_id=>14
,p_column_alias=>'STATUS'
,p_column_display_sequence=>19
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_column_html_expression=>'<b>#STATUS#</b>'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26181134948138631)
,p_query_column_id=>15
,p_column_alias=>'DATUM_STANDESAMTLICH'
,p_column_display_sequence=>18
,p_column_heading=>'Datum Standesamtlich'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26181541633138633)
,p_query_column_id=>16
,p_column_alias=>'STANDESAMT'
,p_column_display_sequence=>20
,p_column_heading=>'Standesamt'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26181914721138634)
,p_query_column_id=>17
,p_column_alias=>'DATUM_KIRCHLICH'
,p_column_display_sequence=>21
,p_column_heading=>'Datum Kirchlich'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26182256398138636)
,p_query_column_id=>18
,p_column_alias=>'KIRCHE'
,p_column_display_sequence=>22
,p_column_heading=>'Kirche'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26182689272138638)
,p_query_column_id=>19
,p_column_alias=>'KOMMENTAR'
,p_column_display_sequence=>23
,p_column_heading=>'Kommentar'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26183071154138639)
,p_query_column_id=>20
,p_column_alias=>'FK_ORT'
,p_column_display_sequence=>32
,p_column_heading=>'Fk Ort'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26183497290138641)
,p_query_column_id=>21
,p_column_alias=>'ORT'
,p_column_display_sequence=>24
,p_column_heading=>'Ort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26183934965138643)
,p_query_column_id=>22
,p_column_alias=>'LAND'
,p_column_display_sequence=>25
,p_column_heading=>'Land'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26157697861054064)
,p_query_column_id=>23
,p_column_alias=>'GEBURTSORT'
,p_column_display_sequence=>12
,p_column_heading=>'Geburtsort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26158489048054067)
,p_query_column_id=>24
,p_column_alias=>'STERBEORT'
,p_column_display_sequence=>15
,p_column_heading=>'Sterbeort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26158079227054066)
,p_query_column_id=>25
,p_column_alias=>'GEBURTSLAND'
,p_column_display_sequence=>13
,p_column_heading=>'Geburtsland'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26158936361054068)
,p_query_column_id=>26
,p_column_alias=>'STERBELAND'
,p_column_display_sequence=>16
,p_column_heading=>'Sterbeland'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26159714272054071)
,p_query_column_id=>27
,p_column_alias=>'ID'
,p_column_display_sequence=>26
,p_column_heading=>'Id'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26160138861054072)
,p_query_column_id=>28
,p_column_alias=>'DATEINAME'
,p_column_display_sequence=>17
,p_column_heading=>'Dateiname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26160469545054074)
,p_query_column_id=>29
,p_column_alias=>'VORSCHAU'
,p_column_display_sequence=>7
,p_column_heading=>'Vorschau'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:BILDER_TAB:THUMBNAIL:ID:::DATEINAME:::Inline:Download:'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26160930410054075)
,p_query_column_id=>30
,p_column_alias=>'BILDGROESSE'
,p_column_display_sequence=>27
,p_column_heading=>'Bildgroesse'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26161300733054077)
,p_query_column_id=>31
,p_column_alias=>'BREITE_PX'
,p_column_display_sequence=>28
,p_column_heading=>'Breite Px'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(26161684669054078)
,p_query_column_id=>32
,p_column_alias=>'HOEHE_PX'
,p_column_display_sequence=>29
,p_column_heading=>'Hoehe Px'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(26409585790279508)
,p_plug_name=>'md_Lebenspartner'
,p_region_name=>'md_Lebenspartner'
,p_parent_plug_id=>wwv_flow_api.id(18739061248616533)
,p_region_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display:none"'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>360
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18739568520618670)
,p_plug_name=>'Beruf'
,p_parent_plug_id=>wwv_flow_api.id(18731963129427883)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24842771340698324)
,p_name=>'Beruf'
,p_parent_plug_id=>wwv_flow_api.id(18739568520618670)
,p_template=>wwv_flow_api.id(18644054939540667)
,p_display_sequence=>260
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PK_PERSON_BERUF',
', BERUF',
', FK_PERSON',
', KOMMENTAR',
', REIHENFOLGE',
', VON',
', BIS',
', CREATION_DATE',
', CREATED_BY',
', MODIFY_DATE',
', MODIFIED_BY',
'from person_beruf',
'where fK_person= :P121_PK_PERSON'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24843939085698328)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24851420554703877)
,p_query_column_id=>2
,p_column_alias=>'PK_PERSON_BERUF'
,p_column_display_sequence=>2
,p_column_heading=>'Pk Person Beruf'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24851792408703877)
,p_query_column_id=>3
,p_column_alias=>'BERUF'
,p_column_display_sequence=>4
,p_column_heading=>'Beruf'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_column_height=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24852162816703878)
,p_query_column_id=>4
,p_column_alias=>'FK_PERSON'
,p_column_display_sequence=>3
,p_column_heading=>'Fk Person'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24844266951698329)
,p_query_column_id=>5
,p_column_alias=>'KOMMENTAR'
,p_column_display_sequence=>8
,p_column_heading=>'Kommentar'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'YES'
,p_column_height=>3
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24852626462703878)
,p_query_column_id=>6
,p_column_alias=>'REIHENFOLGE'
,p_column_display_sequence=>5
,p_column_heading=>'Reihenfolge'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24852981727703878)
,p_query_column_id=>7
,p_column_alias=>'VON'
,p_column_display_sequence=>6
,p_column_heading=>'Von'
,p_use_as_row_header=>'N'
,p_display_as=>'PICK_DATE_DD_MM_YYYY_HH24_MI_DOT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24853371651703879)
,p_query_column_id=>8
,p_column_alias=>'BIS'
,p_column_display_sequence=>7
,p_column_heading=>'Bis'
,p_use_as_row_header=>'N'
,p_display_as=>'PICK_DATE_DD_MM_YYYY_HH24_MI_DOT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24853772359703879)
,p_query_column_id=>9
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Creation Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYY HH24:MI:SS'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24854167829703879)
,p_query_column_id=>10
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Created By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24854601976703879)
,p_query_column_id=>11
,p_column_alias=>'MODIFY_DATE'
,p_column_display_sequence=>11
,p_column_heading=>'Modify Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYY HH24:MI:SS'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24855052806703880)
,p_query_column_id=>12
,p_column_alias=>'MODIFIED_BY'
,p_column_display_sequence=>12
,p_column_heading=>'Modified By'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25049924558977313)
,p_name=>'md_Berufe'
,p_region_name=>'md_Beruf'
,p_parent_plug_id=>wwv_flow_api.id(18739568520618670)
,p_template=>wwv_flow_api.id(18644054939540667)
,p_display_sequence=>290
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display:none"'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BERUF',
'FROM PERSON_BERUF',
'GROUP BY BERUF'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25050502819977328)
,p_query_column_id=>1
,p_column_alias=>'BERUF'
,p_column_display_sequence=>1
,p_column_heading=>'Beruf'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18739774407620318)
,p_plug_name=>'Religion'
,p_parent_plug_id=>wwv_flow_api.id(18731963129427883)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25001191487907032)
,p_name=>'Religion'
,p_parent_plug_id=>wwv_flow_api.id(18739774407620318)
,p_template=>wwv_flow_api.id(18644054939540667)
,p_display_sequence=>280
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PK_PERSON_religion',
', religion',
', FK_PERSON',
', ausgetreten_am',
', status',
', CREATION_DATE',
', CREATED_BY',
', MODIFY_DATE',
', MODIFIED_BY',
'from person_religion',
'where fK_person= :P121_PK_PERSON'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25001464174907033)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25010550274925376)
,p_query_column_id=>2
,p_column_alias=>'PK_PERSON_RELIGION'
,p_column_display_sequence=>10
,p_column_heading=>'Pk Person Religion'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25010868670925377)
,p_query_column_id=>3
,p_column_alias=>'RELIGION'
,p_column_display_sequence=>2
,p_column_heading=>'Religion'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25002354109907034)
,p_query_column_id=>4
,p_column_alias=>'FK_PERSON'
,p_column_display_sequence=>5
,p_column_heading=>'Fk Person'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25011346549925377)
,p_query_column_id=>5
,p_column_alias=>'AUSGETRETEN_AM'
,p_column_display_sequence=>4
,p_column_heading=>'Ausgetreten Am'
,p_use_as_row_header=>'N'
,p_display_as=>'PICK_DATE_DD_MM_YYYY_HH24_MI_DOT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25011671886925377)
,p_query_column_id=>6
,p_column_alias=>'STATUS'
,p_column_display_sequence=>3
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25003952597907035)
,p_query_column_id=>7
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Creation Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYY HH24:MI:SS'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25004283566907036)
,p_query_column_id=>8
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Created By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25004742663907036)
,p_query_column_id=>9
,p_column_alias=>'MODIFY_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Modify Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYY HH24:MI:SS'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25005118665907036)
,p_query_column_id=>10
,p_column_alias=>'MODIFIED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Modified By'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(25069346926409930)
,p_name=>'Liste der Religionen'
,p_parent_plug_id=>wwv_flow_api.id(18739774407620318)
,p_template=>wwv_flow_api.id(18644054939540667)
,p_display_sequence=>300
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select religion',
'from person_religion',
'group by religion'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
end;
/
begin
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25069814560409949)
,p_query_column_id=>1
,p_column_alias=>'RELIGION'
,p_column_display_sequence=>1
,p_column_heading=>'Liste der Religionen'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18763669856331247)
,p_plug_name=>'Wohnort'
,p_parent_plug_id=>wwv_flow_api.id(18731963129427883)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22529493904536177)
,p_plug_name=>'md_Orte'
,p_region_name=>'md_Orte'
,p_parent_plug_id=>wwv_flow_api.id(18763669856331247)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display:none"'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>190
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(24965585858829294)
,p_name=>'Wohnorte'
,p_parent_plug_id=>wwv_flow_api.id(18763669856331247)
,p_template=>wwv_flow_api.id(18644054939540667)
,p_display_sequence=>270
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PK_PERSON_WOHNORT',
', FK_WOHNORT',
', FK_PERSON',
', KOMMENTAR',
', REIHENFOLGE',
', VON',
', BIS',
', CREATION_DATE',
', CREATED_BY',
', MODIFY_DATE',
', MODIFIED_BY',
'from person_wohnort',
'where fK_person= :P121_PK_PERSON'))
,p_source_type=>'NATIVE_TABFORM'
,p_ajax_enabled=>'N'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>10
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24965925015829302)
,p_query_column_id=>1
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_column_heading=>'Select Row'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24978402032839501)
,p_query_column_id=>2
,p_column_alias=>'PK_PERSON_WOHNORT'
,p_column_display_sequence=>11
,p_column_heading=>'Pk Person Wohnort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24978820436839501)
,p_query_column_id=>3
,p_column_alias=>'FK_WOHNORT'
,p_column_display_sequence=>12
,p_column_heading=>'Fk Wohnort'
,p_use_as_row_header=>'N'
,p_display_as=>'POPUPKEY_QUERY'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ort || '' '' Land',
', pk_ort',
'from ort',
'order by ort, land'))
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24967547264829303)
,p_query_column_id=>4
,p_column_alias=>'FK_PERSON'
,p_column_display_sequence=>2
,p_column_heading=>'Fk Person'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24966268525829302)
,p_query_column_id=>5
,p_column_alias=>'KOMMENTAR'
,p_column_display_sequence=>8
,p_column_heading=>'Kommentar'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXTAREA'
,p_lov_show_nulls=>'YES'
,p_column_height=>3
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24967868333829304)
,p_query_column_id=>6
,p_column_alias=>'REIHENFOLGE'
,p_column_display_sequence=>3
,p_column_heading=>'Reihenfolge'
,p_use_as_row_header=>'N'
,p_display_as=>'TEXT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24968321009829304)
,p_query_column_id=>7
,p_column_alias=>'VON'
,p_column_display_sequence=>4
,p_column_heading=>'Von'
,p_use_as_row_header=>'N'
,p_display_as=>'PICK_DATE_DD_MM_YYYY_HH24_MI_DOT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24968676296829304)
,p_query_column_id=>8
,p_column_alias=>'BIS'
,p_column_display_sequence=>5
,p_column_heading=>'Bis'
,p_use_as_row_header=>'N'
,p_display_as=>'PICK_DATE_DD_MM_YYYY_HH24_MI_DOT'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24969094556829304)
,p_query_column_id=>9
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Creation Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYY HH24:MI:SS'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24969504391829305)
,p_query_column_id=>10
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Created By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24969907115829305)
,p_query_column_id=>11
,p_column_alias=>'MODIFY_DATE'
,p_column_display_sequence=>9
,p_column_heading=>'Modify Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYY HH24:MI:SS'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(24970262096829305)
,p_query_column_id=>12
,p_column_alias=>'MODIFIED_BY'
,p_column_display_sequence=>10
,p_column_heading=>'Modified By'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18809355794863107)
,p_name=>'stammbaum'
,p_parent_plug_id=>wwv_flow_api.id(18731963129427883)
,p_template=>wwv_flow_api.id(18644354730540667)
,p_display_sequence=>180
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>'select * from table(get_tree.f_get_stamm(:P121_PK_PERSON)) ;'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18809675994863110)
,p_query_column_id=>1
,p_column_alias=>'PERS'
,p_column_display_sequence=>1
,p_column_heading=>'PERS'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18809855845863110)
,p_query_column_id=>2
,p_column_alias=>'LEV'
,p_column_display_sequence=>2
,p_column_heading=>'LEV'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18810778541314476)
,p_query_column_id=>3
,p_column_alias=>'STAMM'
,p_column_display_sequence=>3
,p_column_heading=>'Stamm'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24280739228417791)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24269169551417698)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24845545359698330)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24842771340698324)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24970726635829306)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24965585858829294)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25006662748907039)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25001191487907032)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Cancel'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24280286588417790)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24269169551417698)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Speichern'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24846677321698331)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24842771340698324)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Speichern'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24971924631829307)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24965585858829294)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Speichern'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25007470519907039)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25001191487907032)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Speichern'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25144489281692346)
,p_button_sequence=>310
,p_button_plug_id=>wwv_flow_api.id(25128886769629846)
,p_button_name=>'P121_ADD_ELTERNTEIL'
,p_button_static_id=>'P121_BTN_ADD_ELTERNTEIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Hinzfügen'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25365989628872551)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_api.id(25365700593872551)
,p_button_name=>'P121_ADD_KINDER'
,p_button_static_id=>'P121_BTN_ADD_KINDER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Hinzfügen'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26027943333590584)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_api.id(26027577584590570)
,p_button_name=>'P121_ADD_GESCHWISTER'
,p_button_static_id=>'P121_BTN_ADD_GESCHWISTER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Hinzfügen'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26409895990279534)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_api.id(26409585790279508)
,p_button_name=>'P121_ADD_LEBENSPARTNER'
,p_button_static_id=>'P121_BTN_ADD_LEBENSPARTNER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Hinzfügen'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24281473266417792)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24269169551417698)
,p_button_name=>'ADD_Familien'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'+'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24846339767698331)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24842771340698324)
,p_button_name=>'ADD_Beruf'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'+'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24971460582829307)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(24965585858829294)
,p_button_name=>'ADD_Wohnorte'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'+'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25007098156907039)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(25001191487907032)
,p_button_name=>'ADD_Religion'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'+'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.widget.tabular.addRow();'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24281150893417792)
,p_button_sequence=>45
,p_button_plug_id=>wwv_flow_api.id(24269169551417698)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'-'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24845922522698330)
,p_button_sequence=>45
,p_button_plug_id=>wwv_flow_api.id(24842771340698324)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'-'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24971110462829307)
,p_button_sequence=>45
,p_button_plug_id=>wwv_flow_api.id(24965585858829294)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'-'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25006331502907038)
,p_button_sequence=>45
,p_button_plug_id=>wwv_flow_api.id(25001191487907032)
,p_button_name=>'MULTI_ROW_DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'-'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''MULTI_ROW_DELETE'');'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25145584465704215)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_api.id(25099314597614657)
,p_button_name=>'ADD_ELTERN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'+'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25337068372840064)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_api.id(25327967667840054)
,p_button_name=>'ADD_KINDER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'+'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25971084085513840)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_api.id(25959185453513712)
,p_button_name=>'ADD_GESCHWISTER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'+'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26164140132054087)
,p_button_sequence=>320
,p_button_plug_id=>wwv_flow_api.id(26152265546054011)
,p_button_name=>'ADD_LEBENSPARTNER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'+'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25169694927215938)
,p_button_sequence=>330
,p_button_plug_id=>wwv_flow_api.id(25099314597614657)
,p_button_name=>'REMOVE_ELTERN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'-'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25337479865840065)
,p_button_sequence=>330
,p_button_plug_id=>wwv_flow_api.id(25327967667840054)
,p_button_name=>'REMOVE_KINDER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'-'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25971486497513844)
,p_button_sequence=>330
,p_button_plug_id=>wwv_flow_api.id(25959185453513712)
,p_button_name=>'REMOVE_GESCHWISTER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'-'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(26164513673054092)
,p_button_sequence=>330
,p_button_plug_id=>wwv_flow_api.id(26152265546054011)
,p_button_name=>'REMOVE_LEBENSPARTNER'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'-'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22529773448536327)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22529493904536177)
,p_button_name=>'SAVE_ORTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Speichern'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22530144042536337)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22529493904536177)
,p_button_name=>'CANCEL_ORTE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Abbrechen'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22530519859536338)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22529493904536177)
,p_button_name=>'DELETE_ORTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Löschen'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_execute_validations=>'N'
,p_button_condition=>'P121_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18812955560421241)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18731963129427883)
,p_button_name=>'STAMMBAUM'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Stammbaum'
,p_button_position=>'TOP'
,p_button_redirect_url=>'javascript:popUp2(''f?p=&APP_ID.:122:&SESSION.:::RP:'',1300,1300);'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22079235160477000)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18731963129427883)
,p_button_name=>'SAVE_PERS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Speichern'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22089239294479898)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18731963129427883)
,p_button_name=>'DELETE_PERS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Löschen'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22549364324640313)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(18763669856331247)
,p_button_name=>'ORTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Orte'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22579957253927247)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(18738887089614552)
,p_button_name=>'FAMILIEN'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Familien'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24669182465405810)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(24609257539461719)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Abbrechen'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24679185333414344)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_api.id(24609257539461719)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Speichern'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(24689212614422541)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(24609257539461719)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Löschen'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(25051658751992612)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(18739568520618670)
,p_button_name=>'LIST_BERUFE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Liste der Berufe'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18732281727430989)
,p_name=>'P121_PK_PERSON'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18731963129427883)
,p_prompt=>'ID:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18732471806435589)
,p_name=>'P121_NR_AHNENTAFEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18731963129427883)
,p_prompt=>'Nr Ahnentafel:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18732763180439543)
,p_name=>'P121_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18731963129427883)
,p_prompt=>'Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="font-weight:bold;"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18732958867441575)
,p_name=>'P121_VORNAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(18731963129427883)
,p_prompt=>'Vorname:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'style="font-weight:bold;"'
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18733169637451779)
,p_name=>'P121_GESCHLECHT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(18731963129427883)
,p_prompt=>'Geschlecht:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''männlich'' as d, ''männlich'' as r from dual',
'Union',
'SELECT ''weiblich'', ''weiblich'' from dual'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cHeight=>1
,p_tag_attributes=>'style="font-weight:bold;"'
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18740055040640819)
,p_name=>'P121_TITEL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'Titel:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18740283710642741)
,p_name=>'P121_ADELSTITEL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'Adelstitel:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18740477456645648)
,p_name=>'P121_NAME_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'Name:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18740672711647812)
,p_name=>'P121_VORNAME_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'Vorname:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18740867967650041)
,p_name=>'P121_RUFNAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'Rufname:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18741061713652981)
,p_name=>'P121_GESCHLECHT_1'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'Geschlecht:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''männlich'' as d, ''männlich'' as r from dual',
'Union',
'SELECT ''weiblich'', ''weiblich'' from dual'))
,p_cSize=>30
,p_cHeight=>1
,p_tag_attributes=>'style="width:196px"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18741376365661377)
,p_name=>'P121_GEBOREN_AM'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'geboren am:'
,p_format_mask=>'DD.MM:YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18741570327664197)
,p_name=>'P121_GESTORBEN_AM'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'gestorben am:'
,p_format_mask=>'DD.MM:YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18741764288666977)
,p_name=>'P121_GEBURTSNAME'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'Geburtsname:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18741954799671401)
,p_name=>'P121_KOMMENTAR'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'Kommentar:'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>154
,p_cMaxlength=>4000
,p_cHeight=>5
,p_colspan=>8
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18761163988267201)
,p_name=>'P121_GEBOREN_IN'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'gestorben in:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ort || '' ( '' || land || '')'', pk_ort',
'from ort'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18761885326272505)
,p_name=>'P121_GESTORBEN_IN'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(18738258346606311)
,p_prompt=>'gestorben In:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ort || '' ( '' || land || '')'', pk_ort',
'from ort'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(21409345344822305)
,p_name=>'P121_BILD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18731963129427883)
,p_prompt=>'Bild'
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_rowspan=>3
,p_grid_column=>7
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648556044540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT THUMBNAIL FROM BILDER_TAB BT INNER JOIN PERSON_BILD  PB ON BT.ID = PB.FK_BILD',
'WHERE FK_PERSON = :P121_PK_PERSON'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22530873262536346)
,p_name=>'P121_PK_ORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22529493904536177)
,p_prompt=>'Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22531308216536365)
,p_name=>'P121_ORT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22529493904536177)
,p_prompt=>'Ort'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22531660165536367)
,p_name=>'P121_LAND'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22529493904536177)
,p_prompt=>'Land'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24639911533486395)
,p_name=>'P121_PK_FAMILIE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(24609257539461719)
,p_display_as=>'NATIVE_HIDDEN'
,p_cMaxlength=>4000
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(24640191435491643)
,p_name=>'P121_FAMIILIE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(24609257539461719)
,p_prompt=>'Famiilie:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25129518900641772)
,p_name=>'P121_ELTERN'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(25128886769629846)
,p_prompt=>'Eltern'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME || '', '' || VORNAME || '' ('' || GESCHLECHT || '') - '' || NR_AHNENTAFEL as d ',
', PK_PERSON as r',
'FROM PERSON',
'ORDER BY NAME, VORNAME'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>25
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(25366535426886076)
,p_name=>'P121_KINDER'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(25365700593872551)
,p_prompt=>'Kinder'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME || '', '' || VORNAME || '' ('' || GESCHLECHT || '') - '' || NR_AHNENTAFEL as d ',
', PK_PERSON as r',
'FROM PERSON',
'ORDER BY NAME, VORNAME'))
,p_cSize=>150
,p_cMaxlength=>4000
,p_cHeight=>25
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26028635926662866)
,p_name=>'P121_GESCHWISTER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(26027577584590570)
,p_prompt=>'Geschwister:'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME || '', '' || VORNAME || '' ('' || GESCHLECHT || '') - '' || NR_AHNENTAFEL as d ',
', PK_PERSON as r',
'FROM PERSON',
'ORDER BY NAME, VORNAME'))
,p_cSize=>150
,p_cMaxlength=>4000
,p_cHeight=>25
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'MOVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26416306024449839)
,p_name=>'P121_LEBENSPARTNER'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(26409585790279508)
,p_prompt=>'Lebenspartner'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME || '', '' || VORNAME || '' ('' || GESCHLECHT || '') - '' || NR_AHNENTAFEL as d ',
', PK_PERSON as r',
'FROM PERSON',
'ORDER BY NAME, VORNAME'))
,p_cSize=>150
,p_cMaxlength=>4000
,p_cHeight=>10
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'ALL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26416592923458787)
,p_name=>'P121_STATUS'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(26409585790279508)
,p_prompt=>'Status:'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Status',
'from Lebenspartner',
'Group by status'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26416949723467575)
,p_name=>'P121_DATUM_STANDESAMTLICH'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(26409585790279508)
,p_prompt=>'standesamtlich am:'
,p_format_mask=>'DD.MM.YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26417157758471895)
,p_name=>'P121_STANDESAMT'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(26409585790279508)
,p_prompt=>'Standesamt:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26417536359477937)
,p_name=>'P121_DATUM_KIRCHLICH'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(26409585790279508)
,p_prompt=>'kirchlich am:'
,p_format_mask=>'DD.MM.YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26417782958482512)
,p_name=>'P121_KIRCHE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(26409585790279508)
,p_prompt=>'Kirche:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26418101573506790)
,p_name=>'P121_FK_ORT'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_api.id(26409585790279508)
,p_prompt=>'Ort:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ort || '' ('' || land || '')'', pk_ort',
'from ort',
'order by ort, land'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(26418384472513367)
,p_name=>'P121_KOMM'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_api.id(26409585790279508)
,p_prompt=>'Kommentar:'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>4000
,p_cHeight=>5
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24282011441417794)
,p_tabular_form_region_id=>wwv_flow_api.id(24269169551417698)
,p_validation_name=>'FK_ELTERN must be numeric'
,p_validation_sequence=>30
,p_validation=>'FK_ELTERN'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24280286588417790)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'FK_ELTERN'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24847218333698332)
,p_tabular_form_region_id=>wwv_flow_api.id(24842771340698324)
,p_validation_name=>'FK_ELTERN must be numeric'
,p_validation_sequence=>30
,p_validation=>'FK_ELTERN'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24846677321698331)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'FK_ELTERN'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24972355034829308)
,p_tabular_form_region_id=>wwv_flow_api.id(24965585858829294)
,p_validation_name=>'FK_ELTERN must be numeric'
,p_validation_sequence=>30
,p_validation=>'FK_ELTERN'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24971924631829307)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'FK_ELTERN'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(25009211515907041)
,p_tabular_form_region_id=>wwv_flow_api.id(25001191487907032)
,p_validation_name=>'FK_ELTERN must be numeric'
,p_validation_sequence=>30
,p_validation=>'FK_ELTERN'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(25007470519907039)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'FK_ELTERN'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24282405884417794)
,p_tabular_form_region_id=>wwv_flow_api.id(24269169551417698)
,p_validation_name=>'FK_KIND must be numeric'
,p_validation_sequence=>40
,p_validation=>'FK_KIND'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24280286588417790)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'FK_KIND'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24847573913698332)
,p_tabular_form_region_id=>wwv_flow_api.id(24842771340698324)
,p_validation_name=>'FK_KIND must be numeric'
,p_validation_sequence=>40
,p_validation=>'FK_KIND'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24846677321698331)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'FK_KIND'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24972819051829308)
,p_tabular_form_region_id=>wwv_flow_api.id(24965585858829294)
,p_validation_name=>'FK_KIND must be numeric'
,p_validation_sequence=>40
,p_validation=>'FK_KIND'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24971924631829307)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'FK_KIND'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(25007981991907040)
,p_tabular_form_region_id=>wwv_flow_api.id(25001191487907032)
,p_validation_name=>'FK_KIND must be numeric'
,p_validation_sequence=>40
,p_validation=>'FK_KIND'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'#COLUMN_HEADER# must be numeric.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(25007470519907039)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'FK_KIND'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24282755669417795)
,p_tabular_form_region_id=>wwv_flow_api.id(24269169551417698)
,p_validation_name=>'CREATION_DATE must be a valid date'
,p_validation_sequence=>50
,p_validation=>'CREATION_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24280286588417790)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CREATION_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24848008699698332)
,p_tabular_form_region_id=>wwv_flow_api.id(24842771340698324)
,p_validation_name=>'CREATION_DATE must be a valid date'
,p_validation_sequence=>50
,p_validation=>'CREATION_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24846677321698331)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CREATION_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24973250659829308)
,p_tabular_form_region_id=>wwv_flow_api.id(24965585858829294)
,p_validation_name=>'CREATION_DATE must be a valid date'
,p_validation_sequence=>50
,p_validation=>'CREATION_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24971924631829307)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CREATION_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(25008396565907040)
,p_tabular_form_region_id=>wwv_flow_api.id(25001191487907032)
,p_validation_name=>'CREATION_DATE must be a valid date'
,p_validation_sequence=>50
,p_validation=>'CREATION_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(25007470519907039)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'CREATION_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24283247046417796)
,p_tabular_form_region_id=>wwv_flow_api.id(24269169551417698)
,p_validation_name=>'MODIFY_DATE must be a valid date'
,p_validation_sequence=>70
,p_validation=>'MODIFY_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24280286588417790)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'MODIFY_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24848431338698332)
,p_tabular_form_region_id=>wwv_flow_api.id(24842771340698324)
,p_validation_name=>'MODIFY_DATE must be a valid date'
,p_validation_sequence=>70
,p_validation=>'MODIFY_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24846677321698331)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'MODIFY_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(24973654366829309)
,p_tabular_form_region_id=>wwv_flow_api.id(24965585858829294)
,p_validation_name=>'MODIFY_DATE must be a valid date'
,p_validation_sequence=>70
,p_validation=>'MODIFY_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(24971924631829307)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'MODIFY_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(25008828565907040)
,p_tabular_form_region_id=>wwv_flow_api.id(25001191487907032)
,p_validation_name=>'MODIFY_DATE must be a valid date'
,p_validation_sequence=>70
,p_validation=>'MODIFY_DATE'
,p_validation_type=>'ITEM_IS_DATE'
,p_error_message=>'#COLUMN_HEADER# must be a valid date.'
,p_always_execute=>'N'
,p_when_button_pressed=>wwv_flow_api.id(25007470519907039)
,p_exec_cond_for_each_row=>'N'
,p_only_for_changed_rows=>'Y'
,p_associated_column=>'MODIFY_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22119174441513908)
,p_name=>'daSavePerson'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22079235160477000)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22119609918513953)
,p_event_id=>wwv_flow_api.id(22119174441513908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P121_ADELSTITEL,P121_BILD,P121_GEBOREN_AM,P121_GEBOREN_IN,P121_GEBURTSNAME,P121_GESCHLECHT,P121_GESCHLECHT_1,P121_GESTORBEN_AM,P121_GESTORBEN_IN,P121_KOMMENTAR,P121_NAME,P121_NAME_1,P121_NR_AHNENTAFEL,P121_PK_PERSON,P121_RUFNAME,P121_VORNAME,P121_TIT'
||'EL'
,p_attribute_03=>'P121_ADELSTITEL,P121_BILD,P121_GEBOREN_AM,P121_GEBOREN_IN,P121_GEBURTSNAME,P121_GESCHLECHT,P121_GESCHLECHT_1,P121_GESTORBEN_AM,P121_GESTORBEN_IN,P121_KOMMENTAR,P121_NAME,P121_NAME_1,P121_NR_AHNENTAFEL,P121_PK_PERSON,P121_RUFNAME,P121_VORNAME,P121_TIT'
||'EL'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22139333493595789)
,p_event_id=>wwv_flow_api.id(22119174441513908)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'   if :P121_PK_PERSON is null then',
'            :P121_PK_PERSON := seq_pk_person.nextval;',
'    end if;',
'  ',
'  edit_data.p_per_set_person   (',
'                                  :P121_PK_PERSON,',
'                                  :P121_NAME,',
'                                  :P121_VORNAME,',
'                                  :P121_GEBURTSNAME,',
'                                  :P121_RUFNAME,',
'                                  :P121_GESCHLECHT,',
'                                  :P121_GEBOREN_AM,',
'                                  :P121_GESTORBEN_AM,',
'                                  :P121_GEBOREN_IN,',
'                                  :P121_GESTORBEN_IN,',
'                                  :P121_KOMMENTAR,',
'                                  :P121_TITEL,',
'                                  :P121_ADELSTITEL,',
'                                  :P121_NR_AHNENTAFEL,',
'                                  v(''APP_USER'')',
'                              );',
'',
'',
'',
'',
'end;'))
,p_attribute_02=>'P121_PK_PERSON'
,p_attribute_03=>'P121_PK_PERSON'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22149289458597681)
,p_event_id=>wwv_flow_api.id(22119174441513908)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22350848039968351)
,p_event_id=>wwv_flow_api.id(22119174441513908)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.opener.parent.location.reload(true);',
''))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22169235071619682)
,p_name=>'daDeletePerson'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22089239294479898)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22199285682619798)
,p_event_id=>wwv_flow_api.id(22169235071619682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P121_PK_PERSON'
,p_attribute_03=>'P121_PK_PERSON'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22219325152632843)
,p_event_id=>wwv_flow_api.id(22169235071619682)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  edit_data.p_per_del_person(:P121_PK_PERSON);',
'',
'end;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22229273243634227)
,p_event_id=>wwv_flow_api.id(22169235071619682)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22350120888965031)
,p_event_id=>wwv_flow_api.id(22169235071619682)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.opener.parent.location.reload(true);',
'window.close();'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22549948841647786)
,p_name=>'daShowOrte'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22549364324640313)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22550269723647808)
,p_event_id=>wwv_flow_api.id(22549948841647786)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P121_PK_ORT'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data'
,p_attribute_09=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22550838901647809)
,p_event_id=>wwv_flow_api.id(22549948841647786)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18763669856331247)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22551325771647810)
,p_event_id=>wwv_flow_api.id(22549948841647786)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initDialog(''md_Orte'',''Orte'',700,200);',
'showDialog(''md_Orte'');'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22551659694651030)
,p_name=>'daSaveOrt'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22529773448536327)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22552059250651047)
,p_event_id=>wwv_flow_api.id(22551659694651030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P121_LAND,P121_ORT,P121_PK_ORT'
,p_attribute_03=>'P121_LAND,P121_ORT,P121_PK_ORT'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22552640881651048)
,p_event_id=>wwv_flow_api.id(22551659694651030)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 03.02.2016',
'--Ortsdaten speichern',
'',
'begin',
'',
'  --Prüfen, ob eine ID übergeben wurde',
'  if :P121_PK_ORT is null then',
'     :P121_PK_ORT := SEQ_PK_ORT.nextval;',
'  end if;',
'',
'  --Daten speichern',
'  edit_data.p_std_set_ort (',
'                                  :P121_PK_ORT,',
'                                  :P121_ORT,',
'                                 :P121_LAND,',
'                                  v(''APP_USER'')',
'                              );',
'',
'end;'))
,p_attribute_02=>'P121_PK_ORT'
,p_attribute_03=>'P121_PK_ORT'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22553071790651049)
,p_event_id=>wwv_flow_api.id(22551659694651030)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(22529493904536177)
,p_attribute_01=>'Submit(''Load'');'
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22553617443651050)
,p_event_id=>wwv_flow_api.id(22551659694651030)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'Window.opener.parent.location.reload(true);'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22553972138653974)
,p_name=>'daDeleteOrt'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22530519859536338)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22554398243653994)
,p_event_id=>wwv_flow_api.id(22553972138653974)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P121_PK_ORT'
,p_attribute_03=>'P121_PK_ORT'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22554870351653994)
,p_event_id=>wwv_flow_api.id(22553972138653974)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 03.02.2016',
'--Löschen von Orten',
'',
'begin',
'',
'   --Löschen von Orten',
'     edit_data.p_std_del_ort (',
'                                 :P121_PK_ORT',
'                                );',
'end;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22555370651653995)
,p_event_id=>wwv_flow_api.id(22553972138653974)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.opener.parent.location.reload(true);',
'window.close;'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22580349375931429)
,p_name=>'daShowFamilien'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22579957253927247)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22580670683931432)
,p_event_id=>wwv_flow_api.id(22580349375931429)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P121_PK_FAMILIE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data'
,p_attribute_09=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22581120859931433)
,p_event_id=>wwv_flow_api.id(22580349375931429)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18738887089614552)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22581588639931433)
,p_event_id=>wwv_flow_api.id(22580349375931429)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initDialog(''md_Familien'',''Familien'',700,200);',
'showDialog(''md_Familien'');'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25052010670996013)
,p_name=>'daShowBerufe'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25051658751992612)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25053407867996018)
,p_event_id=>wwv_flow_api.id(25052010670996013)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initDialog(''md_Beruf'',''Liste aller Berufe'',700,200);',
'showDialog(''md_Beruf'');'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25144789147697415)
,p_name=>'daShowEltern'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25145584465704215)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25145173452697418)
,p_event_id=>wwv_flow_api.id(25144789147697415)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initDialog(''md_Eltern'',''Eltern auswählen'',1300,200);',
'showDialog(''md_Eltern'');'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25171893428282361)
,p_event_id=>wwv_flow_api.id(25144789147697415)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P121_ELTERN := null;'
,p_attribute_02=>'P121_ELTERN'
,p_attribute_03=>'P121_ELTERN'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25146401875722597)
,p_name=>'daAddElternteil'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25144489281692346)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25146817219722597)
,p_event_id=>wwv_flow_api.id(25146401875722597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P121_ELTERN'
,p_attribute_03=>'P121_ELTERN'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25147504223757143)
,p_event_id=>wwv_flow_api.id(25146401875722597)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 05.02.2016',
'--Elternteil einer Person hinzufügen',
'',
'begin',
'',
'',
'  --ausgewählte Elternteile hinzufügen',
'   for i in ( ',
'                    select regexp_substr(:P121_ELTERN,''[^:]+'', 1, level)  Elternteil from dual',
'                         connect by regexp_substr(:P121_ELTERN, ''[^:]+'', 1, level) is not null',
'              ) Loop',
' ',
'                  --Elternteil hinzufügen',
'                    edit_data.p_pb_set_eltern (',
'                                                                 null',
'                                                                , i.elternteil',
'                                                                ,  :P121_PK_PERSON                                 ',
'                                                                , v(''APP_USER'')',
'                              );',
'',
'   end Loop;',
'end;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25148510109777204)
,p_event_id=>wwv_flow_api.id(25146401875722597)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeDialog(''md_Eltern'');',
'window.opener.parent.location.reaload(true);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25366939669901174)
,p_name=>'daShowKinder'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25337068372840064)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25367313521901176)
,p_event_id=>wwv_flow_api.id(25366939669901174)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initDialog(''md_Kinder'',''Kinder auswählen'',1300,200);',
'showDialog(''md_Kinder'');'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25367800787901177)
,p_event_id=>wwv_flow_api.id(25366939669901174)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P121_KINDER := null;'
,p_attribute_02=>'P121_KINDER'
,p_attribute_03=>'P121_KINDER'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(25382404124410646)
,p_name=>'daAddKinder'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25365989628872551)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25382831539410649)
,p_event_id=>wwv_flow_api.id(25382404124410646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P121_KINDER'
,p_attribute_03=>'P121_KINDER'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25383275963410650)
,p_event_id=>wwv_flow_api.id(25382404124410646)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 05.02.2016',
'--Kinder einer Person hinzufügen',
'',
'begin',
'',
'',
'  --ausgewählte Kinder hinzufügen',
'   for i in ( ',
'                    select regexp_substr(:P121_KINDER,''[^:]+'', 1, level)  Kind from dual',
'                         connect by regexp_substr(:P121_KINDER, ''[^:]+'', 1, level) is not null',
'              ) Loop',
' ',
'                  --Elternteil hinzufügen',
'                    edit_data.p_pb_set_eltern (',
'                                                                 null',
'                                                                ,  :P121_PK_PERSON ',
'                                                                , i.Kind                                ',
'                                                                , v(''APP_USER'')',
'                              );',
'',
'   end Loop;',
'end;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(25383763288410650)
,p_event_id=>wwv_flow_api.id(25382404124410646)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeDialog(''md_Kinder'');',
'window.opener.parent.location.reaload(true);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26055552863728021)
,p_name=>'daShowGeschwister'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25971084085513840)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26055929664728037)
,p_event_id=>wwv_flow_api.id(26055552863728021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initDialog(''md_Geschwister'',''Geschwister auswählen'',1300,200);',
'showDialog(''md_Geschwister'');'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26056449120728039)
,p_event_id=>wwv_flow_api.id(26055552863728021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P121_GESCHWISTER := null;'
,p_attribute_02=>'P121_GESCHWISTER'
,p_attribute_03=>'P121_GESCHWISTER'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26059433682776390)
,p_name=>'daAddGeschwister'
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26027943333590584)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26059847835776397)
,p_event_id=>wwv_flow_api.id(26059433682776390)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P121_GESCHWISTER'
,p_attribute_03=>'P121_GESCHWISTER'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26060277129776399)
,p_event_id=>wwv_flow_api.id(26059433682776390)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 05.02.2016',
'--Geschwister einer Person hinzufügen',
'',
'begin',
'',
'',
'  --ausgewählte Kinder hinzufügen',
'   for i in ( ',
'                    select regexp_substr(:P121_GESCHWISTER,''[^:]+'', 1, level)  Geschwister from dual',
'                         connect by regexp_substr(:P121_GESCHWISTER, ''[^:]+'', 1, level) is not null',
'              ) Loop',
'',
' ',
'                  --Elternteil hinzufügen',
'                    edit_data.p_pb_set_geschwister (',
'                                                                 null',
'                                                                ,  :P121_PK_PERSON ',
'                                                                , i.Geschwister                          ',
'                                                                , v(''APP_USER'')',
'                              );',
'',
'   end Loop;',
'end;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26060763499776400)
,p_event_id=>wwv_flow_api.id(26059433682776390)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeDialog(''md_Geschwister'');',
'window.opener.parent.location.reaload(true);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26411073231303696)
,p_name=>'daShowLebenspartner'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26164140132054087)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26411476661303707)
,p_event_id=>wwv_flow_api.id(26411073231303696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initDialog(''md_Lebenspartner'',''Lebenspartner auswählen'',1300,200);',
'showDialog(''md_Lebenspartner'');'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26412013453303709)
,p_event_id=>wwv_flow_api.id(26411073231303696)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P121_LEBENSPARTNER := null;'
,p_attribute_02=>'P121_LEBENSPARTNER'
,p_attribute_03=>'P121_LEBENSPARTNER'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(26413466562356756)
,p_name=>'daAddLebenspartner'
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(26409895990279534)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26413867159356763)
,p_event_id=>wwv_flow_api.id(26413466562356756)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P121_LEBENSPARTNER,P121_STATUS,P121_DATUM_KIRCHLICH,P121_DATUM_STANDESAMTLICH,P121_FK_ORT,P121_KIRCHE,P121_KIRCHE,P121_STANDESAMT,P121_STATUS'
,p_attribute_03=>'P121_LEBENSPARTNER,P121_STATUS,P121_DATUM_KIRCHLICH,P121_DATUM_STANDESAMTLICH,P121_KIRCHE,P121_STANDESAMT,P121_FK_ORT,P121_KOMMENTAR'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26414453587356765)
,p_event_id=>wwv_flow_api.id(26413466562356756)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 05.02.2016',
'--Lebenspartner einer Person hinzufügen',
'',
'begin',
'',
'',
'  --ausgewählte Lebenspartner hinzufügen',
'   for i in ( ',
'                    select regexp_substr(:P121_LEBENSPARTNER,''[^:]+'', 1, level)  Lebenspartner from dual',
'                         connect by regexp_substr(:P121_LEBENSPARTNER, ''[^:]+'', 1, level) is not null',
'              ) Loop',
'',
' ',
'                  --Lebenspartner hinzufügen',
'                    edit_data.p_pb_set_lebenspartner (',
'                                                                                   null',
'                                                                               ,  :P121_PK_PERSON ',
'                                                                               ,  i.Lebenspartner',
'                                                                               ,   :P121_STATUS',
'                                                                               ,   :P121_DATUM_STANDESAMTLICH',
'                                                                               ,   :P121_STANDESAMT',
'                                                                               ,   :P121_DATUM_KIRCHLICH',
'                                                                               ,   :P121_KIRCHE',
'                                                                               ,   :P121_FK_ORT',
'                                                                               ,   :P121_KOMM                           ',
'                                                                               ,   v(''APP_USER'')',
'                              );',
'',
'   end Loop;',
'end;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(26414884380356766)
,p_event_id=>wwv_flow_api.id(26413466562356756)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'closeDialog(''md_Lebenspartner'');',
'window.opener.parent.location.reaload(true);'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24283500742417797)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(24269169551417698)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'ELTERN'
,p_attribute_03=>'PK_ELTERN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24280286588417790)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24848727201698333)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(24842771340698324)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'ELTERN'
,p_attribute_03=>'PK_ELTERN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24846677321698331)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24973947756829310)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(24965585858829294)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'ELTERN'
,p_attribute_03=>'PK_ELTERN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(24971924631829307)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25009936733907042)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(25001191487907032)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'ELTERN'
,p_attribute_03=>'PK_ELTERN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25007470519907039)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24283897203417798)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(24269169551417698)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'ELTERN'
,p_attribute_03=>'PK_ELTERN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24849110330698333)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(24842771340698324)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'ELTERN'
,p_attribute_03=>'PK_ELTERN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(24974287658829310)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(24965585858829294)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'ELTERN'
,p_attribute_03=>'PK_ELTERN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25009513353907041)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(25001191487907032)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'ELTERN'
,p_attribute_03=>'PK_ELTERN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25289173752769886)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_ELTERN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 05.02.2016',
'--Elternteil von Personen ',
'',
'begin',
'',
'   --entfernen der markierten Elternteile einer Person',
'    for i in 1 .. Apex_application.g_f01.count Loop',
'             ',
'        edit_data.p_pb_del_eltern(Apex_application.g_f01(i));         ',
'    end Loop;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25169694927215938)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(25405812639669012)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_KINDER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 05.02.2016',
'--Kinder von Personen ',
'',
'begin',
'',
'   --entfernen der markierten Kinder einer Person',
'    for i in 1 .. Apex_application.g_f02.count Loop',
'             ',
'        edit_data.p_pb_del_eltern(Apex_application.g_f02(i));       ',
'        ',
'    end Loop;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(25337479865840065)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26057593747750595)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_GESCHWISTER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 05.02.2016',
'--entfernen von Geschwistern von Personen ',
'',
'begin',
'',
'   --entfernen der markierten Geschwister einer Person',
'    for i in 1 .. Apex_application.g_f03.count Loop',
'             ',
'        edit_data.p_pb_del_geschwister(Apex_application.g_f03(i));       ',
'        ',
'    end Loop;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(26413041948336342)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'REMOVE_LEBENSPARTNER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 05.02.2016',
'--entfernen von Lebenspartnern von Personen ',
'',
'begin',
'',
'   --entfernen der markierten Lebenspartnern einer Person',
'    for i in 1 .. Apex_application.g_f04.count Loop',
'             ',
'        edit_data.p_pb_del_Lebenspartner(Apex_application.g_f04(i));       ',
'        ',
'    end Loop;',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18759987283194338)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOAD_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 24.01.2016',
'--LOAD DATA',
'',
'declare',
'',
'begin',
'',
'',
' if :P121_PK_PERSON is not null then',
'    select  NAME',
'    , VORNAME',
'    , GESCHLECHT',
'    , GEBOREN_AM',
'    , GESTORBEN_AM',
'    , FK_GEBURTSORT',
'    , BESCHREIBUNG',
'    , GEBURTSNAME',
'    , TITEL',
'    , ADELSTITEL',
'    , FK_STERBEORT',
'    , RUFNAME',
'    , NR_AHNENTAFEL',
'    , NAME',
'    , VORNAME',
'    , GESCHLECHT',
'  into ',
'         :P121_NAME',
'      ,  :P121_VORNAME',
'      ,  :P121_GESCHLECHT',
'      ,  :P121_GEBOREN_AM',
'      ,  :P121_GESTORBEN_AM',
'      ,  :P121_GEBOREN_IN',
'      ,  :P121_Kommentar',
'      ,  :P121_GEBURTSNAME',
'      ,  :P121_TITEL',
'      ,  :P121_ADELSTITEL',
'      ,  :P121_GESTORBEN_IN',
'      ,  :P121_RUFNAME',
'      ,  :P121_NR_AHNENTAFEL',
'      ,  :P121_NAME_1',
'      ,  :P121_VORNAME_1',
'      ,  :P121_GESCHLECHT_1',
'   from Person',
'   where PK_PERSON = :P121_PK_PERSON ;',
'   ',
'  else',
'  ',
'     :P121_NAME := null;',
'     :P121_VORNAME := null;',
'     :P121_GESCHLECHT := null;',
'     :P121_GEBOREN_AM := null;',
'     :P121_GESTORBEN_AM := null;',
'     :P121_GEBOREN_IN := null;',
'     :P121_Kommentar := null;',
'     :P121_GEBURTSNAME := null;',
'     :P121_TITEL := null;',
'     :P121_ADELSTITEL := null;',
'     :P121_GESTORBEN_IN := null;',
'     :P121_RUFNAME := null;',
'     :P121_NR_AHNENTAFEL := null;',
'     :P121_NAME_1 := null;',
'     :P121_VORNAME_1 := null;',
'     :P121_GESCHLECHT_1 := null;',
'',
' end if;',
'',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22299228190765619)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'RP'
,p_attribute_01=>'THIS_PAGE'
);
end;
/
prompt --application/pages/page_00122
begin
wwv_flow_api.create_page(
 p_id=>122
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Personen Stammbaum'
,p_page_mode=>'NORMAL'
,p_step_title=>'Personen Stammbaum'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Personen Stammbaum'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(18641272351540663)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160124234543'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18811380297384788)
,p_plug_name=>'Personen Stammbaum'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18643456371540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with perso as (select * from person)',
'select perso.pk_person, perso.name, perso.vorname, sta.lev, sta.stamm ',
'from  perso ',
' join table(get_tree.f_get_stamm(perso.pk_person)) sta on perso.pk_person = sta.pers'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_header=>'<div style="Overflow:auto;height:97%:width:97%">'
,p_plug_footer=>'</div>'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18811459535384788)
,p_name=>'Personen Stammbaum'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANNE'
,p_internal_uid=>3462405005462376
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18811776061384790)
,p_db_column_name=>'LEV'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ebene'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LEV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18811862364384790)
,p_db_column_name=>'STAMM'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Vorfahren'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STAMM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18812476754391292)
,p_db_column_name=>'NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18812566041391292)
,p_db_column_name=>'VORNAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Vorname'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18832757443581491)
,p_db_column_name=>'PK_PERSON'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'ID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PK_PERSON'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18811960923384963)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'34630'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LEV:STAMM:NAME:VORNAME:PK_PERSON'
,p_sort_column_1=>'LEV'
,p_sort_direction_1=>'DESC'
,p_break_on=>'PK_PERSON:NAME:VORNAME:0:0:0'
,p_break_enabled_on=>'PK_PERSON:NAME:VORNAME:0:0:0'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00123
begin
wwv_flow_api.create_page(
 p_id=>123
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Personen Datenüberprüfung'
,p_page_mode=>'NORMAL'
,p_step_title=>'Personen Datenüberprüfung'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Personen Datenüberprüfung'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160126021340'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21905177260666172)
,p_plug_name=>'Personen Datenüberprüfung'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644354730540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with pers as (select pk_person, name, vorname, geschlecht,',
'                     pk_person || '' : '' || name || '', '' || vorname as per',
'              from Person',
'',
'),',
'elt as ( select fk_eltern, ',
'',
'                count(*) cnt_kind,',
'                sum(case when  pers.geschlecht = ''männlich'' then 1 else 0 end) as cnt_kind_m,',
'                sum(case when  pers.geschlecht = ''weiblich'' then 1 else 0 end) as cnt_kind_w,',
'                sum(case when   ((pers.geschlecht <> ''weiblich'' and pers.geschlecht <> ''weiblich'') or pers.geschlecht is null) then 1 else 0 end) as cnt_kind_s',
'          from eltern      ',
'             join pers on eltern.fk_eltern = pers.pk_person',
'          group by fk_eltern',
'',
'),',
'kind_elt as (  select fk_kind , ',
'                 --anzahl',
'                 count(*) cnt_elt, count(*) - 2 cnt_elt_s_i,',
'                 --Person im listagg',
'                 listagg(per, '';'') within group (order by per) as all_elt,',
'                 /*,',
'                 --Vater',
'                 case when pers.geschlecht = ''männlich'' then listagg(per, '';'') within group (order by per) end as vat,',
'                 --Mutter',
'                  case when pers.geschlecht = ''weiblich'' then listagg(per, '';'') within group (order by per) end as mut,',
'                 --keine Angabe',
'                  case when ((pers.geschlecht <> ''weiblich'' and pers.geschlecht <> ''weiblich'') or pers.geschlecht is null) then listagg(per, '';'') within group (order by per) end as sonst,',
'                 */',
'                 --Anzahl kinder',
'                   sum(cnt_kind) cnt_kind,',
'                   sum(cnt_kind_m) cnt_kind_m,',
'                   sum(cnt_kind_w) cnt_kind_w,',
'                   sum(cnt_kind_s) cnt_kind_s',
'          from eltern             ',
'             join pers on eltern.fk_eltern = pers.pk_person',
'             join elt on elt.fk_eltern = eltern.fk_eltern',
'          group by fk_kind',
'),',
'geschwist as (',
'                select fk_person,',
'                        count(*) cnt_all_ges',
'                from geschwister g',
'                 join pers on pers.pk_person = g.fk_geschwister',
'                 group by fk_person',
'                 ',
'),',
'leb as ( select fk_person,',
'                count(*) cnt_all_leb',
'         from lebenspartner lb',
'           join pers on pers.pk_person = lb.fk_lebenspartner',
'        group by fk_person',
'        )',
'',
'select p.*',
'from pers p',
' left join kind_elt on p.pk_person = kind_elt.fk_kind',
' left join geschwist g on g.fk_person = p.pk_person',
' left join leb lb on lb.fk_person = p.pk_person ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21905317304666172)
,p_name=>'Personen Datenüberprüfung'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'ANNE'
,p_internal_uid=>6556262774743760
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21905706147666179)
,p_db_column_name=>'PK_PERSON'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pk Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21906119703666181)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21906503123666181)
,p_db_column_name=>'VORNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Vorname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21906873705666181)
,p_db_column_name=>'GESCHLECHT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Geschlecht'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(20920824840930124)
,p_db_column_name=>'PER'
,p_display_order=>14
,p_column_identifier=>'O'
,p_column_label=>'Per'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21914708762673871)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'65657'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'PK_PERSON:NAME:VORNAME:GESCHLECHT:PER'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00130
begin
wwv_flow_api.create_page(
 p_id=>130
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Eltern-Kind Übersicht'
,p_page_mode=>'NORMAL'
,p_step_title=>'Lebenspartnerübersicht'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Lebenspartnerübersicht'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'// Modal-Dialog initialisieren',
'function initDialog ( pRegId , pTitle , pWidth , pHeight ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( {',
'      autoOpen:   false,',
'      bgiframe:   true,',
'      modal:      false,',
'      minHeight:  pHeight,',
'      width:      pWidth,',
'      minWidth:   pWidth,',
'      title:      pTitle,',
'      resizable: true,',
'      closeOnEscape : true',
'  } )',
'}',
'',
'// setzt die Breite des Dialogs auf (nahezu) genau die für den Report benötigte Breite',
'function setzeDialogBreite ( pRegId ) {',
'  var $vRegion  = $( "#" + pRegId );',
'  var vMinWidth = $vRegion.dialog ( "option" , "minWidth" );',
'  var vWidth    = $vRegion.find ( "table[id^=''report_'']" ).width();',
'  //',
'  $vRegion.dialog ( "option" , "width" , Math.max ( vMinWidth , vWidth + 30 ) );',
'}',
'',
'',
'// zeigt die Reports-Region als jQuery-Dialog an',
'function showDialog ( pRegId ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( "open" );',
'  setzeDialogBreite ( pRegId );',
'',
'}',
'',
'',
'// jQuery-Dialog schliessen',
'function closeDialog (pRegId) {',
'  $("#" + pRegId).dialog("close");',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160125143126'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18699780827790298)
,p_plug_name=>'Übersicht Eltern-Kind'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18643456371540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with bld as ( select pb.fk_person,  id, ',
'  dateiname, ',
'  dbms_lob.getlength(thumbnail) vorschau, ',
'  dbms_lob.getlength(bild)      bildgroesse, ',
'  breite_px, ',
'  hoehe_px,',
'  null as bild_aktion',
'              from Person_bild pb ',
' left join bilder_tab bt on bt.id = pb.fk_bild',
'',
')',
'SELECT ',
'lp.pk_eltern',
', 	lp1.pk_person		LP1_PK_person',
',	lp1.NAME		LP1_NAME',
',	lp1.VORNAME		LP1_VORNAME',
',	lp1.GESCHLECHT		LP1_GESCHLECHT',
',	lp1.GEBURTSDATUM		LP1_GEBURTSDATUM',
',	lp1.GESTORBEN_AM		LP1_GESTORBEN_AM',
',	lp1.fk_GEBURTSORT		LP1_GEBURTSORT',
',	lp1.BESCHREIBUNG		LP1_BESCHREIBUNG',
',	lp1.GEBURTSNAME		LP1_GEBURTSNAME',
',	lp1.TITEL		LP1_TITEL',
',	lp1.ADELSTITEL		LP1_ADELSTITEL',
',	lp1.fk_STERBEORT		LP1_STERBEORT',
',	lp1.RUFNAME		LP1_RUFNAME',
',	lp1.NR_AHNENTAFEL		LP1_NR_AHNENTAFEL',
',	lp2.pk_person		LP2_pk_person',
',	lp2.NAME		LP2_NAME',
',	lp2.VORNAME		LP2_VORNAME',
',	lp2.GESCHLECHT		LP2_GESCHLECHT',
',	lp2.GEBURTSDATUM		LP2_GEBURTSDATUM',
',	lp2.GESTORBEN_AM		LP2_GESTORBEN_AM',
',	lp2.fk_GEBURTSORT		LP2_GEBURTSORT',
',	lp2.BESCHREIBUNG		LP2_BESCHREIBUNG',
',	lp2.GEBURTSNAME		LP2_GEBURTSNAME',
',	lp2.TITEL		LP2_TITEL',
',	lp2.ADELSTITEL		LP2_ADELSTITEL',
',	lp2.fk_STERBEORT		LP2_STERBEORT',
',	lp2.RUFNAME		LP2_RUFNAME',
',	lp2.NR_AHNENTAFEL		LP2_NR_AHNENTAFEL',
'--,   bld_lp1.vorschau lp1_vorschau',
'--,   bld_lp2.vorschau lp2_vorschau',
'',
'FROM eltern lp',
' join person lp1 on lp1.pk_person = lp.fk_eltern',
' join person lp2 on lp2.pk_person = lp.fk_kind',
' left join bld bld_lp1 on bld_lp1.fk_person = lp.fk_eltern',
' left join bld bld_lp2 on bld_lp2.fk_person = lp.fk_kind',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18699964647790298)
,p_name=>'Orte'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANNE'
,p_internal_uid=>3350910117867886
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18705257892823478)
,p_db_column_name=>'LP1_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name<br>(Eltern)'
,p_column_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#LP1_NAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18705373554823478)
,p_db_column_name=>'LP1_VORNAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Vorname<br>(Eltern)'
,p_column_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#LP1_VORNAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18705482498823478)
,p_db_column_name=>'LP1_GESCHLECHT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Geschlecht<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GESCHLECHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18705566583823478)
,p_db_column_name=>'LP1_GEBURTSDATUM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Geburtsdatum<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GEBURTSDATUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18705669914823478)
,p_db_column_name=>'LP1_GESTORBEN_AM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Gestorben Am<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GESTORBEN_AM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18705778833823479)
,p_db_column_name=>'LP1_GEBURTSORT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Geburtsort<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GEBURTSORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18705879091823479)
,p_db_column_name=>'LP1_BESCHREIBUNG'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Beschreibung<br>(Eltern)'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_BESCHREIBUNG'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18705957947823479)
,p_db_column_name=>'LP1_GEBURTSNAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Geburtsname<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GEBURTSNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18706057340823479)
,p_db_column_name=>'LP1_TITEL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Titel<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_TITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18706183733823479)
,p_db_column_name=>'LP1_ADELSTITEL'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Adelstitel<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_ADELSTITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18706263868823479)
,p_db_column_name=>'LP1_STERBEORT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Sterbeort<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_STERBEORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18706357956823479)
,p_db_column_name=>'LP1_RUFNAME'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Rufname<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_RUFNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18706477342823479)
,p_db_column_name=>'LP1_NR_AHNENTAFEL'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Nr Ahnentafel<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_NR_AHNENTAFEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18706684342823479)
,p_db_column_name=>'LP2_NAME'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Name<br>(Kind)'
,p_column_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#LP2_NAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18706776308823479)
,p_db_column_name=>'LP2_VORNAME'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Vorname<br>(Kind)'
,p_column_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#LP2_VORNAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18706870158823479)
,p_db_column_name=>'LP2_GESCHLECHT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Geschlecht<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GESCHLECHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18706982981823479)
,p_db_column_name=>'LP2_GEBURTSDATUM'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Geburtsdatum<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GEBURTSDATUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18707065181823480)
,p_db_column_name=>'LP2_GESTORBEN_AM'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Gestorben Am<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GESTORBEN_AM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18707175697823480)
,p_db_column_name=>'LP2_GEBURTSORT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Geburtsort<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GEBURTSORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18707269172823480)
,p_db_column_name=>'LP2_BESCHREIBUNG'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Beschreibung<br>(Kind)'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_BESCHREIBUNG'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18707381894823480)
,p_db_column_name=>'LP2_GEBURTSNAME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Geburtsname<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GEBURTSNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18707475401823480)
,p_db_column_name=>'LP2_TITEL'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Titel<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_TITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18707561389823480)
,p_db_column_name=>'LP2_ADELSTITEL'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Adelstitel<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_ADELSTITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18707660073823480)
,p_db_column_name=>'LP2_STERBEORT'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Sterbeort<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_STERBEORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18707760589823480)
,p_db_column_name=>'LP2_RUFNAME'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Rufname<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_RUFNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18707886444823480)
,p_db_column_name=>'LP2_NR_AHNENTAFEL'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Nr Ahnentafel<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_NR_AHNENTAFEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18834584566629684)
,p_db_column_name=>'PK_ELTERN'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'ID'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PK_ELTERN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18834671305629684)
,p_db_column_name=>'LP1_PK_PERSON'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Person ID<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_PK_PERSON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18834783275629684)
,p_db_column_name=>'LP2_PK_PERSON'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Person ID<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_PK_PERSON'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18701879092790301)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'33529'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5000
,p_report_columns=>'PK_ELTERN:LP1_PK_PERSON:LP2_PK_PERSON:LP2_NAME:LP2_VORNAME:LP2_GESCHLECHT:LP2_GEBURTSDATUM:LP2_GESTORBEN_AM:LP2_GEBURTSORT:LP2_BESCHREIBUNG:LP2_GEBURTSNAME:LP2_TITEL:LP2_ADELSTITEL:LP2_STERBEORT:LP2_RUFNAME:LP2_NR_AHNENTAFEL:LP1_NAME:LP1_VORNAME'
,p_break_on=>'LP1_PK_PERSON:LP1_NAME:LP1_VORNAME:0:0:0'
,p_break_enabled_on=>'LP1_PK_PERSON:LP1_NAME:LP1_VORNAME:0:0:0'
,p_flashback_enabled=>'N'
);
end;
/
prompt --application/pages/page_00140
begin
wwv_flow_api.create_page(
 p_id=>140
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Lebenspartnerübersicht'
,p_page_mode=>'NORMAL'
,p_step_title=>'Lebenspartnerübersicht'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Lebenspartnerübersicht'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'// Modal-Dialog initialisieren',
'function initDialog ( pRegId , pTitle , pWidth , pHeight ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( {',
'      autoOpen:   false,',
'      bgiframe:   true,',
'      modal:      false,',
'      minHeight:  pHeight,',
'      width:      pWidth,',
'      minWidth:   pWidth,',
'      title:      pTitle,',
'      resizable: true,',
'      closeOnEscape : true',
'  } )',
'}',
'',
'// setzt die Breite des Dialogs auf (nahezu) genau die für den Report benötigte Breite',
'function setzeDialogBreite ( pRegId ) {',
'  var $vRegion  = $( "#" + pRegId );',
'  var vMinWidth = $vRegion.dialog ( "option" , "minWidth" );',
'  var vWidth    = $vRegion.find ( "table[id^=''report_'']" ).width();',
'  //',
'  $vRegion.dialog ( "option" , "width" , Math.max ( vMinWidth , vWidth + 30 ) );',
'}',
'',
'',
'// zeigt die Reports-Region als jQuery-Dialog an',
'function showDialog ( pRegId ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( "open" );',
'  setzeDialogBreite ( pRegId );',
'',
'}',
'',
'',
'// jQuery-Dialog schliessen',
'function closeDialog (pRegId) {',
'  $("#" + pRegId).dialog("close");',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160125102203'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18711657030201577)
,p_plug_name=>'Übersicht Lebenspartner'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18643456371540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'lp.pk_lebenspartner',
', 	lp1.pk_person		LP1_Pk_person',
',	lp1.NAME		LP1_NAME',
',	lp1.VORNAME		LP1_VORNAME',
',	lp1.GESCHLECHT		LP1_GESCHLECHT',
',	lp1.GEBURTSDATUM		LP1_GEBURTSDATUM',
',	lp1.GESTORBEN_AM		LP1_GESTORBEN_AM',
',	lp1.fk_GEBURTSORT		LP1_GEBURTSORT',
',	lp1.BESCHREIBUNG		LP1_BESCHREIBUNG',
',	lp1.GEBURTSNAME		LP1_GEBURTSNAME',
',	lp1.TITEL		LP1_TITEL',
',	lp1.ADELSTITEL		LP1_ADELSTITEL',
',	lp1.fk_STERBEORT		LP1_STERBEORT',
',	lp1.RUFNAME		LP1_RUFNAME',
',	lp1.NR_AHNENTAFEL		LP1_NR_AHNENTAFEL',
',	lp2.pk_person	LP2_pk_person',
',	lp2.NAME		LP2_NAME',
',	lp2.VORNAME		LP2_VORNAME',
',	lp2.GESCHLECHT		LP2_GESCHLECHT',
',	lp2.GEBURTSDATUM		LP2_GEBURTSDATUM',
',	lp2.GESTORBEN_AM		LP2_GESTORBEN_AM',
',	lp2.fk_GEBURTSORT		LP2_GEBURTSORT',
',	lp2.BESCHREIBUNG		LP2_BESCHREIBUNG',
',	lp2.GEBURTSNAME		LP2_GEBURTSNAME',
',	lp2.TITEL		LP2_TITEL',
',	lp2.ADELSTITEL		LP2_ADELSTITEL',
',	lp2.fk_STERBEORT		LP2_STERBEORT',
',	lp2.RUFNAME		LP2_RUFNAME',
',	lp2.NR_AHNENTAFEL		LP2_NR_AHNENTAFEL',
',       lp.status',
',       lp.datum_kirchlich',
',       lp.datum_standesamtlich',
',       lp.standesamt',
',       lp.kirche',
',       o.ort',
',       o.land',
'FROM lebenspartner lp',
' join Person lp1 on lp1.pk_person = lp.fk_person',
' join Person lp2 on lp2.pk_person = lp.fk_lebenspartner',
' left join ort o on o.pk_ort = lp.fk_ort'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18711864306201579)
,p_name=>'Orte'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANNE'
,p_internal_uid=>3362809776279167
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18712479940201582)
,p_db_column_name=>'LP1_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name<br>(Lebenspartner 1)'
,p_column_link=>'javascript:popUp2(''f?p=&APP_ID.:141:&SESSION.:::RP:P141_PK_LEBENSPARTNERSCHAFT:#PK_LEBENSPARTNERSCHAFT#'',1300,650);'
,p_column_linktext=>'#LP1_NAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18712575983201582)
,p_db_column_name=>'LP1_VORNAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Vorname<br>(Lebenspartner 1)'
,p_column_link=>'javascript:popUp2(''f?p=&APP_ID.:141:&SESSION.:::RP:P141_PK_LEBENSPARTNERSCHAFT:#PK_LEBENSPARTNER#'',1300,650);'
,p_column_linktext=>'#LP1_VORNAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18712655676201582)
,p_db_column_name=>'LP1_GESCHLECHT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Geschlecht<br>(Lebenspartner 1)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GESCHLECHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18712769011201582)
,p_db_column_name=>'LP1_GEBURTSDATUM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Geburtsdatum<br>(Lebenspartner 1)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GEBURTSDATUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18712859262201582)
,p_db_column_name=>'LP1_GESTORBEN_AM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Gestorben Am<br>(Lebenspartner 1)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GESTORBEN_AM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18712971626201582)
,p_db_column_name=>'LP1_GEBURTSORT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Geburtsort<br>(Lebenspartner 1)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GEBURTSORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18713081681201582)
,p_db_column_name=>'LP1_BESCHREIBUNG'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Beschreibung<br>(Lebenspartner 1)'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_BESCHREIBUNG'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18713157437201582)
,p_db_column_name=>'LP1_GEBURTSNAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Geburtsname<br>(Lebenspartner 1)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GEBURTSNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18713287108201582)
,p_db_column_name=>'LP1_TITEL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Titel<br>(Lebenspartner 1)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_TITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18713367086201582)
,p_db_column_name=>'LP1_ADELSTITEL'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Adelstitel<br>(Lebenspartner 1)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_ADELSTITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18713484833201582)
,p_db_column_name=>'LP1_STERBEORT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Sterbeort<br>(Lebenspartner 1)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_STERBEORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18713580754201582)
,p_db_column_name=>'LP1_RUFNAME'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Rufname<br>(Lebenspartner 1)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_RUFNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18713679166201582)
,p_db_column_name=>'LP1_NR_AHNENTAFEL'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Nr Ahnentafel<br>(Lebenspartner 1)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_NR_AHNENTAFEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18713856139201582)
,p_db_column_name=>'LP2_NAME'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Name<br>(Lebenspartner 2)'
,p_column_link=>'javascript:popUp2(''f?p=&APP_ID.:141:&SESSION.:::RP:P141_PK_LEBENSPARTNERSCHAFT:#PK_LEBENSPARTNERSCHAFT#'',1300,650);'
,p_column_linktext=>'#LP2_NAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18713984991201582)
,p_db_column_name=>'LP2_VORNAME'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Vorname<br>(Lebenspartner 2)'
,p_column_link=>'javascript:popUp2(''f?p=&APP_ID.:141:&SESSION.:::RP:P141_PK_LEBENSPARTNERSCHAFT:#PK_LEBENSPARTNERSCHAFT#'',1300,650);'
,p_column_linktext=>'#LP2_VORNAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18714060460201582)
,p_db_column_name=>'LP2_GESCHLECHT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Geschlecht<br>(Lebenspartner 2)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GESCHLECHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18714176909201582)
,p_db_column_name=>'LP2_GEBURTSDATUM'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Geburtsdatum<br>(Lebenspartner 2)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GEBURTSDATUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18714256258201582)
,p_db_column_name=>'LP2_GESTORBEN_AM'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Gestorben Am<br>(Lebenspartner 2)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GESTORBEN_AM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18714356140201583)
,p_db_column_name=>'LP2_GEBURTSORT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Geburtsort<br>(Lebenspartner 2)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GEBURTSORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18714463985201583)
,p_db_column_name=>'LP2_BESCHREIBUNG'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Beschreibung<br>(Lebenspartner 2)'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_BESCHREIBUNG'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18714581873201583)
,p_db_column_name=>'LP2_GEBURTSNAME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Geburtsname<br>(Lebenspartner 2)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GEBURTSNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18714678207201583)
,p_db_column_name=>'LP2_TITEL'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Titel<br>(Lebenspartner 2)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_TITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18714777147201583)
,p_db_column_name=>'LP2_ADELSTITEL'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Adelstitel<br>(Lebenspartner 2)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_ADELSTITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18712083258201581)
,p_db_column_name=>'LP2_STERBEORT'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Sterbeort<br>(Lebenspartner 2)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_STERBEORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18712173286201581)
,p_db_column_name=>'LP2_RUFNAME'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Rufname<br>(Lebenspartner 2)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_RUFNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18712278446201581)
,p_db_column_name=>'LP2_NR_AHNENTAFEL'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Nr Ahnentafel<br>(Lebenspartner 2)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_NR_AHNENTAFEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18807059180877203)
,p_db_column_name=>'STATUS'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Status'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18807165464877204)
,p_db_column_name=>'DATUM_KIRCHLICH'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Datum Kirchlich'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATUM_KIRCHLICH'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18807272237877204)
,p_db_column_name=>'DATUM_STANDESAMTLICH'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Datum Standesamtlich'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATUM_STANDESAMTLICH'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18807373451877204)
,p_db_column_name=>'STANDESAMT'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Standesamt'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STANDESAMT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18807484803877204)
,p_db_column_name=>'KIRCHE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Kirche'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'KIRCHE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18807573678877204)
,p_db_column_name=>'ORT'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Ort'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18807668475877204)
,p_db_column_name=>'LAND'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Land'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAND'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18837077413089612)
,p_db_column_name=>'PK_LEBENSPARTNER'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'ID'
,p_column_link=>'javascript:popUp2(''f?p=&APP_ID.:141:&SESSION.:::RP:P141_PK_LEBENSPARTNERSCHAFT:#PK_LEBENSPARTNER#'',1300,650);'
,p_column_linktext=>'#PK_LEBENSPARTNER#'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PK_LEBENSPARTNER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18837177927089612)
,p_db_column_name=>'LP1_PK_PERSON'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'ID<br>(Lebenspartner 1)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_PK_PERSON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18837284876089612)
,p_db_column_name=>'LP2_PK_PERSON'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'ID<br>(Lebenspartner 2)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_PK_PERSON'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18714872931201583)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'33659'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5000
,p_report_columns=>'PK_LEBENSPARTNER:LP1_PK_PERSON:LP2_PK_PERSON:LP1_NAME:LP1_VORNAME:LP1_GESCHLECHT:LP2_NAME:LP2_VORNAME:LP2_GESCHLECHT:STATUS:DATUM_STANDESAMTLICH:STANDESAMT:DATUM_KIRCHLICH:KIRCHE:ORT:LAND:LP1_GEBURTSDATUM:LP1_GESTORBEN_AM:LP1_GEBURTSORT:LP1_GEBURTSNA'
||'ME:LP1_STERBEORT:LP1_RUFNAME:LP1_NR_AHNENTAFEL:LP2_GEBURTSDATUM:LP2_GESTORBEN_AM:LP2_GEBURTSORT:LP2_GEBURTSNAME:LP2_STERBEORT:LP2_RUFNAME:LP2_NR_AHNENTAFEL:'
,p_break_on=>'0'
,p_break_enabled_on=>'0'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18717268819201589)
,p_name=>'daShowOrte'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'daShowOrte'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18717575239201590)
,p_event_id=>wwv_flow_api.id(18717268819201589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initDialog(''md_Orte'',''Erfassungsmaske für neue OrteÄ);',
'showDialog(''md_Orte''):'))
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00141
begin
wwv_flow_api.create_page(
 p_id=>141
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_name=>'Lebenspartnerschaften'
,p_alias=>'LEBENSPARTNERSCHAFTEN'
,p_page_mode=>'NORMAL'
,p_step_title=>'Lebenspartnerschaften'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(18641272351540663)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160125140132'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18767058577488825)
,p_plug_name=>'Lebenspartnerschaften'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18734578886477885)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/javascript">',
' apex.jQuery(function() {',
' apex.jQuery("##REGION_STATIC_ID#").tabs();',
' });',
'</script>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18767265157490779)
,p_plug_name=>'Alle Kinder'
,p_parent_plug_id=>wwv_flow_api.id(18767058577488825)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18768571699539955)
,p_name=>'Alle Kinder'
,p_parent_plug_id=>wwv_flow_api.id(18767265157490779)
,p_template=>wwv_flow_api.id(18644354730540667)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with Kind as (select  fk_Kind',
'              from Eltern ',
'              where fk_Eltern = :P141_PK_LB1',
'              union',
'              select  fk_Kind',
'              from Eltern',
'              where fk_Eltern = :P141_PK_LB2',
'          ),',
' elt as ( select fk_kind, ',
'                 listagg(p1.name || '', '' || p1.vorname || '' ('' || p1.geschlecht || '')'',''; '') within Group (order by p1.geschlecht, p1.name, p1.vorname) as              eltern',
'         from  Eltern e ',
'          join Person p1 on p1.pk_person = e.fk_eltern',
'          group by fk_kind',
'   ),',
'bld as ( select fk_person, id, ',
'  dateiname, ',
'  dbms_lob.getlength(thumbnail) vorschau, ',
'  dbms_lob.getlength(bild)      bildgroesse, ',
'  breite_px, ',
'  hoehe_px,',
'  null as bild_aktion from Person_bild pb ',
' left join bilder_tab bt on bt.id = pb.fk_bild)',
'select person.*, elt.eltern',
'--, bld_k.vorschau',
'from Kind ',
'  join Person on Kind.fk_kind = person.pk_person',
'  join elt on elt.fk_kind = Kind.fk_kind',
'  left join bld bld_k on bld_k.fk_person = kind.fk_kind',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_LEFT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18838380223346985)
,p_query_column_id=>1
,p_column_alias=>'PK_PERSON'
,p_column_display_sequence=>1
,p_column_heading=>'ID KIND'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18768964372539957)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18769055049539957)
,p_query_column_id=>3
,p_column_alias=>'VORNAME'
,p_column_display_sequence=>4
,p_column_heading=>'VORNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18769165977539957)
,p_query_column_id=>4
,p_column_alias=>'GESCHLECHT'
,p_column_display_sequence=>5
,p_column_heading=>'GESCHLECHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18769285007539957)
,p_query_column_id=>5
,p_column_alias=>'GEBURTSDATUM'
,p_column_display_sequence=>6
,p_column_heading=>'GEBOREN_AM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18769371552539957)
,p_query_column_id=>6
,p_column_alias=>'GESTORBEN_AM'
,p_column_display_sequence=>7
,p_column_heading=>'GESTORBEN_AM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18838481674346985)
,p_query_column_id=>7
,p_column_alias=>'FK_GEBURTSORT'
,p_column_display_sequence=>14
,p_column_heading=>'Fk Geburtsort'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18769577541539957)
,p_query_column_id=>8
,p_column_alias=>'BESCHREIBUNG'
,p_column_display_sequence=>8
,p_column_heading=>'BESCHREIBUNG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18769669461539957)
,p_query_column_id=>9
,p_column_alias=>'GEBURTSNAME'
,p_column_display_sequence=>9
,p_column_heading=>'GEBURTSNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18769777244539957)
,p_query_column_id=>10
,p_column_alias=>'TITEL'
,p_column_display_sequence=>10
,p_column_heading=>'TITEL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18769863905539957)
,p_query_column_id=>11
,p_column_alias=>'ADELSTITEL'
,p_column_display_sequence=>11
,p_column_heading=>'ADELSTITEL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18838558260346985)
,p_query_column_id=>12
,p_column_alias=>'FK_STERBEORT'
,p_column_display_sequence=>15
,p_column_heading=>'Fk Sterbeort'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18770077171539957)
,p_query_column_id=>13
,p_column_alias=>'RUFNAME'
,p_column_display_sequence=>12
,p_column_heading=>'RUFNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18770160536539957)
,p_query_column_id=>14
,p_column_alias=>'NR_AHNENTAFEL'
,p_column_display_sequence=>13
,p_column_heading=>'NR_AHNENTAFEL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18808657750044969)
,p_query_column_id=>15
,p_column_alias=>'ELTERN'
,p_column_display_sequence=>2
,p_column_heading=>'Etern'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18767472776492926)
,p_plug_name=>'Kinder Lebenspartner 1'
,p_parent_plug_id=>wwv_flow_api.id(18767058577488825)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18771455647601606)
,p_name=>'Kinder Lebenspartner 1'
,p_parent_plug_id=>wwv_flow_api.id(18767472776492926)
,p_template=>wwv_flow_api.id(18644354730540667)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_column=>false
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.*,',
'  id, ',
'  dateiname, ',
'  dbms_lob.getlength(thumbnail) vorschau, ',
'  dbms_lob.getlength(bild)      bildgroesse, ',
'  breite_px, ',
'  hoehe_px,',
'  null as bild_aktion',
'',
'from Eltern e',
' join Person p on e.fk_kind = p.pk_person',
' left join Person_bild pb on pb.fk_person = p.pk_person',
' left join bilder_tab bt on bt.id = pb.fk_bild',
'where e.fk_eltern = :P141_PK_LB1'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_LEFT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18838775694349094)
,p_query_column_id=>1
,p_column_alias=>'PK_PERSON'
,p_column_display_sequence=>2
,p_column_heading=>'ID KIND'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18771884844601608)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18771977044601608)
,p_query_column_id=>3
,p_column_alias=>'VORNAME'
,p_column_display_sequence=>4
,p_column_heading=>'VORNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18772065090601608)
,p_query_column_id=>4
,p_column_alias=>'GESCHLECHT'
,p_column_display_sequence=>8
,p_column_heading=>'GESCHLECHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18772179266601608)
,p_query_column_id=>5
,p_column_alias=>'GEBURTSDATUM'
,p_column_display_sequence=>6
,p_column_heading=>'GEBOREN_AM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18772265290601608)
,p_query_column_id=>6
,p_column_alias=>'GESTORBEN_AM'
,p_column_display_sequence=>7
,p_column_heading=>'GESTORBEN_AM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18838880187349094)
,p_query_column_id=>7
,p_column_alias=>'FK_GEBURTSORT'
,p_column_display_sequence=>15
,p_column_heading=>'Fk Geburtsort'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18772482005601608)
,p_query_column_id=>8
,p_column_alias=>'BESCHREIBUNG'
,p_column_display_sequence=>9
,p_column_heading=>'BESCHREIBUNG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18772583021601608)
,p_query_column_id=>9
,p_column_alias=>'GEBURTSNAME'
,p_column_display_sequence=>10
,p_column_heading=>'GEBURTSNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18772659203601608)
,p_query_column_id=>10
,p_column_alias=>'TITEL'
,p_column_display_sequence=>11
,p_column_heading=>'TITEL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18772763080601608)
,p_query_column_id=>11
,p_column_alias=>'ADELSTITEL'
,p_column_display_sequence=>12
,p_column_heading=>'ADELSTITEL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18838979909349094)
,p_query_column_id=>12
,p_column_alias=>'FK_STERBEORT'
,p_column_display_sequence=>16
,p_column_heading=>'Fk Sterbeort'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18772975422601608)
,p_query_column_id=>13
,p_column_alias=>'RUFNAME'
,p_column_display_sequence=>13
,p_column_heading=>'RUFNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18773066036601608)
,p_query_column_id=>14
,p_column_alias=>'NR_AHNENTAFEL'
,p_column_display_sequence=>14
,p_column_heading=>'NR_AHNENTAFEL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20920093571930117)
,p_query_column_id=>15
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20920197047930118)
,p_query_column_id=>16
,p_column_alias=>'DATEINAME'
,p_column_display_sequence=>17
,p_column_heading=>'Dateiname'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20920309813930119)
,p_query_column_id=>17
,p_column_alias=>'VORSCHAU'
,p_column_display_sequence=>5
,p_column_heading=>'Vorschau'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:BILDER_TAB:THUMBNAIL:ID:::DATEINAME:::Attachment:Download:'
,p_disable_sort_column=>'N'
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20920421196930120)
,p_query_column_id=>18
,p_column_alias=>'BILDGROESSE'
,p_column_display_sequence=>18
,p_column_heading=>'Bildgroesse'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20920527146930121)
,p_query_column_id=>19
,p_column_alias=>'BREITE_PX'
,p_column_display_sequence=>19
,p_column_heading=>'Breite px'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20920582056930122)
,p_query_column_id=>20
,p_column_alias=>'HOEHE_PX'
,p_column_display_sequence=>20
,p_column_heading=>'Hoehe px'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20920735912930123)
,p_query_column_id=>21
,p_column_alias=>'BILD_AKTION'
,p_column_display_sequence=>21
,p_column_heading=>'Bild aktion'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18767680048495054)
,p_plug_name=>'Kinder Lebenspartner 2'
,p_parent_plug_id=>wwv_flow_api.id(18767058577488825)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(18773371231606091)
,p_name=>'Lebenspartner 2'
,p_parent_plug_id=>wwv_flow_api.id(18767680048495054)
,p_template=>wwv_flow_api.id(18644354730540667)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.*,',
'  id, ',
'  dateiname, ',
'  dbms_lob.getlength(thumbnail) vorschau, ',
'  dbms_lob.getlength(bild)      bildgroesse, ',
'  breite_px, ',
'  hoehe_px,',
'  null as bild_aktion',
'from Eltern e',
' join Person p on e.fk_kind = p.pk_Person',
' left join Person_bild pb on pb.fk_person = p.pk_person',
' left join bilder_tab bt on bt.id = pb.fk_bild',
'where e.fk_eltern = :P141_PK_LB2'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_LEFT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18839170518351454)
,p_query_column_id=>1
,p_column_alias=>'PK_PERSON'
,p_column_display_sequence=>2
,p_column_heading=>'ID KIND'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18773768785606093)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>3
,p_column_heading=>'NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18773869395606093)
,p_query_column_id=>3
,p_column_alias=>'VORNAME'
,p_column_display_sequence=>4
,p_column_heading=>'VORNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18773977845606093)
,p_query_column_id=>4
,p_column_alias=>'GESCHLECHT'
,p_column_display_sequence=>6
,p_column_heading=>'GESCHLECHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18774067676606093)
,p_query_column_id=>5
,p_column_alias=>'GEBURTSDATUM'
,p_column_display_sequence=>7
,p_column_heading=>'GEBOREN_AM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18774155630606093)
,p_query_column_id=>6
,p_column_alias=>'GESTORBEN_AM'
,p_column_display_sequence=>8
,p_column_heading=>'GESTORBEN_AM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18839278488351455)
,p_query_column_id=>7
,p_column_alias=>'FK_GEBURTSORT'
,p_column_display_sequence=>15
,p_column_heading=>'Fk Geburtsort'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18774369565606093)
,p_query_column_id=>8
,p_column_alias=>'BESCHREIBUNG'
,p_column_display_sequence=>9
,p_column_heading=>'BESCHREIBUNG'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18774470819606093)
,p_query_column_id=>9
,p_column_alias=>'GEBURTSNAME'
,p_column_display_sequence=>10
,p_column_heading=>'GEBURTSNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18774556289606093)
,p_query_column_id=>10
,p_column_alias=>'TITEL'
,p_column_display_sequence=>11
,p_column_heading=>'TITEL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18774679989606093)
,p_query_column_id=>11
,p_column_alias=>'ADELSTITEL'
,p_column_display_sequence=>12
,p_column_heading=>'ADELSTITEL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18839371883351455)
,p_query_column_id=>12
,p_column_alias=>'FK_STERBEORT'
,p_column_display_sequence=>16
,p_column_heading=>'Fk Sterbeort'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18774858165606093)
,p_query_column_id=>13
,p_column_alias=>'RUFNAME'
,p_column_display_sequence=>13
,p_column_heading=>'RUFNAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(18774984524606093)
,p_query_column_id=>14
,p_column_alias=>'NR_AHNENTAFEL'
,p_column_display_sequence=>14
,p_column_heading=>'NR_AHNENTAFEL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639515079128281)
,p_query_column_id=>15
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'ID'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21639904039128282)
,p_query_column_id=>16
,p_column_alias=>'DATEINAME'
,p_column_display_sequence=>17
,p_column_heading=>'Dateiname'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21640281797128282)
,p_query_column_id=>17
,p_column_alias=>'VORSCHAU'
,p_column_display_sequence=>5
,p_column_heading=>'Vorschau'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:BILDER_TAB:THUMBNAIL:ID:::DATEINAME:::Inline:Download:'
,p_lov_show_nulls=>'YES'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21640725935128283)
,p_query_column_id=>18
,p_column_alias=>'BILDGROESSE'
,p_column_display_sequence=>18
,p_column_heading=>'Bildgroesse'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21641097160128283)
,p_query_column_id=>19
,p_column_alias=>'BREITE_PX'
,p_column_display_sequence=>19
,p_column_heading=>'Breite Px'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21641552731128283)
,p_query_column_id=>20
,p_column_alias=>'HOEHE_PX'
,p_column_display_sequence=>20
,p_column_heading=>'Hoehe Px'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21641939301128284)
,p_query_column_id=>21
,p_column_alias=>'BILD_AKTION'
,p_column_display_sequence=>21
,p_column_heading=>'Bild Aktion'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18768172201506467)
,p_name=>'P141_PK_LEBENSPARTNERSCHAFT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'ID:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cattributes_element=>'style="width:250px"'
,p_tag_attributes=>'style="width:250px"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18770357296543788)
,p_name=>'P141_PK_LB1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Lebenspartner 1:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18770583594546730)
,p_name=>'P141_PK_LB2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Lebenspartner 2:'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18775272977612461)
,p_name=>'P141_LB1_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18775467801614905)
,p_name=>'P141_LB1_VORNAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Vorname:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18775660469618298)
,p_name=>'P141_LB1_GEBURTSNAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Geburtsname:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18776475337626534)
,p_name=>'P141_LB1_RUFNAME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Rufname:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18776669298629373)
,p_name=>'P141_X1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'<b>Lebenspartnerschaft:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'style="background-color:#CEE3F6;border:0"'
,p_cattributes_element=>'style="background-color:#CEE3F6;height:15px"'
,p_tag_attributes=>'style="color: #FF0000;"'
,p_colspan=>9
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18778267333660620)
,p_name=>'P141_X2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'<b>Lebenspartner:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'style="background-color:#CEE3F6;border:0"'
,p_cattributes_element=>'style="background-color:#CEE3F6;height:15px"'
,p_tag_attributes=>'style="color: #FF0000;"'
,p_colspan=>9
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18779260216664003)
,p_name=>'P141_X3'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'<b>Angaben zur Lebenspartnerschaft:</b>'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'style="background-color:#CEE3F6;border:0"'
,p_cattributes_element=>'style="background-color:#CEE3F6;height:15px"'
,p_tag_attributes=>'style="color: #FF0000;"'
,p_colspan=>9
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18779884992682911)
,p_name=>'P141_LB1_GESCHLECHT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Geschlecht:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''männlich'' as d,''männlich'' as r from dual',
'Union',
'select ''weiblich'', ''weiblich'' from dual'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:196px"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18780374640687680)
,p_name=>'P141_LB1_NR_AHNENTAFEL'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Nr. Ahnentafel:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18780879157700722)
,p_name=>'P141_STATUS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Status:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''verheiratet'' as d, ''verheiratet'' as r from dual',
'Union',
'select ''geschieden'', ''geschieden'' from dual',
'Union',
'select ''getrennt lebend'', ''getrennt lebend'' from dual'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:196px"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18781057375710850)
,p_name=>'P141_ORT'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'geheiratet in (Ort):'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ort || '' ('' || land || '')'', pk_ort',
'from ort',
'order by ort'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:196px"'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18781274831717916)
,p_name=>'P141_DT_STANDESAMTLICH'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'standesamtlich am:'
,p_format_mask=>'DD.MM.YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18781481505730035)
,p_name=>'P141_STANDESAMT'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Standesamt:'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Standesamt',
'from lebenspartner',
'Group by standesamt'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18781674819733113)
,p_name=>'P141_DT_KIRCHLICH'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'kirchlich am:'
,p_format_mask=>'DD.MM.YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'MONTH_AND_YEAR'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18781870290735292)
,p_name=>'P141_KIRCHE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Kirche:'
,p_display_as=>'NATIVE_AUTO_COMPLETE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Standesamt',
'from lebenspartner',
'Group by standesamt'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_04=>'N'
,p_attribute_06=>'N'
,p_attribute_07=>'Y'
,p_attribute_08=>'Y'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18782065977737308)
,p_name=>'P141_LB2_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Name:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18783161232739442)
,p_name=>'P141_LB2_VORNAME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Vorname:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18783386668742896)
,p_name=>'P141_LB2_GEBURTSNAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Geburtsname:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18783582570744731)
,p_name=>'P141_LB2_RUFNAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Rufname:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18783779120746312)
,p_name=>'P141_LB2_GESCHLECHT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Geschlecht:'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''männlich'' as d,''männlich'' as r from dual',
'Union',
'select ''weiblich'', ''weiblich'' from dual'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'style="width:196px"'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18783974591748508)
,p_name=>'P141_LB2_NR_AHNENTAFEL'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Nr. Ahnentafel:'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18805681239790918)
,p_name=>'P141_X4'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cAttributes=>'style="height:25px"'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648556044540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18815882121804672)
,p_name=>'P141_KOMMENTAR'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_prompt=>'Kommentar:'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>170
,p_cMaxlength=>4000
,p_cHeight=>5
,p_colspan=>9
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20919913771930115)
,p_name=>'P141_LB1_BILD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT THUMBNAIL FROM BILDER_TAB BT INNER JOIN PERSON_BILD  PB ON BT.ID = PB.FK_BILD',
'WHERE FK_PERSON = :P141_PK_LB1'))
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20920002645930116)
,p_name=>'P141_LB2_BILD'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(18767058577488825)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'SQL'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT THUMBNAIL FROM BILDER_TAB BT INNER JOIN PERSON_BILD  PB ON BT.ID = PB.FK_BILD',
'WHERE FK_PERSON = :P141_PK_LB2'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18806772345861814)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOAD_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 25.01.2016',
'--LOAD_DATA',
'',
'declare',
'',
'begin',
'',
'  if :P141_PK_LEBENSPARTNERSCHAFT is not null then',
'     select fk_Person, fk_Lebenspartner, Status, o.ort || '' ('' || o.land || '')'', Datum_standesamtlich, Standesamt, Datum_kirchlich, Kirche, kommentar',
'     into :P141_PK_LB1, :P141_PK_LB2, :P141_status, :P141_ort, :P141_dt_standesamtlich, :P141_standesamt, :P141_dt_kirchlich, :P141_Kirche, :P141_Kommentar',
'      from Lebenspartner',
'       left join ort o on o.pk_ort = Lebenspartner.fk_ort',
'     where Lebenspartner.pk_lebenspartner = :P141_PK_LEBENSPARTnerSChaft;',
'',
'',
'     select Name, Geburtsname, Vorname, Rufname, Geschlecht, nr_ahnentafel     ',
'     into :P141_lb1_name, :P141_lb1_geburtsname, :P141_lb1_vorname, :P141_lb1_rufname, :P141_lb1_geschlecht, :P141_lb1_nr_ahnentafel',
'     from Person',
'     where pk_person = :P141_PK_LB1;',
'',
'     select Name, Geburtsname, Vorname, Rufname, Geschlecht, nr_ahnentafel    ',
'     into :P141_lb2_name, :P141_lb2_geburtsname, :P141_lb2_vorname, :P141_lb2_rufname, :P141_lb2_geschlecht, :P141_lb2_nr_ahnentafel',
'     from Person',
'     where pk_person = :P141_PK_LB2;',
'',
'  end if;',
'',
'end;'))
);
end;
/
prompt --application/pages/page_00150
begin
wwv_flow_api.create_page(
 p_id=>150
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Geschwister'
,p_page_mode=>'NORMAL'
,p_step_title=>'Geschwister'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Geschwister'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'// Modal-Dialog initialisieren',
'function initDialog ( pRegId , pTitle , pWidth , pHeight ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( {',
'      autoOpen:   false,',
'      bgiframe:   true,',
'      modal:      false,',
'      minHeight:  pHeight,',
'      width:      pWidth,',
'      minWidth:   pWidth,',
'      title:      pTitle,',
'      resizable: true,',
'      closeOnEscape : true',
'  } )',
'}',
'',
'// setzt die Breite des Dialogs auf (nahezu) genau die für den Report benötigte Breite',
'function setzeDialogBreite ( pRegId ) {',
'  var $vRegion  = $( "#" + pRegId );',
'  var vMinWidth = $vRegion.dialog ( "option" , "minWidth" );',
'  var vWidth    = $vRegion.find ( "table[id^=''report_'']" ).width();',
'  //',
'  $vRegion.dialog ( "option" , "width" , Math.max ( vMinWidth , vWidth + 30 ) );',
'}',
'',
'',
'// zeigt die Reports-Region als jQuery-Dialog an',
'function showDialog ( pRegId ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( "open" );',
'  setzeDialogBreite ( pRegId );',
'',
'}',
'',
'',
'// jQuery-Dialog schliessen',
'function closeDialog (pRegId) {',
'  $("#" + pRegId).dialog("close");',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160125103527'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18721572592442064)
,p_plug_name=>'Übersicht Geschwister'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18643456371540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'lp.pk_geschwister',
', 	lp1.pk_person		LP1_pk_person',
',	lp1.NAME		LP1_NAME',
',	lp1.VORNAME		LP1_VORNAME',
',	lp1.GESCHLECHT		LP1_GESCHLECHT',
',	lp1.GEBURTSDATUM		LP1_GEBURTSDATUM',
',	lp1.GESTORBEN_AM		LP1_GESTORBEN_AM',
',	lp1.fk_GEBURTSORT		LP1_GEBURTSORT',
',	lp1.BESCHREIBUNG		LP1_BESCHREIBUNG',
',	lp1.GEBURTSNAME		LP1_GEBURTSNAME',
',	lp1.TITEL		LP1_TITEL',
',	lp1.ADELSTITEL		LP1_ADELSTITEL',
',	lp1.fk_STERBEORT		LP1_STERBEORT',
',	lp1.RUFNAME		LP1_RUFNAME',
',	lp1.NR_AHNENTAFEL		LP1_NR_AHNENTAFEL',
',	lp2.pk_person		LP2_pk_person',
',	lp2.NAME		LP2_NAME',
',	lp2.VORNAME		LP2_VORNAME',
',	lp2.GESCHLECHT		LP2_GESCHLECHT',
',	lp2.GEBURTSDATUM		LP2_GEBURTSDATUM',
',	lp2.GESTORBEN_AM		LP2_GESTORBEN_AM',
',	lp2.fk_GEBURTSORT		LP2_GEBURTSORT',
',	lp2.BESCHREIBUNG		LP2_BESCHREIBUNG',
',	lp2.GEBURTSNAME		LP2_GEBURTSNAME',
',	lp2.TITEL		LP2_TITEL',
',	lp2.ADELSTITEL		LP2_ADELSTITEL',
',	lp2.fk_STERBEORT		LP2_STERBEORT',
',	lp2.RUFNAME		LP2_RUFNAME',
',	lp2.NR_AHNENTAFEL		LP2_NR_AHNENTAFEL',
'FROM geschwister lp',
' join person lp1 on lp1.pk_person = lp.fk_person',
' join person lp2 on lp2.pk_person = lp.fk_geschwister'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18721765153442065)
,p_name=>'Orte'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANNE'
,p_internal_uid=>3372710623519653
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18722366208442066)
,p_db_column_name=>'LP1_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name<br>(Eltern)'
,p_column_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#LP1_NAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18722480369442066)
,p_db_column_name=>'LP1_VORNAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Vorname<br>(Eltern)'
,p_column_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#LP1_VORNAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18722555334442066)
,p_db_column_name=>'LP1_GESCHLECHT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Geschlecht<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GESCHLECHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18722656967442066)
,p_db_column_name=>'LP1_GEBURTSDATUM'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Geburtsdatum<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GEBURTSDATUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18722771587442066)
,p_db_column_name=>'LP1_GESTORBEN_AM'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Gestorben Am<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GESTORBEN_AM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18722869564442066)
,p_db_column_name=>'LP1_GEBURTSORT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Geburtsort<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GEBURTSORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18722965101442066)
,p_db_column_name=>'LP1_BESCHREIBUNG'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Beschreibung<br>(Eltern)'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_BESCHREIBUNG'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18723078664442066)
,p_db_column_name=>'LP1_GEBURTSNAME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Geburtsname<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_GEBURTSNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18723157515442066)
,p_db_column_name=>'LP1_TITEL'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Titel<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_TITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18723274795442066)
,p_db_column_name=>'LP1_ADELSTITEL'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Adelstitel<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_ADELSTITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18723354584442066)
,p_db_column_name=>'LP1_STERBEORT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Sterbeort<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_STERBEORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18723472664442067)
,p_db_column_name=>'LP1_RUFNAME'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Rufname<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_RUFNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18723562797442067)
,p_db_column_name=>'LP1_NR_AHNENTAFEL'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Nr Ahnentafel<br>(Eltern)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_NR_AHNENTAFEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18723766960442067)
,p_db_column_name=>'LP2_NAME'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Name<br>(Kind)'
,p_column_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#LP2_NAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18723878948442067)
,p_db_column_name=>'LP2_VORNAME'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Vorname<br>(Kind)'
,p_column_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#LP2_VORNAME#'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_VORNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18723978978442067)
,p_db_column_name=>'LP2_GESCHLECHT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Geschlecht<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GESCHLECHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18724064975442067)
,p_db_column_name=>'LP2_GEBURTSDATUM'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Geburtsdatum<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GEBURTSDATUM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18724186297442067)
,p_db_column_name=>'LP2_GESTORBEN_AM'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Gestorben Am<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GESTORBEN_AM'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18724257451442067)
,p_db_column_name=>'LP2_GEBURTSORT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Geburtsort<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GEBURTSORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18724378942442067)
,p_db_column_name=>'LP2_BESCHREIBUNG'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Beschreibung<br>(Kind)'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_BESCHREIBUNG'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18724477044442067)
,p_db_column_name=>'LP2_GEBURTSNAME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Geburtsname<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_GEBURTSNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18724559527442067)
,p_db_column_name=>'LP2_TITEL'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Titel<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_TITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18724672008442067)
,p_db_column_name=>'LP2_ADELSTITEL'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_ADELSTITEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18721965777442065)
,p_db_column_name=>'LP2_STERBEORT'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Sterbeort<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_STERBEORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18722079537442065)
,p_db_column_name=>'LP2_RUFNAME'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Rufname<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_RUFNAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18722158002442065)
,p_db_column_name=>'LP2_NR_AHNENTAFEL'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Nr Ahnentafel<br>(Kind)'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_NR_AHNENTAFEL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18841682052482845)
,p_db_column_name=>'PK_GESCHWISTER'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Pk Geschwister'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PK_GESCHWISTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18841783769482845)
,p_db_column_name=>'LP1_PK_PERSON'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Lp1 Pk Person'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP1_PK_PERSON'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18841883011482845)
,p_db_column_name=>'LP2_PK_PERSON'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Lp2 Pk Person'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LP2_PK_PERSON'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18724777069442068)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'33758'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5000
,p_report_columns=>'PK_GESCHWISTER:LP1_PK_PERSON:LP2_PK_PERSON:LP2_NAME:LP2_VORNAME:LP2_GESCHLECHT:LP2_GEBURTSDATUM:LP2_GESTORBEN_AM:LP2_GEBURTSORT:LP2_BESCHREIBUNG:LP2_GEBURTSNAME:LP2_TITEL:LP2_ADELSTITEL:LP2_STERBEORT:LP2_RUFNAME:LP2_NR_AHNENTAFEL:LP1_NAME:LP1_VORNAME'
||':'
,p_break_on=>'LP1_NAME:LP1_VORNAME:0'
,p_break_enabled_on=>'LP1_NAME:LP1_VORNAME:0'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18727158255442069)
,p_name=>'daShowOrte'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'daShowOrte'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18727477519442069)
,p_event_id=>wwv_flow_api.id(18727158255442069)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initDialog(''md_Orte'',''Erfassungsmaske für neue OrteÄ);',
'showDialog(''md_Orte''):'))
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00170
begin
wwv_flow_api.create_page(
 p_id=>170
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Stammdaten'
,p_page_mode=>'NORMAL'
,p_step_title=>'Stammdaten'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160203071451'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18666775632356562)
,p_plug_name=>'Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644354730540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18666954985360087)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18666775632356562)
,p_button_name=>'Ort'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Ort'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:171:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18729286473469468)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18666775632356562)
,p_button_name=>'FAMILIEN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Familien'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:173:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(21089290509366352)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(18666775632356562)
,p_button_name=>'Bilder'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Bilder'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
end;
/
prompt --application/pages/page_00171
begin
wwv_flow_api.create_page(
 p_id=>171
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Orte'
,p_page_mode=>'NORMAL'
,p_step_title=>'Orte'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Orte'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'// Modal-Dialog initialisieren',
'function initDialog ( pRegId , pTitle , pWidth , pHeight ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( {',
'      autoOpen:   false,',
'      bgiframe:   true,',
'      modal:      false,',
'      minHeight:  pHeight,',
'      width:      pWidth,',
'      minWidth:   pWidth,',
'      title:      pTitle,',
'      resizable: true,',
'      closeOnEscape : true',
'  } )',
'}',
'',
'// setzt die Breite des Dialogs auf (nahezu) genau die für den Report benötigte Breite',
'function setzeDialogBreite ( pRegId ) {',
'  var $vRegion  = $( "#" + pRegId );',
'  var vMinWidth = $vRegion.dialog ( "option" , "minWidth" );',
'  var vWidth    = $vRegion.find ( "table[id^=''report_'']" ).width();',
'  //',
'  $vRegion.dialog ( "option" , "width" , Math.max ( vMinWidth , vWidth + 30 ) );',
'}',
'',
'',
'// zeigt die Reports-Region als jQuery-Dialog an',
'function showDialog ( pRegId ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( "open" );',
'  setzeDialogBreite ( pRegId );',
'',
'}',
'',
'',
'// jQuery-Dialog schliessen',
'function closeDialog (pRegId) {',
'  $("#" + pRegId).dialog("close");',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160203025100'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18667555607365740)
,p_plug_name=>'Orte'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18643456371540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PK_ORT',
', ORT',
', LAND',
', CREATED_BY',
', CREATION_DATE',
', MODIFIED_BY',
', MODIFY_DATE',
'FROM ORT'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'',
'// Modal-Dialog initialisieren',
'function initDialog ( pRegId , pTitle , pWidth , pHeight ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( {',
'      autoOpen:   false,',
'      bgiframe:   true,',
'      modal:      false,',
'      minHeight:  pHeight,',
'      width:      pWidth,',
'      minWidth:   pWidth,',
'      title:      pTitle,',
'      resizable: true,',
'      closeOnEscape : true',
'  } )',
'}',
'',
'// setzt die Breite des Dialogs auf (nahezu) genau die für den Report benötigte Breite',
'function setzeDialogBreite ( pRegId ) {',
'  var $vRegion  = $( "#" + pRegId );',
'  var vMinWidth = $vRegion.dialog ( "option" , "minWidth" );',
'  var vWidth    = $vRegion.find ( "table[id^=''report_'']" ).width();',
'  //',
'  $vRegion.dialog ( "option" , "width" , Math.max ( vMinWidth , vWidth + 30 ) );',
'}',
'',
'',
'// zeigt die Reports-Region als jQuery-Dialog an',
'function showDialog ( pRegId ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( "open" );',
'  setzeDialogBreite ( pRegId );',
'',
'}',
'',
'',
'// jQuery-Dialog schliessen',
'function closeDialog (pRegId) {',
'  $("#" + pRegId).dialog("close");',
'}',
'</script>'))
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18667666895365740)
,p_name=>'Orte'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANNE'
,p_internal_uid=>3318612365443328
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18667966947365743)
,p_db_column_name=>'ORT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ort'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18668083043365744)
,p_db_column_name=>'LAND'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Land'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAND'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18819574195537714)
,p_db_column_name=>'PK_ORT'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'ID'
,p_column_link=>'javascript:$.event.trigger(''daShowOrte'',''#PK_ORT#'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif" alt="">'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PK_ORT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22353143060999157)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Erstellt von'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22353799634999163)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Erstellt am'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22354487838999164)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Geändert durch'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22355217451999164)
,p_db_column_name=>'MODIFY_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Geändert am'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18668175071365873)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'33192'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PK_ORT:ORT:LAND:CREATED_BY:CREATION_DATE:MODIFIED_BY:MODIFY_DATE:'
,p_sort_column_1=>'ORT'
,p_sort_direction_1=>'ASC'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18668655724388726)
,p_plug_name=>'md_ORT'
,p_region_name=>'md_ORT'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="display:none"'
,p_plug_template=>wwv_flow_api.id(18644054939540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18668958530388726)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(18668655724388726)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Speichern'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18669259362388727)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18668655724388726)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Abbrechen'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:171:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18669083113388726)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18668655724388726)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(18649073939540673)
,p_button_image_alt=>'Löschen'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_execute_validations=>'N'
,p_button_condition=>'P171_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18670184305388728)
,p_branch_action=>'f?p=&APP_ID.:171:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18670361819388729)
,p_name=>'P171_PK_ORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18668655724388726)
,p_prompt=>'Id'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18670554660388736)
,p_name=>'P171_ORT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18668655724388726)
,p_prompt=>'Ort'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(18648754543540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18670758339388737)
,p_name=>'P171_LAND'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18668655724388726)
,p_prompt=>'Land'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1020
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18671786115416343)
,p_name=>'daShowOrte'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'daShowOrte'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22455985780292551)
,p_event_id=>wwv_flow_api.id(18671786115416343)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P171_PK_ORT'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data'
,p_attribute_09=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22456715325300189)
,p_event_id=>wwv_flow_api.id(18671786115416343)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18668655724388726)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18672071025416344)
,p_event_id=>wwv_flow_api.id(18671786115416343)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initDialog(''md_ORT'',''Orte'',700,200);',
'showDialog(''md_ORT'');'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22430851124022656)
,p_name=>'daSaveOrt'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18668958530388726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22431200009022658)
,p_event_id=>wwv_flow_api.id(22430851124022656)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P171_LAND,P171_ORT,P171_PK_ORT'
,p_attribute_03=>'P171_LAND,P171_ORT,P171_PK_ORT'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22439265619128244)
,p_event_id=>wwv_flow_api.id(22430851124022656)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 03.02.2016',
'--Ortsdaten speichern',
'',
'begin',
'',
'  --Prüfen, ob eine ID übergeben wurde',
'  if :P171_PK_ORT is null then',
'     :P171_PK_ORT := SEQ_PK_ORT.nextval;',
'  end if;',
'',
'  --Daten speichern',
'  edit_data.p_std_set_ort (',
'                                  :P171_PK_ORT,',
'                                  :P171_ORT,',
'                                 :P171_LAND,',
'                                  v(''APP_USER'')',
'                              );',
'',
'end;'))
,p_attribute_02=>'P171_PK_ORT'
,p_attribute_03=>'P171_PK_ORT'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22439710774132060)
,p_event_id=>wwv_flow_api.id(22430851124022656)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18668655724388726)
,p_attribute_01=>'Submit(''Load'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22440115162140015)
,p_event_id=>wwv_flow_api.id(22430851124022656)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'Window.opener.parent.location.reload(true);'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22457329006424145)
,p_name=>'daDeleteOrt'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18669083113388726)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22457728632424149)
,p_event_id=>wwv_flow_api.id(22457329006424145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P171_PK_ORT'
,p_attribute_03=>'P171_PK_ORT'
,p_attribute_04=>'Y'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22458171946446530)
,p_event_id=>wwv_flow_api.id(22457329006424145)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 03.02.2016',
'--Löschen von Orten',
'',
'begin',
'',
'   --Löschen von Orten',
'     edit_data.p_std_del_ort (',
'                                 :P171_PK_ORT',
'                                );',
'end;'))
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22458609754451200)
,p_event_id=>wwv_flow_api.id(22457329006424145)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.opener.parent.location.reload(true);',
'window.close;'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22458917970461647)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_RESET_PAGINATION'
,p_process_name=>'resetpage'
,p_attribute_01=>'THIS_PAGE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22449765161260249)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DATA_LOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--Anne Richter, 03.02.2016',
'--Daten laden in das Formular Orte',
'',
'begin',
'',
' --Daten laden',
'  if :P171_PK_ORT is not null then',
'',
'     select  ort',
'      , land',
'    into :P171_ORT',
'      , :P171_LAND',
'   from ort ',
'     where pk_ort = :P171_PK_ORT;',
'',
'  end if;',
'',
'',
'',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18671581302388738)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18669083113388726)
);
end;
/
prompt --application/pages/page_00173
begin
wwv_flow_api.create_page(
 p_id=>173
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Familien'
,p_page_mode=>'NORMAL'
,p_step_title=>'Familien'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Familien'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'',
'// Modal-Dialog initialisieren',
'function initDialog ( pRegId , pTitle , pWidth , pHeight ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( {',
'      autoOpen:   false,',
'      bgiframe:   true,',
'      modal:      false,',
'      minHeight:  pHeight,',
'      width:      pWidth,',
'      minWidth:   pWidth,',
'      title:      pTitle,',
'      resizable: true,',
'      closeOnEscape : true',
'  } )',
'}',
'',
'// setzt die Breite des Dialogs auf (nahezu) genau die für den Report benötigte Breite',
'function setzeDialogBreite ( pRegId ) {',
'  var $vRegion  = $( "#" + pRegId );',
'  var vMinWidth = $vRegion.dialog ( "option" , "minWidth" );',
'  var vWidth    = $vRegion.find ( "table[id^=''report_'']" ).width();',
'  //',
'  $vRegion.dialog ( "option" , "width" , Math.max ( vMinWidth , vWidth + 30 ) );',
'}',
'',
'',
'// zeigt die Reports-Region als jQuery-Dialog an',
'function showDialog ( pRegId ) {',
'  var vRegId = "#" + pRegId;',
'  $( vRegId ).dialog( "open" );',
'  setzeDialogBreite ( pRegId );',
'',
'}',
'',
'',
'// jQuery-Dialog schliessen',
'function closeDialog (pRegId) {',
'  $("#" + pRegId).dialog("close");',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_cache_timeout_seconds=>21600
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160125103833'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18678375890455021)
,p_plug_name=>'Familien'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18643456371540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM Familie'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(18678559418455021)
,p_name=>'Orte'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_AND_BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANNE'
,p_internal_uid=>3329504888532609
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18682683780458458)
,p_db_column_name=>'FAMILIE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Familie'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FAMILIE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18844576217500761)
,p_db_column_name=>'PK_FAMILIE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Pk Familie'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PK_FAMILIE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18679357429455022)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'33304'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>500
,p_report_columns=>'PK_FAMILIE:FAMILIE:'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18682273763455024)
,p_branch_action=>'f?p=&APP_ID.:173:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18681757008455023)
,p_name=>'daShowOrte'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'daShowOrte'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18682070898455023)
,p_event_id=>wwv_flow_api.id(18681757008455023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'initDialog(''md_Orte'',''Erfassungsmaske für neue OrteÄ);',
'showDialog(''md_Orte''):'))
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18681368674455023)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of ORT'
,p_attribute_02=>'ORT'
,p_attribute_03=>'P173_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18681577227455023)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'171'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18679963877455022)
);
end;
/
prompt --application/pages/page_00175
begin
wwv_flow_api.create_page(
 p_id=>175
,p_user_interface_id=>wwv_flow_api.id(18650772817540680)
,p_tab_set=>'TS1'
,p_name=>'Report 1'
,p_page_mode=>'NORMAL'
,p_step_title=>'Report 1'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Report 1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'ANNE'
,p_last_upd_yyyymmddhh24miss=>'20160205134904'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(20990150437265450)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(18644354730540667)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  id, ',
'  dateiname, ',
'  dbms_lob.getlength(thumbnail) vorschau, ',
'  dbms_lob.getlength(bild)      bildgroesse, ',
'  breite_px, ',
'  hoehe_px,',
'  null as bild_aktion,',
'  p.*',
'from bilder_tab',
' left join person_bild pb on pb.fk_bild = bilder_tab.id',
' left join person p on p.pk_person = pb.fk_person'))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(18646068826540668)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_break_cols=>'0'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20990488600265461)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20990945326265465)
,p_query_column_id=>2
,p_column_alias=>'DATEINAME'
,p_column_display_sequence=>2
,p_column_heading=>'Dateiname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20991344801265466)
,p_query_column_id=>3
,p_column_alias=>'VORSCHAU'
,p_column_display_sequence=>3
,p_column_heading=>'Vorschau'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:BILDER_TAB:THUMBNAIL:ID:::DATEINAME:::Inline:Download:'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20991737124265467)
,p_query_column_id=>4
,p_column_alias=>'BILDGROESSE'
,p_column_display_sequence=>4
,p_column_heading=>'Bildgroesse'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20992107458265467)
,p_query_column_id=>5
,p_column_alias=>'BREITE_PX'
,p_column_display_sequence=>5
,p_column_heading=>'Breite Px'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20992494491265467)
,p_query_column_id=>6
,p_column_alias=>'HOEHE_PX'
,p_column_display_sequence=>6
,p_column_heading=>'Hoehe Px'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(20992932113265468)
,p_query_column_id=>7
,p_column_alias=>'BILD_AKTION'
,p_column_display_sequence=>7
,p_column_heading=>'Bild Aktion'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21099364511382677)
,p_query_column_id=>8
,p_column_alias=>'PK_PERSON'
,p_column_display_sequence=>8
,p_column_heading=>'Pk Person'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21099803470382678)
,p_query_column_id=>9
,p_column_alias=>'NAME'
,p_column_display_sequence=>9
,p_column_heading=>'Name'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21100203640382678)
,p_query_column_id=>10
,p_column_alias=>'VORNAME'
,p_column_display_sequence=>10
,p_column_heading=>'Vorname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21100598590382679)
,p_query_column_id=>11
,p_column_alias=>'GESCHLECHT'
,p_column_display_sequence=>11
,p_column_heading=>'Geschlecht'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(25737504827368169)
,p_query_column_id=>12
,p_column_alias=>'GEBOREN_AM'
,p_column_display_sequence=>25
,p_column_heading=>'Geboren Am'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21101413946382679)
,p_query_column_id=>13
,p_column_alias=>'GESTORBEN_AM'
,p_column_display_sequence=>12
,p_column_heading=>'Gestorben Am'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21101816313382680)
,p_query_column_id=>14
,p_column_alias=>'FK_GEBURTSORT'
,p_column_display_sequence=>13
,p_column_heading=>'Fk Geburtsort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21102169653382680)
,p_query_column_id=>15
,p_column_alias=>'BESCHREIBUNG'
,p_column_display_sequence=>14
,p_column_heading=>'Beschreibung'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21102639235382680)
,p_query_column_id=>16
,p_column_alias=>'GEBURTSNAME'
,p_column_display_sequence=>15
,p_column_heading=>'Geburtsname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21103031687382681)
,p_query_column_id=>17
,p_column_alias=>'TITEL'
,p_column_display_sequence=>16
,p_column_heading=>'Titel'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21103426192382681)
,p_query_column_id=>18
,p_column_alias=>'ADELSTITEL'
,p_column_display_sequence=>17
,p_column_heading=>'Adelstitel'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21103758602382681)
,p_query_column_id=>19
,p_column_alias=>'FK_STERBEORT'
,p_column_display_sequence=>18
,p_column_heading=>'Fk Sterbeort'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21104221816382681)
,p_query_column_id=>20
,p_column_alias=>'RUFNAME'
,p_column_display_sequence=>19
,p_column_heading=>'Rufname'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(21104564946382682)
,p_query_column_id=>21
,p_column_alias=>'NR_AHNENTAFEL'
,p_column_display_sequence=>20
,p_column_heading=>'Nr Ahnentafel'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22015682841262873)
,p_query_column_id=>22
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>21
,p_column_heading=>'Creation Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22016101677262874)
,p_query_column_id=>23
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>22
,p_column_heading=>'Created By'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22016507371262874)
,p_query_column_id=>24
,p_column_alias=>'MODIFY_DATE'
,p_column_display_sequence=>23
,p_column_heading=>'Modify Date'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(22016895946262875)
,p_query_column_id=>25
,p_column_alias=>'MODIFIED_BY'
,p_column_display_sequence=>24
,p_column_heading=>'Modified By'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20993291562265470)
,p_plug_name=>'Bild hochladen'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18644354730540667)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>1
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21209251891465070)
,p_plug_name=>'Bildanzeige'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(18643456371540667)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  id, ',
'  dateiname, ',
'  dbms_lob.getlength(thumbnail) vorschau, ',
'  dbms_lob.getlength(bild)      bildgroesse, ',
'  breite_px, ',
'  hoehe_px,',
'  null as bild_aktion,',
'  p.*',
'from bilder_tab',
' left join person_bild pb on pb.fk_bild = bilder_tab.id',
' left join person p on p.pk_person = pb.fk_person'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_row_template=>1
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(21209256093465075)
,p_name=>'Bildanzeige'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'ANNE'
,p_internal_uid=>5860201563542663
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21209615484465106)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21210819150465109)
,p_db_column_name=>'BREITE_PX'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Breite Px'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21211213820465112)
,p_db_column_name=>'HOEHE_PX'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Hoehe Px'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21211641792465113)
,p_db_column_name=>'DATEINAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Dateiname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21219956317467805)
,p_db_column_name=>'VORSCHAU'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Vorschau'
,p_sync_form_label=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:BILDER_TAB:THUMBNAIL:ID:::DATEINAME:::Inline:Download:'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21220378760467808)
,p_db_column_name=>'BILDGROESSE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Bildgroesse'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21220847859467809)
,p_db_column_name=>'BILD_AKTION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Bild Aktion'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21221249056467809)
,p_db_column_name=>'PK_PERSON'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Pk Person'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21221560867467809)
,p_db_column_name=>'NAME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21222029311467810)
,p_db_column_name=>'VORNAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Vorname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21222369532467810)
,p_db_column_name=>'GESCHLECHT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Geschlecht'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21223214092467811)
,p_db_column_name=>'GESTORBEN_AM'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Gestorben Am'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21223635336467811)
,p_db_column_name=>'FK_GEBURTSORT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Fk Geburtsort'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21223984982467812)
,p_db_column_name=>'BESCHREIBUNG'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Beschreibung'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21224361705467812)
,p_db_column_name=>'GEBURTSNAME'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Geburtsname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21224813757467812)
,p_db_column_name=>'TITEL'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Titel'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21225187393467813)
,p_db_column_name=>'ADELSTITEL'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Adelstitel'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21225565170467813)
,p_db_column_name=>'FK_STERBEORT'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Fk Sterbeort'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21226016990467813)
,p_db_column_name=>'RUFNAME'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Rufname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21226402425467814)
,p_db_column_name=>'NR_AHNENTAFEL'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Nr Ahnentafel'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25733325122362454)
,p_db_column_name=>'GEBOREN_AM'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Geboren Am'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25733950653362460)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25734561436362463)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25735352070362465)
,p_db_column_name=>'MODIFY_DATE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Modify Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(25736016673362468)
,p_db_column_name=>'MODIFIED_BY'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Modified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21239441185484191)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'58904'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>50
,p_report_columns=>'ID:BREITE_PX:HOEHE_PX:DATEINAME:VORSCHAU:BILDGROESSE:BILD_AKTION:PK_PERSON:NAME:VORNAME:GESCHLECHT:GESTORBEN_AM:FK_GEBURTSORT:BESCHREIBUNG:GEBURTSNAME:TITEL:ADELSTITEL:FK_STERBEORT:RUFNAME:NR_AHNENTAFEL:GEBOREN_AM:CREATION_DATE:CREATED_BY:MODIFY_DATE'
||':MODIFIED_BY'
,p_flashback_enabled=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(20993713711265470)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(20993291562265470)
,p_button_name=>'P175_UPLOAD'
,p_button_static_id=>'P20_UPLOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(20899397434568985)
,p_button_image_alt=>'Datei hochladen'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(20994148401265472)
,p_name=>'P175_FILE_UPLOAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(20993291562265470)
,p_prompt=>'File Upload'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(18648673590540672)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'WWV_FLOW_FILES'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(20994457538265489)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPLOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_filename  wwv_flow_files.filename%type;',
'',
' v_bild      blob := null;',
' v_thumb     blob := null;',
'',
' v_oi_bild   ordimage := null;',
' v_oi_thumb  ordimage := null;',
'',
' v_id BILDER_TAB.ID%TYPE;',
'begin',
'   begin',
'     -- Bild aus WWV_FLOW_FILES holen ...',
'     select blob_content, filename ',
'      into v_bild, v_filename ',
'     from wwv_flow_files',
'     where name = :P175_FILE_UPLOAD;',
'',
'     -- Temporären LOB für Thumbnail erzeugen',
'     dbms_lob.createtemporary(v_thumb, true, dbms_lob.call);',
'',
'     -- ORDIMAGE-Objekt für Bild und Thumbnail erzeugen',
'     v_oi_bild  := ordimage(v_bild);',
'     v_oi_bild.setproperties();',
'     v_oi_thumb := ordimage(v_thumb);',
'',
'     -- Thumbnail generieren',
'     v_oi_bild.processcopy(',
'       command => ''maxScale=100 100'',',
'       dest    => v_oi_thumb',
'     );',
'',
'     -- Bild und Thumbnail in Tabelle BILDER_TAB ablegen',
'     insert into bilder_tab (id, bild, thumbnail, dateiname)',
'     values (seq_bilder_tab.nextval, v_bild, v_oi_thumb.getcontent(), v_filename);',
'',
'     -- Bild aus WWV_FLOW_FILES entfernen',
'     delete from wwv_flow_files where name = :P175_FILE_UPLOAD;',
'',
'     -- Temporären LOB freigeben',
'     dbms_lob.freetemporary(v_thumb);',
'   exception ',
'     -- Im Fehlerfall nix machen; in der Praxis aber zumindest Logging!',
'     when NO_DATA_FOUND then null; ',
'     when TOO_MANY_ROWS then null; ',
'   end;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(20993713711265470)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
