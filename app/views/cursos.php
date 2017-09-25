<!-- Start cursos --> 
<section class="portfolio">
    <?php foreach ($curso as $x) {
     for($j = 1; $j<count($x); $j++){
         $i=1;
    ?>
    <div class="course_<?php echo $i; $i++;?>">
        <div class="container">
            <div class="row">
                <h2 style="font-weight: bold; color: black;"><?= $x[$j]['poloEducacional']. $i;?></h2>
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
    <?php }}?>
</section>