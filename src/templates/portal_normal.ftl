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

<div>
	<nav>
		<ul class="nav navbar-nav navbar-right">

			<#list nav_items as nav_item>
				<#assign has_children = "" />

				<#if nav_item.hasChildren()>
					<#assign has_children = "true" />
				</#if>


				<li id="layout_${nav_item.getLayoutId()}" role="presentation">
					<a aria-labelledby="layout_${nav_item.getLayoutId()}" href="${nav_item.getURL()}">${nav_item.getName()}</a>

							<#if has_children == "true">
							<ul>
								<#list nav_item.getChildren() as nav_child>
								<li role="presentation">
									<a href="${nav_child.getURL()}">${nav_child.getName()}</a>
								</li>
							</#list>
						</ul>
					</#if>
				</li>
			</#list>
		</ul>
	</nav>

	<div class="container" id="wrapper">
		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</div>

	<script src="${javascript_folder}/app.js"></script>
</div>


<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<!-- endinject -->

</body>

</html>