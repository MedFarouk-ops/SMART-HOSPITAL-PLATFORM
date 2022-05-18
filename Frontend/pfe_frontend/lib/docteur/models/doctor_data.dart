import 'package:flutter/material.dart';
import 'package:pfe_frontend/authentication/models/user.dart';

class Ordonnance{
  final int id;
  final String description;
  final String donnees;
  final int patient_id;
  final int docteur_id;
  final String updated;
  final String created;

  const Ordonnance({
    required this.id,
    required this.description , 
    required this.donnees,
    required this.patient_id,
    required this.docteur_id,
    required this.created,
    required this.updated,
  });

  Map<String , dynamic> toJson() => {
            'description' : description,
            'donnees' : donnees,
            'patient' : patient_id,
            'docteur' : docteur_id,
  };

 factory Ordonnance.fromJson(Map<String, dynamic> json) {
    return Ordonnance(
      id : json['id'],
      description : json['description'],
      donnees : json['donnee'],
      patient_id : json['patient'],
      docteur_id : json['docteur'],
      created : json['created'],
      updated : json['updated'],
    );
  }

}


class Radio{
  final int id;
  final String description;
  final String donnees;
  final int patient_id;
  final int docteur_id;
  final String updated;
  final String created;

  const Radio({
    required this.id,
    required this.description , 
    required this.donnees,
    required this.patient_id,
    required this.docteur_id,
    required this.created,
    required this.updated,
  });

  Map<String , dynamic> toJson() => {
            'description' : description,
            'donnees' : donnees,
            'patient' : patient_id,
            'docteur' : docteur_id,
  };

 factory Radio.fromJson(Map<String, dynamic> json) {
    return Radio(
      id : json['id'],
      description : json['description'],
      donnees : json['donnee'],
      patient_id : json['patient'],
      docteur_id : json['docteur'],
      created : json['created'],
      updated : json['updated'],
    );
  }
  
}




class Analyse{
  final int id;
  final String description;
  final String donnees;
  final int patient_id;
  final int docteur_id;
  final String updated;
  final String created;

  const Analyse({
    required this.id,
    required this.description , 
    required this.donnees,
    required this.patient_id,
    required this.docteur_id,
    required this.created,
    required this.updated,
  });

  Map<String , dynamic> toJson() => {
            'description' : description,
            'donnees' : donnees,
            'patient' : patient_id,
            'docteur' : docteur_id,
  };

 factory Analyse.fromJson(Map<String, dynamic> json) {
    return Analyse(
      id : json['id'],
      description : json['description'],
      donnees : json['donnee'],
      patient_id : json['patient'],
      docteur_id : json['docteur'],
      created : json['created'],
      updated : json['updated'],
    );
  }
  
}