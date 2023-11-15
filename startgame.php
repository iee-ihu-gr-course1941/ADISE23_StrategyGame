<?php
require_once 'autoload.php';
require_once 'Game.php';

// Start a new session or resume the existing one
session_start();

$game = new Game(); // Instantiate your Game class

if ($_SERVER['REQUEST_METHOD'] == 'POST' && $_POST['action'] == 'start') {
    $player1_id = $_SESSION['player_id']; 
    $game_id = $game->startNewGame($player1_id);

    if ($game_id) {
        echo $game_id; 
    } else {
        echo "Error starting game"; 
}
}