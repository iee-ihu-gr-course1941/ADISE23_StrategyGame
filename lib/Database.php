<?php
// Database class for handling database operations
require_once __DIR__ . '/../config/config.php';

class Database {
    private $connection;

    public function __construct() {
        $this->connect();
    }

    private function connect() {
        $this->connection = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);
        if ($this->connection->connect_error) {
            die('Connection failed: ' . $this->connection->connect_error);
        }
    }

    public function getConnection() {
        return $this->connection;
    }

    // Method to start a new game
    public function startNewGame($player1_id, $player2_id = null) {
        $status = 'waiting_for_player'; // Default status if player2 is not provided
        if ($player2_id !== null) {
            $status = 'active'; 
        }

        $stmt = $this->connection->prepare("INSERT INTO games (player1_id, player2_id, status) VALUES (?, ?, ?)");
        $stmt->bind_param("iis", $player1_id, $player2_id, $status);
        $stmt->execute();
        
        if ($stmt->error) {
            return false; // Handle error
        }

        return $this->connection->insert_id; // Return the ID of the new game
    }

    // Method to record a move
    public function insertMove($game_id, $player_id, $from_position, $to_position, $piece_captured) {
        $stmt = $this->connection->prepare("INSERT INTO moves (game_id, player_id, from_position, to_position, piece_captured) VALUES (?, ?, ?, ?, ?)");
        $stmt->bind_param("iissi", $game_id, $player_id, $from_position, $to_position, $piece_captured);
        $stmt->execute();
        
        if ($stmt->error) {
            return false; // Handle error
        }

        return true;
    }

    // Method to get the current state of a game
    public function getGameState($game_id) {
        $stmt = $this->connection->prepare("SELECT * FROM games WHERE id = ?");
        $stmt->bind_param("i", $game_id);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($result->num_rows > 0) {
            return $result->fetch_assoc(); // Return the game state
        } else {
            return false; // Game not found or error
        }
    }

    // Method to update the status of a game
    public function updateGameStatus($game_id, $status) {
        $stmt = $this->connection->prepare("UPDATE games SET status = ? WHERE id = ?");
        $stmt->bind_param("si", $status, $game_id);
        $stmt->execute();
        
        if ($stmt->error) {
            return false; // Handle error
        }

        return true;
    }

    public function registerNewUser($username, $hashed_password, $email) {
        $stmt = $this->connection->prepare("INSERT INTO players (username, password, email) VALUES (?, ?, ?)");
        $stmt->bind_param('sss', $username, $hashed_password, $email);
        
        if ($this->checkUsernameExists($username) || $this->checkEmailExists($email)) {
            return false;
        }
    
        $stmt->execute();
        if ($stmt->error) {
            return false; // Handle error 
        }
    
        return $this->connection->insert_id; // Return the ID of the new user
    }
    
    private function checkUsernameExists($username) {
        $stmt = $this->connection->prepare("SELECT id FROM players WHERE username = ?");
        $stmt->bind_param('s', $username);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->num_rows > 0;
    }
    private function checkEmailExists($email) {
        $stmt = $this->connection->prepare("SELECT id FROM players WHERE email = ?");
        $stmt->bind_param('s', $email);
        $stmt->execute();
        $result = $stmt->get_result();
        return $result->num_rows > 0;
    }

}

