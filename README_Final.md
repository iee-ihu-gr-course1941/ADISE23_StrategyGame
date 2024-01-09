# ADISE23_StrategyGame
Εργασια Εξαμηνου ΑΔΙΣΕ 2023 με θεμα το Stratego απο τους Γκρισπάνης Αλέξανδρος 185171 , Χάιτας Κωνσταντινος 

#Demo Page

Το παιχνιδι μπορειτε να το βρειτε εδω: https://users.iee.ihu.gr/~iee2019182/stratego/index.html


# Εγκατάσταση

## Απαιτήσεις

* Apache2
* Mysql Server
* php

## Οδηγίες Εγκατάστασης

 * Κάντε clone το project σε κάποιον φάκελο <br/>
  `$ git clone https://github.com/iee-ihu-gr-course1941/ADISE23_StrategyGame.git'

 * Βεβαιωθείτε ότι ο φάκελος είναι προσβάσιμος από τον Apache Server. πιθανόν να χρειαστεί να καθορίσετε τις παρακάτω ρυθμίσεις.

 * Θα πρέπει να δημιουργήσετε στην Mysql την βάση με όνομα 'adise23' και να φορτώσετε σε αυτήν την βάση τα δεδομένα από το αρχείο schema.sql

 * Θα πρέπει να φτιάξετε το αρχείο lib/config_local.php το οποίο να περιέχει:
```
    <?php
	$DB_PASS = '';
	$DB_USER = 'root';
    ?>
