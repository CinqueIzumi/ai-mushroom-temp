import 'package:equatable/equatable.dart';

class MushroomInput extends Equatable {
  final String capShape;
  final String capSurface;
  final String capColor;
  final String bruises;
  final String odor;
  final String gillAttachment;
  final String gillSpacing;
  final String gillSize;
  final String gillColor;
  final String stalkShape;
  final String stalkRoot;
  final String stalkSurfaceAboveRing;
  final String stalkSurfaceBelowRing;
  final String stalkColorAboveRing;
  final String stalkColorBelowRing;
  final String veilType = 'p';
  final String veilColor;
  final String ringNumber;
  final String ringType;
  final String sporePrintColor;
  final String population;
  final String habitat;

  const MushroomInput({
    required this.capShape,
    required this.capSurface,
    required this.capColor,
    required this.bruises,
    required this.odor,
    required this.gillAttachment,
    required this.gillSpacing,
    required this.gillSize,
    required this.gillColor,
    required this.stalkShape,
    required this.stalkRoot,
    required this.stalkSurfaceAboveRing,
    required this.stalkSurfaceBelowRing,
    required this.stalkColorAboveRing,
    required this.stalkColorBelowRing,
    required this.veilColor,
    required this.ringNumber,
    required this.ringType,
    required this.sporePrintColor,
    required this.population,
    required this.habitat,
  });

  @override
  List<Object?> get props => [
        capShape,
        capSurface,
        capColor,
        bruises,
        odor,
        gillAttachment,
        gillSpacing,
        gillSize,
        gillColor,
        stalkShape,
        stalkRoot,
        stalkSurfaceAboveRing,
        stalkSurfaceBelowRing,
        stalkColorAboveRing,
        stalkColorBelowRing,
        veilColor,
        ringNumber,
        ringType,
        sporePrintColor,
        population,
        habitat
      ];
}
