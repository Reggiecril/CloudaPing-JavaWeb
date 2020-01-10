<#--header search bar-->
<div class='header-search'>
    <div class="container-fluid">
        <div class='row' style="border-bottom: 1.5px solid #D52341">
            <div class="col-md-11 " style="margin: 0 auto;">
                <div class="col-md-3" style="display: inline-block;">
                    <a href=''><img src='${path}/images/log.png' width="250px" height="60px" alt='log'></a>
                </div>
                <div class="col-md-8" style="display: inline-block;margin-top: 10px ">
                    <form action='index.php?content=sections/search' method='post'>
                        <input type='text' name='searchText' height='40'>
                        <select name='searchSelect'>
                            <option selected='selected' value='All'>All</option>
                            <option value='laptop'>Laptop</option>
                            <option value='mobile'>Mobile</option>
                            <option value='computer'>Computer</option>
                            <option value='camera'>Camera</option>
                            <option value='audio&video'>Audio&Video</option>
                            <option value='others'>Others(X-BOX,Headset and ...)</option>
                            <option value='shop'>Shop</option>
                        </select>
                        <input type='submit' name='searchSubmit' value='Search'>
                        <div class='header-popular'>
                            <p>Popular search:</p>
                            <a href='index.php?content=mainPages/product&product=laptop'>Laptop</a>
                            <a href='index.php?content=mainPages/product&product=mobile'>Mobile</a>
                            <a href='index.php?content=mainPages/product&product=computer'>Computer</a>
                            <a href='index.php?content=mainPages/product&product=camera'>Camera</a>
                            <a href='index.php?content=mainPages/product&product=X-Box'>X-Box</a>
                            <a href='index.php?content=mainPages/product&product=headset'>Headset</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>