```

# Περιγραφή Παιχνιδιού

To Stratego παιζεται ως εξης: 2 παικτες εχουν ο καθενας απο 20 πιονια στη διαθεση και παιζεται σε ενα πινακα διαστασεων 10χ10 οπου στη μεση υπαρχουν 2 λιμνες. Το καθε πιονι εχει τη δικια του βαθμιδα και ο τελικος στοχος ειναι να κατακτηθει η σημαια του αντιπαλου ωστε να βγει νικητης.

Οι κανονες ειναι: 
-Πρωτος παικτης ειναι παντα ο κοκκινος.
-Καθε πιονι κουνιεται οριζοντια και καθετα ανα ενα κουτακι εφοσον δεν υπαρχει πιονι ιδιου χρωματος, πιονι αντιπαλου και η λιμνη. Εξαιρεση σε αυτο τον κανονα ειναι ο Scouter που κινειται οριζοντια και καθετα για οσες θεσεις θελει εφοσον δεν υπαρχει πιονι ιδιου χρωματος, πιονι αντιπαλου και η λιμνη.
-Κανενα πιονι δεν μπορει να διασχισει τις λιμνες που βρισκονται στη μεση του χαρτη
- Νικητης οριζεται αυτος που θα κατακτησει τη σημαια πρωτος.
- Τα πιονια Βομβας και Σημαιας μενουν σταθερα στις θεσεις τους.
-Το καθε πιονι αντιστοιχιζεται σε καποια βαθμιδα , οταν γινεται επιθεση αυτο που εχει        μεγαλυτερη βαθμιδα νικαει. Σε περιπτωση ισοβαθμιας διαγραφονται και τα 2. Ειδικες περιπτωσεις ειναι αυτες των miners και του Spy.
- Ο miner και μονο αυτος μπορει να καταστρεψει τις βομβες. Στη περιπτωση του spy , ειναι το μονο πιονι που μπορει να νικησει τον Marshal(βαθμιδα 10) εφοσον ο spy ειναι αυτος που επιτηθεται.

Βαθμιδες:

Bomb      -> 6 Ο καθε παικτης (Special)
Marshal   -> 1 ο καθε παικτης (Rank=10)
General   -> 1 ο καθε παικτης (Rank=9)
Colonel   -> 2 ο καθε παικτης (Rank=8)
Major     -> 3 ο καθε παικτης (Rank=7)
Captain   -> 4 ο καθε παικτης (Rank=6)
Lieutenant-> 4 ο καθε παικτης (Rank=5)
Sergeant  -> 4 ο καθε παικτης (Rank=4)
Miner     -> 5 ο καθε παικτης (Rank=3)
Scout     -> 8 ο καθε παικτης (Rank=2)
Spy       -> 1 ο καθε παικτης (Rank=1)
Flag      -> 1 ο καθε παικτης (Special)

Η βαση κραταει τα εξης στοιχεια: 

- Status παιχνιδου ( not active','initialized','started','ended','aborded').
- Στοιχεια παικτη (Ονομα, επιλογη χρωματος, μοναδικο τοκεν, τελευταια κινηση)
- Πινακα Παιχνιδιου (board color : White, Green/ piece color: Red,Blue / τα πιονια : 1-10, Bomb, Flag )
- Board_Empty ως ενα αντιγραφο του Board για πιο ευκολο reset του πινακα


Η εφαρμογη αναπτυχθηκε μεχρι το σημειο που υπαρχει νικητης δηλαδη να καταφερει καποιος να κανει Capture the Flag.
Στην εφαρμογη υλοποιηθηκαν : 
    + Αρχικοποίηση σύνδεσης-authentication 
    + Έλεγχος κανόνων παιχνιδιού
    + Αναγνώριση σειράς
    + Το APΙ να χρησιμοποιεί json μορφή για τα δεδομένα.
    + Γραφική εμφάνιση του board η εντολή κίνησης να δίνεται από ποντικι  αλλα με drag & drop αλλα και με textarea/input text
    + Η κατάσταση του παιχνιδιού αποθηκεύεται πλήρως σε mysql


Δεν υλοποιηθηκαν :
    - Αρχικοποιηση των πιονιων απο τους παικτες στη θεση που επιθυμουν οι ιδιοι μεσω ενος ενδιαμεσου status (Configuring)

    - Τα πιονια να μην ειναι ορατα στον αντιπαλο παρα μονο οταν γινεται επιθεση


# Περιγραφή API

## Methods


### Board
#### Ανάγνωση Board

```
GET /board/
```

Επιστρέφει το [Board](#Board).

#### Αρχικοποίηση Board
```
POST /board/
```

Αρχικοποιεί το Board, δηλαδή το παιχνίδι. Γίνονται reset τα πάντα σε σχέση με το παιχνίδι.
Επιστρέφει το [Board](#Board).

### Piece
#### Ανάγνωση Θέσης/Πιονιού

```
GET /board/piece/:x/:y/
```

Κάνει την κίνηση του πιονιού από την θέση x,y στην νέα θέση. Προφανώς ελέγχεται η κίνηση αν είναι νόμιμη καθώς και αν είναι η σειρά του παίκτη να παίξει με βάση το token.
Επιστρέφει τα στοιχεία από το [Board](#Board-1) με συντεταγμένες x,y.
Περιλαμβάνει το χρώμα του πιονιού και τον τύπο.

#### Μεταβολή Θέσης Πιονιού

```
PUT /board/piece/:x/:y/
```
Json Data:

| Field             | Description                 | Required   |
| ----------------- | --------------------------- | ---------- |
| `x`               | Η νέα θέση x                | yes        |
| `y`               | Η νέα θέση y                | yes        |

Επιστρέφει τα στοιχεία από το [Board](#Board-1) με συντεταγμένες x,y.
Περιλαμβάνει το χρώμα του πιονιού και τον τύπο


### Player

#### Ανάγνωση στοιχείων παίκτη
```
GET /players/:p
```

Επιστρέφει τα στοιχεία του παίκτη p ή όλων των παικτών αν παραληφθεί. Το p μπορεί να είναι 'B' ή 'R'.

#### Καθορισμός στοιχείων παίκτη
```
PUT /players/:p
```
Json Data:

| Field             | Description                 | Required   |
| ----------------- | --------------------------- | ---------- |
| `username`        | Το username για τον παίκτη p. | yes        |
| `color`           | To χρώμα που επέλεξε ο παίκτης p. | yes        |


Επιστρέφει τα στοιχεία του παίκτη p και ένα token. Το token πρέπει να το χρησιμοποιεί ο παίκτης καθόλη τη διάρκεια του παιχνιδιού.

### Status

#### Ανάγνωση κατάστασης παιχνιδιού
```
GET /status/
```

Επιστρέφει το στοιχείο [Game_status](#Game_status).

## Entities


### Board
---------

Το board είναι ένας πίνακας, ο οποίος στο κάθε στοιχείο έχει τα παρακάτω:


| Attribute                | Description                                  | Values                              |
| ------------------------ | -------------------------------------------- | ----------------------------------- |
| `x`                      | H συντεταγμένη x του τετραγώνου              | 1..8                                |
| `y`                      | H συντεταγμένη y του τετραγώνου              | 1..8                                |
| `b_color`                | To χρώμα του τετραγώνου                      | 'G','W'                             |
| `piece_color`            | To χρώμα του πιονιού                         | 'B','R', null                       |
| `piece`                  | To Πιόνι που υπάρχει στο τετράγωνο           | '1','2','3','4','5', '6', '7','8', '9', '10', 'B', 'F', null       |
| `moves`                  | Πίνακας με τα δυνατά τετράγωνα (x,y) που μπορεί να μετακινηθεί το τρέχον πιόνι. Αν δεν υπάρχει πιόνι, ή δεν έχει κάνει login ο χρήστης, ή δεν έχει ξεκινήσει το παιχνίδι ή αν δεν υπάρχουν κινήσεις, τότε το πεδίο δεν υπάρχει. |   |






### Players
---------

O κάθε παίκτης έχει τα παρακάτω στοιχεία:


| Attribute                | Description                                  | Values                              |
| ------------------------ | -------------------------------------------- | ----------------------------------- |
| `username`               | Όνομα παίκτη                                 | String                              |
| `piece_color`            | To χρώμα που παίζει ο παίκτης                | 'Β','R'                             |
| `token  `                | To κρυφό token του παίκτη. Επιστρέφεται μόνο τη στιγμή της εισόδου του παίκτη στο παιχνίδι | HEX |






### Game_status
---------

H κατάσταση παιχνιδιού έχει τα παρακάτω στοιχεία:


| Attribute                | Description                                  | Values                              |
| ------------------------ | -------------------------------------------- | ----------------------------------- |
| `status  `               | Κατάσταση             | 'not active', 'initialized', 'started', 'ended', 'aborded'     |
| `p_turn`                 | To χρώμα του παίκτη που παίζει        | 'B','R',null                              |
| `result`                 |  To χρώμα του παίκτη που κέρδισε |'B','R',null                              |
| `last_change`            | Τελευταία αλλαγή/ενέργεια στην κατάσταση του               παιχνιδιού         | timestamp |