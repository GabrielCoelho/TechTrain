<!-- Start cursos --> 
<section class="portfolio">
    <?php for ($i=1; $i<=count($curso); $i++){?>
    <div class="course_<?php echo $i;?>">
        <div class="container">
            <div class="row">
                <h2 style="font-weight: bold; color: black;"><?= $curso[$category]['poloEducacional']. $i;?></h2>
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

<?php
 if ($i == 1){
     $category = 'info';
 }else if ($i == 2){
    $category = 'adm';
}else if ($i == 3){
    $category = 'foto';
}else if ($i == 4){
    $category = 'musica';
}else if ($i == 5){
    $category = 'design';
}
?>