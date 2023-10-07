<?php

Class Products{

    public $id;
    public $title;
    public $description;
    public $price;
    public $rating;
    public $thumbnail;

    function __construct($id ,$title, $description, $price, $thumbnail)
    {
        $this->id = $id;
        $this->title = $title;
        $this->description = $description;
        $this->price = $price;
        $this->thumbnail = $thumbnail;

    }
    
    function get_title(){
        return $this->title;
    }
    
    function get_id(){
        return $this->id;
    }


    function total_price($price){
        $Total = 0;
        $Total +=$price;
        echo $Total;

    }


}


