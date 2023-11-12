function func0() {
    let test = prompt("Merci d'inscrire une chaîne de caractères ?");
    if (texte) {
        document.body.innerHTML = test;
    }
}

function func1() {
    let a = prompt('Entrez la première valeur');
    let b = prompt('Entrez la deuxième valeur');
    let resultat = a + b;
    alert(resultat);
}

function func2() {
    let note_maths = prompt("Entrez la note en math");
    let note_francais = prompt("Entrez la note en français");
    let note_hg = prompt("Entrez la note en histoire géo");
    let moyenne = (note_maths + note_francais + note_hg) /3;
    alert('La moyenne est de ' + moyenne);
}

function func3() {
    let budget = prompt("Entrez votre budget");
    let achats = prompt("Entrez le montant de vos achats");
    if (budget >= achats){
        alert("Votre budget de " + budget + "€ vous permet de payer le montant des achats qui s'élèvent à " + achats + "€");
    } else {
        alert("Votre budget de " + budget + "€ ne vous permet pas de payer le montant des achats qui s'élèvent à " + achats + "€");
    }
}

function func4() {
    let ht = prompt("Montant HT ?");
    let ttc = ht * 1.2;
    document.body.innerText = ttc;
}

function func5() {
    let ht = prompt("Montant HT ?");
    let tva = prompt("Taux de TVA en %");
    let taux = (tva / 100) + 1;
    let ttc = ht * taux;
    document.body.innerText = ttc;
}

function func6() {
    let ht = prompt("Montant HT ?");
    let tva = prompt("Taux de TVA en %");
    let ttc = ht * (tva / 100) + 1;
    if (ttc > 100){
        document.body.innerText = '<h1 style="color: red;">' + ttc + '</h1>';
    } else {
        document.body.innerText = '<h1 style="color: green;">' + ttc + '</h1>';
    }
}

function func7() {
    document.getElementById('cocktail').innerText = 'Long Island Iced Tea';
}

function func8() {
    for(let i = 10;i <= 1000;i+=10) {
        console.log(i);
    }
}

function func9() {
    let age = prompt("Quel est votre âge ?");
    if(age >= 18) {
        alert('Vous êtes majeur !');
    } else {
        alert('Vous êtes mineur !');
    }
}

function func10() {
    let cp = 77000;
    while(cp <= 77999) {
        console.log(cp);
        cp++;
    }
}

function func11() {
    let n = 5;
    let html = '';
    for(let i = 1;i <= 10;i++) {
        html = html + n + ' x ' + i + ' = ' + (n * i) + ' <br />';
    }
    document.body.innerHTML = html;
}

function func12() {
    let html = '';
    for(let i = 1;i <= 5;i++) {
        for(let k = 1;k <= i;k++) {
            html = html + i;
        }
        html = html + '<br />';
    }
    document.body.innerHTML = html;
}

function func13() {
    let html = '';
    let k = 0;

    while(k <= 20) {
        html = html + k + '<br />';
        k = k + 2;
    }
    document.body.innerHTML = html;
}

function func14() {
    let tableau = '<table>';
    let lignes = 5;
    let colonnes = 3;

    for(let i = 1;i <= lignes;i++) {
        tableau = tableau + '<tr>';
        for(let k = 1;k <= colonnes;k++) {
            tableau = tableau + '<td>yolo</td>';
        }
        tableau = tableau + '</tr>';
    }
    tableau = tableau + '</table>';
    document.body.innerHTML = tableau;
}

function func15() {
    let lignes = prompt("Nombre de lignes ?");
    let colonnes = prompt("Nombre de colonnes ?");
    let tableau = '<table>';

    for(let i = 1;i <= lignes;i++) {
        tableau = tableau + '<tr>';
        for(let k = 1;k <= colonnes;k++) {
            tableau = tableau + '<td>yolo</td>';
        }
        tableau = tableau + '</tr>';
    }
    tableau = tableau + '</table>';
    document.body.innerHTML = tableau;
}

function func16() {
    let html = '<ul>';
    let nalea = 10;
    for(let i = 0;i < nalea;i++) {
        html = html + '<li>' + Math.floor(Math.random() * 100) + '</li>';
    }
    html = html + '</ul>';
    document.body.innerHTML = html;
}

function func17(){
    let html = '<ul>';
    let nalea = 10;
    for(let i = 0;i < nalea;i++) {
        let tmp = Math.floor(Math.random() * 11);
        if(tmp == 10) {
            console.log('Le nombre 10 fait parti du tirage.');
        }
        html = html + '<li>' + tmp + '</li>';
    }
    html = html + '</ul>';
    document.body.innerHTML = html;
}

function func18(){
    let html = '<ul>';
    let nalea = 10;
    let nalea10 = 0;
    for(let i = 0;i < nalea;i++) {
        let tmp = Math.floor(Math.random() * 11);
        if(tmp == 10) {
            nalea10++;
        }
        html = html + '<li>' + tmp + '</li>';
    }
    html = html + '</ul>';
    html = html + '<p>Il y a eu ' + nalea10 + ' tirages de 10.</p>'
    document.body.innerHTML = html;
}

function func19(){
    let r = Math.floor(Math.random() * 256);
    let g = Math.floor(Math.random() * 256);
    let b = Math.floor(Math.random() * 256);
    let color = "rgb(" + r + ", " + g + ", " + b + ")";
    document.body.style.background = color;
}
