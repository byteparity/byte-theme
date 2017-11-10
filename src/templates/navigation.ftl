<nav class="${nav_css_class}" id="menu" role="navigation">
	<h1 class="hide-accessible"><@liferay.language key="navigation" /></h1>
	<header class="major">
		<h2><@liferay.language key="menu" /></h2>
	</header>
	<ul aria-label="<@liferay.language key="site-pages" />" role="menubar">
		<#list nav_items as nav_item>
			<#assign
				nav_item_attr_has_popup = ""
				nav_item_attr_selected = ""
				nav_item_css_class = ""
				nav_item_layout = nav_item.getLayout()
				nav_item_opener="" 
			/>

			<#if nav_item.isSelected()>
				<#assign
					nav_item_attr_has_popup = "aria-haspopup='true'"
					nav_item_attr_selected = "aria-selected='true'"
					nav_item_css_class = "selected" 
						 	
				/>
			</#if>

			<li ${nav_item_attr_selected} class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
				
				<#if !nav_item.hasChildren()>
					
					<a aria-labelledby="layout_${nav_item.getLayoutId()}" class="${nav_item_css_class}" ${nav_item_attr_has_popup} href="${nav_item.getURL()}" ${nav_item.getTarget()} role="menuitem">${nav_item.getName()}</a>
				</#if>
				<#if nav_item.hasChildren()>
					<#if nav_item_css_class == "selected">
						<#assign nav_item_opener="active" >
					</#if>	
					
					<span class="opener ${nav_item_opener}">${nav_item.getName()} </span>
					<ul>
						<#list nav_item.getChildren() as nav_child>
							<#assign
								nav_child_attr_selected = ""
								nav_child_css_class = ""
							/>
							<#if nav_item.isSelected()>
								<#assign
									nav_child_attr_selected = "aria-selected='true'"
									nav_child_css_class = "selected"
								/>
							</#if>
							<li ${nav_child_attr_selected} class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
								<a aria-labelledby="layout_${nav_child.getLayoutId()}" class="nav_child_css_class" ${nav_item_attr_has_popup} href="${nav_child.getURL()}" ${nav_item.getTarget()}>${nav_child.getName()}</a>
							</li>
						</#list>
					</ul>
					
				</#if>			
			</li>
		</#list>
		<#if !is_signed_in>
		<li>		
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</li>
		</#if>
	</ul>
</nav>
