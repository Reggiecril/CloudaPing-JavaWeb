
<script type="text/javascript">

    var url = window.location.href;
    var index = url.lastIndexOf("userPage");
    str = url.substring(index+9,url.length);
    if (str.indexOf("/")==-1){
        content=str.substring(0,str.length);

    }else {
        content=str.substring(0,str.indexOf("/"));

    }
    if (content=='information') {
        var div = document.getElementById('userPage-information');
    }else if (content=='order'){
        var div = document.getElementById('userPage-order');
    }else if (content=='address'){
        var div = document.getElementById('userPage-address');
    }else if (content=='payment'){
        var div = document.getElementById('userPage-payment');
    }else if (content=='favourite'){
        var div = document.getElementById('userPage-favourite');
    }else if (content=='password_change'){
        var div = document.getElementById('userPage-password-change');
    }
    div.className = 'active';
    $(document).ready(function () {
        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
            $(this).toggleClass('active');
        });
    });
</script>