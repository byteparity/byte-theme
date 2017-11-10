<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
	
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />
<div id="wrapper">
	<a href="#sidenav" class="toggle"></a>
	<div id="main">		
		<div class="inner">
			<header id="header">
				<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<strong>${site_name}</strong>
				</a>

				<ul class="icons">
					<li>
						<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "borderless") /> 	 	
						<@liferay_portlet["runtime"] 
						defaultPreferences="${freeMarkerPortletPreferences}"
						portletName="com_liferay_site_navigation_language_web_portlet_SiteNavigationLanguagePortlet" />
						<#assign VOID = freeMarkerPortletPreferences.reset() />
					</li>
					<li><a href="https://twitter.com/byteparity" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="https://www.facebook.com/byteparity" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
				</ul>
	</header>
		<nav id="breadcrumbs">
			<@liferay.breadcrumbs />
		</nav>
		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
		
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}
		
			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
				
			</@>
			<hr>hello
		</#if>
		
		</div>  <!-- inner end -->
	</div>	 <!-- main end -->
		<div id="sidenav" class>				
    	 	<div class="inner">	 
				<section class="alt" id="search">   
				 <#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "borderless") /> 	 	
    	 		 <@liferay_portlet["runtime"] 
				  defaultPreferences="${freeMarkerPortletPreferences}"
				  portletName="com_liferay_portal_search_web_portlet_SearchPortlet" />
				  <#assign VOID = freeMarkerPortletPreferences.reset() />
  				</section>
			 	<#if has_navigation && is_setup_complete>
					<#include "${full_templates_path}/navigation.ftl" />

					<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "borderless") />
					<#assign theme_groupID = htmlUtil.escape(theme_display.getCompanyGroupId()?string) />
					<#assign VOID = freeMarkerPortletPreferences.setValue("groupId", '${group_id}') />
					<#assign VOID = freeMarkerPortletPreferences.setValue("articleId", "59931") />
					<@liferay_portlet["runtime"]
						defaultPreferences="${freeMarkerPortletPreferences}"
						portletProviderAction=portletProviderAction.VIEW
						instanceId="GLOBAL_FOOTER"
						portletName="com_liferay_journal_content_web_portlet_JournalContentPortlet" />
					<#assign VOID = freeMarkerPortletPreferences.reset() />

					<footer id="footer" role="contentinfo">
						<p class="powered-by">
						<@liferay.language key="powered-by" /> <a target="_blank" href="http://www.byteparity.com" rel="external">${site_name}</a>
						</p>
					</footer>				
		     	</#if>		
			</div>
		</div>		
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<script src="${javascript_folder}/jquery.min.js" type="text/javascript"></script>
<script src="${javascript_folder}/skel.min.js" type="text/javascript"></script>
<script src="${javascript_folder}/util.js" type="text/javascript"></script>
<script src="${javascript_folder}/site.js" type="text/javascript"></script>

<!-- inject:js -->
<!-- endinject -->

</body>

</html>