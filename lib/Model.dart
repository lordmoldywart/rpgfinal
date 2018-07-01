import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Model.dart';
import 'dart:async';
import 'View.dart';
import 'package:rxdart/subjects.dart';
import 'dart:math';

//****** HP THINGS ********************
// starting hp = initial racial die (d6) + racial flat (6) + (MusNaMo + FitNaMo + 2VitNaMo) --- min 7
// mw threshold = 10% max hp (RU) + VitNaVa

//****** STAMINA THINGS ***************
// max stamina = arbitrary set
// restore limit = RD(MaxStamina * (Base[.5] + Trait[?] + Training[?]))
// exertion limit = [Base = RD((MusPoMo + (FitPoMo or MusPoMo) + WilPoMo) / 3) + 2.  Min Base = 2] + trait [1] + training

//****** REACTIONS ********************
// reaction window = [Base = 1 + OddRefPoMo] + [Trait = 1] + [Training = ?] - [(Armor Check + Shield Check + Helm Check]
// delay = Base Action = d8+2 TU, +1 RW (ARBITRARY)
// initiative mod = [Base = RefNaMo] + Trait + Training - Armor/Shield/Helm Checks

//****** MOVEMENT *********************
// movement time = [Base = 7] + Post-Muscle Armor and Shield Checks
// dash = [Base = 2




//testing github integration


class Model {

  int muscle = 15, fitness = 15, vitality = 9, agility = 14, dexterity = 10, reflexes = 12, willpower = 9, intelligence = 14, memory = 15;
  int maxHp = 21;

  naMo(int x){
    int y = x - 10;
    return y;
  }

  poMo(int x){
    if (x > 10){
      int y = x - 10;
      return y;
    }
    else {
      return 0;
    }
  }

  int





}
