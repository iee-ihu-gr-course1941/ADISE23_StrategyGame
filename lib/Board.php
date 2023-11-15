<?php
if (!defined('ACCESS')) {
    die('Direct access not permitted');
}

class Board {
    private $grid;

    public function __construct() {
        $this->grid = array_fill(0, 12, array_fill(0, 12, null)); // Changed to 12x12
    }

    public function placePiece($piece, $x, $y) {
        if ($x >= 0 && $x < 12 && $y >= 0 && $y < 12 && !$piece->isPlaced()) { 
            $this->grid[$y][$x] = $piece;
            $piece->setPlaced(true);
        }
    }

    public function removePiece($x, $y) {
        if ($x >= 0 && $x < 12 && $y >= 0 && $y < 12) { 
            $piece = $this->grid[$y][$x];
            if ($piece != null) {
                $piece->setPlaced(false);
            }
            $this->grid[$y][$x] = null;
        }
    }

    public function getPiece($x, $y) {
        if ($x >= 0 && $x < 12 && $y >= 0 && $y < 12) { 
            return $this->grid[$y][$x];
        }

        return null;
    }

    public function displayBoard() {
        $output = "";
        for ($row = 0; $row < count($this->grid); $row++) {
            for ($col = 0; $col < count($this->grid[$row]); $col++) {
                $piece = $this->grid[$row][$col];
                if ($piece == null) {
                    $output .= "O ";
                } else {
                    $output .= "X ";
                }
            }
            $output .= "\n";
        }
        echo $output;
    }
}
