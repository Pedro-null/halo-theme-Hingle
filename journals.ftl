<#include "module/macro.ftl">
<@layout title="说说 - ${blog_title!}">
<main>
    <div class="wrap min">
        <section class="home-title">
            <h1>"说说"</h1>
            <#--  <span>${category.description!}</span>  -->
        </section>

        <#--  文章列表  -->

        <section class="home-posts">
            <#list journals.content as journal>
                <div class="post-item"> 
                    <div class="post-meta">
                        <time class="date">${journal.createTime?string["yyyy.MM.dd HH:mm:ss"]!}</time>                               
                        <span class="comments">${journal.commentCount!} ℃</span>
                    </div>
                    <p> ${journal.content!} </p>
                </div>
            </#list>
        </section>

        <#--  分页  -->
        <section class="page-navigator">
            <#if journals.totalPages gt 1>
                <@paginationTag method="journals" page="${posts.number}" total="${posts.totalPages}" display="3">
                    <#if pagination.hasPrev>
                        <a class="extend prev" rel="prev" href="${pagination.prevPageFullPath!}">«</a>
                    </#if>
                    <#list pagination.rainbowPages as number>
                        <#if number.isCurrent>
                            <span class="page-number current">${number.page!}</span>
                        <#else>
                            <a class="page-number" href="${number.fullPath!}">${number.page!}</a>
                        </#if>
                    </#list>
                    <#if pagination.hasNext>
                        <a class="extend next" rel="next" href="${pagination.nextPageFullPath!}">
                            »
                        </a>
                    </#if>
                </@paginationTag>
            <#--  <#else>
                <span>当前只有一页</span>  -->
            </#if>
        </section>
    </div>
</main>
</@layout>


<#--  
<main class="self-container mdui-container">
  <div class="containerLeft">
    <article class="post">
      <div class="mdui-card">
      <div class="journals">
        <h3 class="pagetitle">说说</h3>
        <ul class="journalList">
        <#list journals.content as journal>
          <li>
            <div class="journLine">
              <i class="mdui-icon material-icons mdui-text-color-theme">create</i>
            </div>
            <div class="mdui-card">
              <time>
                ${journal.createTime?string('yyyy-MM-dd HH:mm:ss')}
              </time>
              <div class="mdui-typo">
                ${journal.content!}
              </div>
              <div class="journBottom">
                <div class="jbleft">
                  <span>${journal.likes!0}</span>
                  <i id="${journal.id}" class="mdui-icon material-icons likeb">favorite</i>
                </div>
              </div>
            </div>
          </li>
        </#list>
        </ul>
        <@paginationTag method="journals" page="${journals.number}" total="${journals.totalPages}" display="3">
          <#if pagination.hasNext>
              <button data-href="${pagination.nextPageFullPath!}" class="mdui-btn mdui-btn-raised mdui-btn-dense mdui-ripple mdui-center ajaxPostLists">加载更多</button>
          </#if>
        </@paginationTag>
      </div>
      </div>
    </article>
   
  </div>  
</main>  -->