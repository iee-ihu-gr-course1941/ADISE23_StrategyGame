<?php
if (!defined('ACCESS')) {
    die('Direct access not permitted');
}

class Player {
    private $name;
    private $pieces;

    public function __construct($name) {
        $this->name = $name;
        $this->pieces = [];
    }

    public function getName() {
        return $this->name;
    }

    public function getPieces() {
        return $this->pieces;
    }

    public function addPiece($piece) {
        $this->pieces[] = $piece;
    }

    public function removePiece($piece) {
        if (($key = array_search($piece, $this->pieces, true)) !== false) {
            unset($this->pieces[$key]);
        }
    }
}
