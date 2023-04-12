import 'package:flutter/material.dart';
import 'package:thuisgemaaktexamen/models/recipe.dart';
import 'package:thuisgemaaktexamen/components/recipe_item.dart';

class RecipeOverviewPage extends StatefulWidget {
  const RecipeOverviewPage({super.key});

  @override
  State<RecipeOverviewPage> createState() => _RecipeOverviewPageState();
}

class _RecipeOverviewPageState extends State<RecipeOverviewPage> {
  List<Recipe> loadedRecipes = [
    Recipe(
      id: 'p1',
      title: 'Linzensoep',
      time: '40 minuten',
      ingredients: '• 200 gr wortel \n'
          '• 300 gr gedroogde rode linzen \n'
          '• 400 ml tomatenblokjes \n'
          '• 150 gr bleekselderij \n'
          '• 1 teen knoflook \n'
          '• 1 ui \n'
          '• 1 theelepel komijn \n'
          '• 1 theelepel paprikapoeder \n'
          '• snuf kaneel \n'
          '• 1 groente bouillonblokje \n'
          '• 1200 waterverse koriander (of peterselie) \n'
          '• 170 gr (plantaardige) yoghurt',
      bereiding:
          '1. Hak de ui en knoflook fijn. Verhit een beetje olie of boter in een soeppan en fruit de ui en knoflook aan. Snijd de wortel in stukjes en bleekselderij in plakjes. Voeg toe aan de pan en roerbak een paar minuten mee. Voeg het paprikapoeder, kaneel en komijn toe. Doe dan de tomatenblokjes erbij en de rode linzen. Giet het water erbij en doe het bouillonblokje er in. \n'
          '2. Breng de linzensoep aan de kook en kook ongeveer 25 minuten. Pureer de soep fijn met de staafmixer. Je kunt hem wat grover laten of helemaal fijn mixen. Roer de Griekse yoghurt los en schep voor het serveren in de linzensoep en garneer met koriander. \n'
          '3. Deze linzensoep is lekker als lunch maar is ook vullend als avondmaal, eventueel met wat brood of salade er bij. \n',
      imageUrl:
          'https://www.leukerecepten.nl/wp-content/uploads/2019/09/linzensoep_b.jpg',
    ),
    Recipe(
      id: 'p2',
      title: 'Boerencake',
      time: '80 minuten',
      ingredients: '• 250 gram boter (ongezouten margarine of roomboter)\n'
          '• 4 eieren \n'
          '• 250 gram zelfrijzend bakmeel (of bloem met theelepel bakpoeder gemengd) \n'
          '• 250 gram fijne kristalsuiker \n'
          '• 1 zakje vanillesuiker \n'
          '• 60 ml melk',
      bereiding: '1. Verwarm de oven voor op 160 graden \n'
          '2. Vet een cakevorm in met wat boter of een bak spray \n'
          '3. Mix in een beslagkom de boter samen met de suiker en de vanillesuiker luchtig \n'
          '4. Voeg 1 voor 1 de eieren toe en mix kort door \n'
          '5. Zelf de bloem boven het beslag en mix nogmaals kort door \n'
          '6. Giet als laatste de melk erbij en mix het geheel tot een glad beslag \n'
          '7. Doe het beslag in de cakevorm en zet in het midden van de oven op een rooster \n'
          '8. Bak de cake in ongeveer 60 minuten gaar \n'
          '9. Controleer na 50 min of de cake gaar is door er met een sate prikker in te prikken, komt deze er schoon uit dan is de cake gaar, anders de baktijd met 5 minuten verlengen en nogmaals controleren (bij de meeste ovens duurt het ongeveer een uur \n'
          '10. Als de cake gaar is haal het bakblik uit de oven en laat de cake eerst 5-10 minuten afkoelen in het blik, stort de cake daarna op een rooster en laat verder afkoelen',
      imageUrl:
          'https://www.cake-recept.nl/wp-content/uploads/2017/01/boerencake.jpg',
    ),
    Recipe(
      id: 'p3',
      title: 'Hamburger',
      time: 'PREMIUM NODIG',
      ingredients: 'PREMIUM NODIG',
      bereiding: 'PREMIUM NODIG',
      imageUrl:
          'https://www.foodandfriends.nl/app/uploads/2020/12/Humburger-Kookschool-klassiek.jpg',
    ),
    Recipe(
      id: 'p4',
      title: 'Pannenkoek',
      time: '20 minuten',
      ingredients: '• 2 eieren \n'
          '• 250 gr bloem \n'
          '• 500 ml melk \n'
          '• zout',
      bereiding:
          '1. Meng in een kom de eieren, de bloem, melk en een snufje zout. Als alle klontjes zijn verdwenen, kunnen de pannenkoeken gebakken worden. \n'
          '2. Verwarm een beetje boter of margarine in een pan. Wacht even totdat de pan goed warm is, en verdeel dan met een soeplepel wat beslag in het midden van de pan. Beweeg je pan een beetje heen en weer zodat het beslag over de hele pan verdeeld is. Bak de pannenkoek ongeveer 2-3 minuten totdat de bovenkant droog is. Draai de pannenkoek om en bak de pannenkoek nog ongeveer 1-2 minuten op de andere kant. \n'
          '3. Leg de pannenkoek op een bord en dek het bord af met een grote deksel. Bak zo de rest van de pannenkoeken. Vergeet niet om iedere keer een beetje extra boter of margarine in de pan te doen, voordat je een nieuwe pannenkoek bakt.',
      imageUrl:
          'https://www.leukerecepten.nl/wp-content/uploads/2021/08/pannenkoek-recepten-1.jpg',
    ),
    Recipe(
      id: 'p5',
      title: 'Kapsalon',
      time: 'PREMIUM NODIG',
      ingredients: 'PREMIUM NODIG',
      bereiding: 'PREMIUM NODIG',
      imageUrl:
          'https://static-images.jumbo.com/product_images/Recipe_505932-01_560x560.jpg',
    ),
    Recipe(
      id: 'p6',
      title: 'perenmuffins',
      time: 'PREMIUM NODIG',
      ingredients: 'PREMIUM NODIG',
      bereiding: 'PREMIUM NODIG',
      imageUrl:
          'https://www.leukerecepten.nl/wp-content/uploads/2023/02/peren-muffins-b.jpg',
    ),
    Recipe(
      id: 'p7',
      title: 'Pasta carbonara',
      time: '25 minuten',
      ingredients: '• 400 gr spaghetti \n'
          '• 200 gr gerookte spekblokjes of reepjes \n'
          '• verse peterselie \n'
          '• 100 gr Parmezaanse kaas (geraspt) \n'
          '• 3 eieren \n'
          '• snuf peper en zout',
      bereiding:
          '1. Doe de spekblokjes in een pan en bak ze mooi krokant. Ze hoeven niet helemaal uitgebakken te worden. \n'
          '2. Zet ondertussen een grote pan water met een snufje zout op het vuur en als het water kookt voeg je de spaghetti toe. Kook de spaghetti in ongeveer 10 min al dente (of check de verpakking voor de bereidingswijze). \n'
          '3. Voeg de pasta direct uit de pan waarin je het hebt gekookt toe aan de pan met spekjes toe en schep er doorheen. Zet het vuur uit van de pan met spekjes en spaghetti. \n'
          '4. Voeg de geraspte Parmezaanse kaas toe en voeg er een klein beetje pasta kookvocht aan toe, zodat de kaas smelt. \n'
          '5. Kluts ondertussen de eieren en voeg ze daarna al roerend toe. Blijf roeren totdat het een romige saus. \n'
          '6. Garneer de pasta carbonara eventueel met een beetje kaas en peterselie. Pasta carbonara is lekker met een frisse salade.',
      imageUrl:
          'https://www.leukerecepten.nl/wp-content/uploads/2022/07/pasta-carbonara_recept.jpg',
    ),
    Recipe(
      id: 'p8',
      title: 'Appeltaart',
      time: 'PREMIUM NODIG',
      ingredients: 'PREMIUM NODIG',
      bereiding: 'PREMIUM NODIG',
      imageUrl:
          'https://images.ctfassets.net/brcxfsm84vq2/7eBkjOINljB22V9Tx2qSno/5a05656241fe2083dbd1cf20668cd862/appeltaart_met_extra_veel_deeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Thuisgemaakt'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: loadedRecipes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, i) => RecipeItem(
            id: loadedRecipes[i].id,
            title: loadedRecipes[i].title,
            time: loadedRecipes[i].time,
            imageUrl: loadedRecipes[i].imageUrl,
            ingredients: loadedRecipes[i].ingredients,
            bereiding: loadedRecipes[i].bereiding,
          ),
        ),
      ),
    );
  }
}
