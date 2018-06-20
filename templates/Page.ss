<!doctype html>

	<!--[if !IE]><!-->
	<html class="h-100" lang="$ContentLocale">
	<!--<![endif]-->
	<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
	<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
	<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
	<head>
		<% base_tag %>
		<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		$MetaTags(false)
		<!--[if lt IE 9]>
		<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
		<% if $FeaturedImage %>
			<meta property="og:image" content="{$BaseHref}{$FeaturedImage.SetWidth(550).FileName}" />
		<% else_if $Image %>
			<meta property="og:image" content="{$BaseHref}{$Image.SetWidth(550).FileName}" />
		<% else_if $Images.exists %>
			<meta property="og:image" content="{$BaseHref}{$Images.first.SetWidth(550).FileName}" />
		<% else_if $Parent.FeaturedImage %>
			<meta property="og:image" content="{$BaseHref}{$Parent.FeaturedImage.SetWidth(550).FileName}" />
		<% else_if $SiteConfig.Logo %>
			<meta property="og:image" content="{$BaseHref}{$SiteConfig.Logo.SetWidth(550).FileName}" />
		<% end_if %>

		<% include Icons %>
		<% include Requirements %>
	</head>
	<body class="$ClassName h-100" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
		<div class="container-fluid h-100">
			<div class="row align-items-stretch">
				<% include Header %>
				<div class="col-md p-0 main<% if $Level(2) %> sublevel<% end_if %><% if $FeaturedImage || $MapEmbed %> no-pad-top<% end_if %><% if $SiteConfig.TileBackground %> tile-background<% else %> full-background<% end_if %>" role="main"<% if $SiteConfig.Background %> style="background-image: url($SiteConfig.Background.ScaleMaxWidth(1920).URL)"<% end_if %>>
					<div class="flex-row h-100 flex-column justify-content-between">
						<div class="col-auto">
							<div class="typography">
								$Layout
							</div>
						</div>
						<% include Footer %>
					</div>
				</div>

			</div>
		</div>
	</body>
</html>
