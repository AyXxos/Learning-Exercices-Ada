# Paramètres In, Out et In Out en Ada

## 📚 Objectif
Ce projet démontre l'utilisation des différents modes de passage de paramètres en Ada : `in`, `out`, et `in out`.

## 🎯 Concepts clés

### Les modes de paramètres

En Ada, il existe trois modes pour passer des paramètres aux procédures et fonctions :

1. **`in`** (par défaut) : Paramètre en lecture seule
   - La procédure peut lire la valeur mais ne peut pas la modifier
   - C'est le mode par défaut si aucun n'est spécifié
   - Utilisé pour passer des données à une procédure sans les modifier

2. **`out`** : Paramètre en écriture seule
   - La procédure peut modifier la valeur mais ne peut pas la lire
   - Utilisé pour retourner des résultats d'une procédure
   - La valeur d'entrée n'est pas garantie

3. **`in out`** : Paramètre en lecture/écriture
   - La procédure peut à la fois lire et modifier la valeur
   - Utilisé quand on veut modifier une variable existante
   - Permet les opérations de mise à jour

## 💻 Code d'exemple

```ada
with Ada.Text_IO; use Ada.Text_IO;

procedure Inoutparameters is
   
   -- Procédure avec paramètre IN (lecture seule)
   procedure Display_Money (Account : in Float) is
   begin
      Put_Line("You currently have :" & Float'Image(Account));
   end Display_Money;

   my_account : Float := 1000.00;
   bonus : Float := 0.0;

begin
   Display_Money (my_account);
end Inoutparameters;
```

### Explication du code

- **`Display_Money`** : Procédure qui affiche le solde d'un compte
  - Le paramètre `Account` est de type `in Float`
  - La procédure peut lire la valeur mais ne peut pas la modifier
  - Cela garantit que le solde original ne sera pas altéré

## 🔧 Exemples d'utilisation

### Paramètre `in` (lecture seule)
```ada
procedure Display_Money (Account : in Float) is
begin
   Put_Line("Solde : " & Float'Image(Account));
   -- Account := Account + 100.0; -- ERREUR : on ne peut pas modifier un paramètre IN
end Display_Money;
```

### Paramètre `out` (écriture seule)
```ada
procedure Calculate_Bonus (Amount : out Float) is
begin
   Amount := 150.0;  -- OK : on peut écrire dans un paramètre OUT
   -- Put_Line(Float'Image(Amount)); -- Peut fonctionner mais non recommandé
end Calculate_Bonus;
```

### Paramètre `in out` (lecture/écriture)
```ada
procedure Add_Bonus (Account : in out Float; Bonus : in Float) is
begin
   Account := Account + Bonus;  -- OK : on peut lire ET modifier
   Put_Line("Nouveau solde : " & Float'Image(Account));
end Add_Bonus;
```

## 🚀 Compilation et exécution

### Avec Alire
```bash
# Compiler le projet
alr build

# Exécuter le programme
alr run
```

### Avec GNAT directement
```bash
# Compiler
gnatmake src/inoutparameters.adb

# Exécuter
./inoutparameters
```

## 📊 Résultat attendu

```
You currently have : 1.00000E+03
```

## ⚡ Avantages des modes de paramètres

1. **Sécurité** : Le compilateur empêche les modifications accidentelles
2. **Clarté** : On sait immédiatement si une procédure modifie ses paramètres
3. **Optimisation** : Le compilateur peut optimiser selon le mode
4. **Documentation** : Le mode fait partie de l'interface et documente l'intention

## 📝 Bonnes pratiques

- Utilisez `in` quand vous n'avez besoin que de lire la valeur
- Utilisez `out` pour retourner des résultats calculés
- Utilisez `in out` uniquement quand vous devez modifier une valeur existante
- Préférez les fonctions pour retourner une seule valeur plutôt qu'un paramètre `out`

## 🔗 Ressources

- [Ada Reference Manual - Subprogram Parameters](https://www.adaic.org/resources/add_content/standards/12rm/html/RM-6-1.html)
- [Learn Ada - Subprograms](https://learn.adacore.com/courses/intro-to-ada/chapters/subprograms.html)

## 👤 Auteur

**AyXxos**
- Website: [ayxxos.netlify.app](https://ayxxos.netlify.app)

## 📄 License

MIT OR Apache-2.0 WITH LLVM-exception
