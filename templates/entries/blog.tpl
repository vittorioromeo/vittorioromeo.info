<section>
    <div class="entryTitle">
        {{PermalinkBegin}}
        <h2 style="margin-bottom: -15px">{{Title}}</h2>
        {{PermalinkEnd}}

        <div class="blogDate" style="margin-top: 5px">{{Date}}</div>
        <div class="blogDate" style="margin-top: -4px; margin-bottom: 35px;">
            {{#Tags}}
                <span class="blogTag"><a href="{{Link}}">{{Label}}</a></span>
            {{/Tags}}
        </div>
    </div>
    <div class="entryText">
        <div class="blogEntry">
            {{Text}}
        </div>
    </div>

    <hr>

</section>

{{CommentsBox}}