<!-- Start cursos --> 
<section class="portfolio">
    <?php for($i = 1; $i<=count($curso); $i++) {?>
    <div class="course<?=$i?>">
        <div class="container">
            <div class="row">
                <h2 style="font-weight: bold; color: black;"><?= $curso['']?></h2>
            </div>
        <div class="row">
                <div class="popup-gallery">
                    <div class="col-md-3">
                        <a href="" title="The Cleaner"><img src="./public/images/3.jpg" class="img-responsive"alt="" /></a>				
                    </div>
                    <div class="col-md-3">					
                        <a href="" title="The Cleaner"><img src="./public/images/a.jpg" class="img-responsive"alt="" /></a>
                    </div>
                    <div class="col-md-3">
                        <a href="" title="The Cleaner"><img src="./public/images/a.jpg" class="img-responsive"alt="" /></a>
                    </div>
                    <div class="col-md-3">
                        <a href="" title="The Cleaner"><img src="./public/images/a.jpg" class="img-responsive"alt="" /></a>				
                    </div>
                </div>
            </div>
        </div>
    </div>	
        
    <div class="container">
        <div class="row">
            <hr>
        </div>
    </div>
    <?php }?>
</section>

