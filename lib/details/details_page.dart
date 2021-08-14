import 'package:flutter/material.dart';
import 'package:flutter_counter/component/title_widget.dart';
import 'package:flutter_counter/data/models/recipe_details_response.dart';

class DetailsPage extends StatefulWidget {
  final RecipeDetailsResponse recipeDetails;

  const DetailsPage({Key? key, required this.recipeDetails}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[20],
      body: Stack(
        children: [
          Hero(
              tag: "image-hero-${widget.recipeDetails.id.toString()}",
              child: Image.network(
                widget.recipeDetails.image!,
                fit: BoxFit.contain,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.7,
            minChildSize: 0.7,
            builder: (context, scrollController) {
              return SingleChildScrollView(
                  controller: scrollController, child: getBody());
            },
          )
        ],
      ),
    );
  }

  _getIngredient(Ingredients ingredient) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Chip(
        avatar: Image.network(
          _buildIngredientUrl(ingredient.image!),
        ),
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(ingredient.name!),
        ),
      ),
    );
  }

  _getInstruction(AnalyzedInstructions instruction) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var step in instruction.steps!)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("• " + step.step!),
          )
      ],
    );
  }

  List<Ingredients> _extractIngredients(
      List<AnalyzedInstructions> analyzedInstructions) {
    List<Ingredients> allIngredients = [];

    for (var it in analyzedInstructions) {
      for (var it2 in it.steps!) {
        for (var it3 in it2.ingredients!) {
          allIngredients.add(it3);
        }
      }
    }

    final names = allIngredients.map((e) => e.name).toSet();
    allIngredients.retainWhere((x) => names.remove(x.name));
    return allIngredients;
  }

  String _buildIngredientUrl(String image) {
    return "https://spoonacular.com/cdn/ingredients_100x100/$image";
  }

  Widget getBody() {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(32.0), topLeft: Radius.circular(32.0))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TitleWidget(widget.recipeDetails.title!, 28.0),
                TitleWidget('Ingredients', 24.0),
                Wrap(children: [
                  for (var ingredient in _extractIngredients(
                      widget.recipeDetails.analyzedInstructions!))
                    _getIngredient(ingredient),
                ]),
                TitleWidget('Directions', 24.0),
                for (var instruction
                    in widget.recipeDetails.analyzedInstructions!)
                  _getInstruction(instruction),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
