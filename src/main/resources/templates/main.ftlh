<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>
<@c.page>
<div>
    <@l.logout />
    <br>
    <span><a href="/user">User List</a></span>
<div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Input message">
        <input type="text" name="tag" placeholder="Tag">
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Add</button>
    </form>
</div>
<div>List message</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter?ifExists}">
    <button type="submit" > Find</button>
</form>
<#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
        <div>
            <#if message.fileName??>
                <img src="/img/${message.fileName}">
            </#if>
        </div>
    </div>
    <#else>
    No messages
</#list>
</@c.page>