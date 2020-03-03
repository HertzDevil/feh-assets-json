# feh-assets-json

This repository hosts JSON dumps of `.bin` HSDArc asset files in Fire Emblem
Heroes. The `master` branch tracks all app or data updates since Book IV.

Object formats are documented [here][re-notes], and they will eventually be
moved into this repository. Not all formats are documented, and the purposes of
some fields remain unknown or untested.

The goal of this repository is to enable programmatic access to FEH's internal
data, and to detect binary differences in a human-readable manner. It does not
entail the extraction of data from / insertion of data to an FEH installation.

## Extras

The `extras/` directory contains other useful files:

* `diffed_skills.rb`: Ruby script which merges all skill definition files, sorts
  them by their internal IDs, and removes fields that are equal to the blank
  skill definition (`SID_無し`).
* `schemas/`: Versioned JSON schemas that can be used to validate JSON dumps and
  provide documentation for JSON fields.
* `SRPGMap/*.json`: Special Map definition files.

## Availability

* [ ] `files/assets/Common/`
  * [x] `Arena/*.bin`
  * [ ] `Battle/`
    * [ ] `AnimSignals/*.bin`
    * [ ] `Asset/*.bin`
  * [ ] `Delivery/`
    * [x] `ArenaMap/*.bin`
    * [x] `ArenaPerson/*.bin`
    * [ ] `EncountCrystal/*.bin`
    * [ ] `Flag/*.bin`
    * [ ] `GainBonus/*.bin`
    * [ ] `PromotionMedal/*.bin`
    * [x] `SequentialArenaMap/*.bin`
    * [x] `VoteMap/*.bin`
    * [ ] `Daily.bin`
    * [ ] `f3Kb9BEt.bin`
    * [ ] `NBYxPBbL.bin`
    * [x] `Season.bin`
    * [ ] `Stamina.bin`
  * [x] `DressAccessory/`
    * [x] `Data/*.bin`
    * [x] `PersonData/*.bin`
  * [ ] `Effect/`
    * [ ] `arc/*.bin`
  * [ ] `FriendDouble/*.bin`
  * [ ] `HeroTrial/*.bin`
  * [x] `HolyGrail/*.bin`
  * [ ] `Home/`
    * [ ] `3R_2ZUtKrm/*.bin`
    * [ ] `9h-bR4lQy/*.bin` (Heroes' Path)
    * [ ] `hQ2uT_yaiphg/*.bin`
    * [ ] `u3t_bQ-0O/*.bin`
  * [ ] `Loading/`
    * [ ] `Data.bin`
  * [ ] `LoginBonus/`
    * [ ] `T49QnDBP2/*.bin`
    * [ ] `vKw9mbW13/*.bin`
    * [ ] `LoginBonus.bin`
  * [x] `Mission/*.bin`
  * [ ] `Mjolnir/`
    * [ ] `BattleData/*.bin`
    * [ ] `FacilityData/*.bin`
    * [ ] `MiscData/*.bin`
    * [ ] `TemplateData/*.bin`
  * [ ] `MusicShop/`
    * [ ] `Authority/*.bin`
    * [ ] `BgmConfig/*.bin`
    * [x] `ProductMusic/*.bin`
  * [ ] `Occupation/`
    * [ ] `Data/*.bin`
    * [x] `World/*.bin`
  * [ ] `Portrait/*.bin`
  * [x] `SequentialArena/*.bin`
  * [ ] `Shadow/*.bin`
  * [ ] `SkyCastle/`
    * [ ] `BattleData/*.bin`
    * [ ] `ConsumeItemData/*.bin`
    * [x] `FacilityData/*.bin`
    * [ ] `HolidayDefsData/*.bin`
    * [ ] `HolidayEventData/`
      * [ ] `AccessoryList/*.bin`
      * [ ] `CookAuthority/*.bin`
      * [ ] `CookTerm/*.bin`
      * [ ] `Crop/*.bin`
      * [ ] `Dish/*.bin`
      * [ ] `SkillList/*.bin`
    * [ ] `HolidayShopData/*.bin`
    * [ ] `HolidayUnitCommandData/*.bin`
    * [ ] `MiscData/*.bin`
    * [ ] `TemplateData/*.bin`
  * [ ] `Sound/`
    * [ ] `arc/*.bin`
  * [ ] `SRPG/`
    * [ ] `BattleBg/*.bin`
    * [x] `BlessingGarden/*.bin`
    * [x] `Enemy/*.bin`
    * [x] `Field/*.bin`
    * [ ] `IdolTower/*.bin`
    * [ ] `Occupation/`
      * [ ] `Bonus/*.bin`
      * [ ] `Config/*.bin`
      * [ ] `Rule/*.bin`
    * [x] `Person/*.bin`
    * [ ] `SequentialMap/*.bin`
    * [x] `SequentialTrialBind/*.bin`
    * [x] `SequentialTrialMainStory/*.bin`
    * [x] `SequentialTrialSideStory/*.bin`
    * [x] `Skill/*.bin`
    * [x] `SkillAbility/*.bin`
    * [x] `SkillAccessory/*.bin`
    * [x] `SkillAccessoryCreatable/*.bin`
    * [x] `SkillLimit/*.bin`
    * [x] `SkillTiming/*.bin`
    * [ ] `StageBgm/`
      * [ ] `HeroTrial/*.bin`
      * [ ] `Occupation/*.bin`
      * [ ] `Preset/*.bin`
      * [ ] `./*.bin`
    * [x] `StageEvent/*.bin`
    * [x] `StagePuzzle/*.bin`
    * [x] `StageScenario/*.bin`
    * [x] `WeaponRefine/*.bin`
    * [ ] `Attribute.bin`
    * [ ] `Dragonflower.bin`
    * [ ] `Exp.bin`
    * [x] `Grow.bin`
    * [ ] `Individual.bin`
    * [x] `Move.bin`
    * [ ] `Other.bin`
    * [ ] `Rarity.bin`
    * [ ] `ReliancePerson.bin`
    * [ ] `ReliancePlayer.bin`
    * [ ] `StageArenaMedal.bin`
    * [x] `StageEncount.bin`
    * [ ] `StageScenario.bin`
    * [ ] `StageTutorial.bin`
    * [x] `Terrain.bin`
    * [x] `Weapon.bin`
  * [x] `SRPGMap/*.bin`
  * [ ] `SubscriptionCostume/*.bin`
  * [ ] `Summon/*.bin`
  * [ ] `TapAction/`
    * [ ] `TapBattleData/*.bin`
    * [ ] `TapBattleTestPlayData/*.bin`
  * [ ] `Tournament/*.bin`
  * [ ] `Trip/`
    * [ ] `AdditionalAuthorities/*.bin`
    * [ ] `Terms/*.bin`
  * [ ] `Tutorial/*.bin`
  * [ ] `Wb-4glP03ab/*.bin`
* [x] `files/assets/[LANG]`
  * [x] `Message`
    * [x] `Character/*.bin`
    * [x] `CrossLanguage/*.bin`
    * [x] `Data/*.bin`
    * [x] `Embedded/*.bin`
    * [x] `Menu/*.bin`
    * [x] `Scenario/*.bin`

[re-notes]: https://feheroes.gamepedia.com/User:HertzDevil/Reverse-engineering_notes
