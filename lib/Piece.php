<?php
if (!defined('ACCESS')) {
    die('Direct access not permitted');
}

class Piece {
    private $color;
    private $rank;
    private $type;
    private $moveable;
    private $placed = false;

    public function __construct($color, $rank, $type, $moveable) {
        $this->color = $color;
        $this->rank = $rank;
        $this->type = $type;
        $this->moveable = $moveable;
    }

    public function isPlaced() {
        return $this->placed;
    }

    public function setPlaced($placed) {
        $this->placed = $placed;
    }

    public function getColor() {
        return $this->color;
    }

    public function getRank() {
        return $this->rank;
    }

    public function getType() {
        return $this->type;
    }

    public function isMoveable() {
        return $this->moveable;
    }
}
