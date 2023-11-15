// Event listener for the Start Game button
document.getElementById('start-game-btn').addEventListener('click', function() {
    startNewGame();
});

function startNewGame() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            // The response will be the new game ID if successful
            var gameId = this.responseText;
            console.log("New game started with ID:", gameId);
        }
    };
    xhttp.open("POST", "start_game.php", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("action=start");
}
