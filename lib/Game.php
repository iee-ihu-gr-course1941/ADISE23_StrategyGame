<?php
if (!defined('ACCESS')) {
    die('Direct access not permitted');
}

require_once 'Board.php';
require_once 'Player.php';
require_once 'Piece.php';
require_once 'Database.php';

class Game {
    public $board;
    public $player1;
    public $player2;
    public $currentPlayer;
    private $borderPieces;
    private $riverPieces;
    private $db;

    public function __construct() {
        $this->db = new Database();
        $this->board = new Board();
        $this->player1 = new Player('Red');
        $this->player2 = new Player('Blue');
        $this->currentPlayer = $this->player1;
        $this->initPieces();
        $this->placeBorderAndRivers();
    }

    public function startNewGame($player1_id, $player2_id = null) {
        // Define the game status based on whether the second player ID is provided
        $status = isset($player2_id) ? 'active' : 'waiting_for_player';

        // Call the database method to insert the new game record
        $game_id = $this->db->startNewGame($player1_id, $player2_id, $status);

        return $game_id;
    }

    public function displayGame() {
        // Game state display logic
        $this->board->displayBoard();
    }

    public function placeBorderAndRivers() {
        // Place border pieces
        $borderPieceIndex = 0;
        for ($row = 0; $row < 12; $row++) {
            for ($col = 0; $col < 12; $col++) {
                if ($row == 0 || $row == 11 || $col == 0 || $col == 11) {
                    $this->board->placePiece($this->borderPieces[$borderPieceIndex++], $col, $row);
                }
            }
        }
    
        // Place river pieces
        $riverPositions = [
            [5, 3], [6, 3], 
            [5, 4], [6, 4], 
            [5, 7], [6, 7], 
            [5, 8], [6, 8]
        ];
        
        foreach ($riverPositions as $index => $position) {
            list($row, $col) = $position;
            $this->board->placePiece($this->riverPieces[$index], $col, $row);
        }
    }
    

    private function initPieces() {
        // Create and place red pieces
        $redPieces = [];
        
        // Create and place blue pieces
        $bluePieces = [];
        
        // Create and place border pieces
        $this->borderPieces = $this->createPieces('Gray', 'Border', 44, false, 'Special');

        // Create and place river pieces
        $this->riverPieces = $this->createPieces('Blue', 'River', 8, false, 'Special');
    }

    private function createPieces($color, $type, $count, $moveable, $rank) {
        $pieces = [];
        for ($i = 0; $i < $count; $i++) {
            $pieces[] = new Piece($color, $rank, $type, $moveable);
        }
        return $pieces;
    }
}
