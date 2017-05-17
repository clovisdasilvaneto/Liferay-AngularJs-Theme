<div class="loader-br" ng-class="{ 'opened-br-modal': loadingNews }">
	<span>Carregando ...</span>
</div>

<nav class="navbar navbar-fixed-top">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</button>

	<div class="container">
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-left"><li><a href="#">Olá ${user_name}</a></li></ul>



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
		</div>
	</div>
</nav>