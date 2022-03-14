<link rel="alternate" type="application/rss+xml" href="https://vittorioromeo.info/index.rss" />

<article>

    {{#Entries}}
        {{Entry}}
    {{/Entries}}

    <div class="pagination">
        <ul>
            {{#Subpages}}
                <li class="pageButton"><a href="{{Subpage}}">{{SubpageLabel}}</a></li>
            {{/Subpages}}
        </ul>
    </div>
</article>

<div class="asideWrapper">

	<aside class="blocked" style="padding-top: 12px; text-align: justify; background-color: #000000; color: white; font-weight: bold;">AdBlock is enabled. Please consider disabling it to support the website. The ads are not intrusive.</aside>
	{{#Asides}}
	    {{Aside}}
	{{/Asides}}
