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

  const MushroomInput(
    this.capShape,
    this.capSurface,
    this.capColor,
    this.bruises,
    this.odor,
    this.gillAttachment,
    this.gillSpacing,
    this.gillSize,
    this.gillColor,
    this.stalkShape,
    this.stalkRoot,
    this.stalkSurfaceAboveRing,
    this.stalkSurfaceBelowRing,
    this.stalkColorAboveRing,
    this.stalkColorBelowRing,
    this.veilColor,
    this.ringNumber,
    this.ringType,
    this.sporePrintColor,
    this.population,
    this.habitat,
  );

  @override
  List<Object?> get props {
    return [
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
      habitat,
    ];
  }
}
