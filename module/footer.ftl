<footer>
    <style>
        .mdui-img-circle {
            border-radius: 50%;
            }
    </style>
    <div class="buttons">
        <a class="to-top" href="#"></a>
    </div>
    <div class="wrap min">
        <section class="sub-footer">
            <div align="left">
                <img class="mdui-img-circle" height="24" width="24" src="${blog_logo!}">
                <a>${blog_title!}</a>
                <div>© <span id="timeyear">${.now?string('yyyy')}</span> ${user.nickname!} <a href="https://beian.miit.gov.cn/" target="_blank">${settings.icp!}</a></div>
                <div>Powered by <a href="https://halo.run/" target="_blank">Halo</a>. Theme <a href="https://github.com/pedronull/halo-theme-hingle" target="_blank">Hingle</a> by <a href="https://www.pedronull.xyz/" target="_blank">pedronull</a>.</div>
            </div>

        </section>
    </div>
</footer>

<script src="${theme_base!}/source/static/kico.js"></script>
<script src="${theme_base!}/source/static/hingle.js"></script>
<script> 
    let jsonstr = JSON.stringify({night: ${settings.night?c}, copyright: ${settings.copyright?c}});
    var hingle = new Paul_Hingle(jsonstr);
</script> 
