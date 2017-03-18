require("ai.ai")
require("ai.interrupts")

includeAiFile("actions/movebase.lua")
includeAiFile("actions/generatepatrolbase.lua")
includeAiFile("actions/waitbase.lua")
includeAiFile("actions/gettargetbase.lua")
includeAiFile("actions/selectweaponbase.lua")
includeAiFile("actions/selectattackbase.lua")

Move = createClass(MoveBase, Interrupt)
MoveDefault = createClass(MoveBase, DefaultInterrupt)
MovePack = createClass(MoveBase, PackInterrupt)
MoveCreaturePet = createClass(MovePetBase, CreaturePetInterrupt)
MoveDroidPet = createClass(MovePetBase, DroidPetInterrupt)
MoveFactionPet = createClass(MovePetBase, FactionPetInterrupt)
MoveVillageRaider = createClass(MoveVillageRaiderBase, VillageRaiderInterrupt)

CombatMove = createClass(CombatMoveBase, Interrupt)
CombatMoveCreaturePet = createClass(CombatMoveBase, CreaturePetInterrupt)
CombatMoveDroidPet = createClass(CombatMoveBase, DroidPetInterrupt)
CombatMoveFactionPet = createClass(CombatMoveBase, FactionPetInterrupt)
CombatMoveVillageRaider = createClass(CombatMoveBase, VillageRaiderInterrupt)

Walk = createClass(WalkBase, Interrupt)
WalkDefault = createClass(WalkBase, DefaultInterrupt)
WalkPack = createClass(WalkBase, PackInterrupt)
WalkCreaturePet = createClass(WalkBase, CreaturePetInterrupt)
WalkDroidPet = createClass(WalkBase, DroidPetInterrupt)
WalkFactionPet = createClass(WalkBase, FactionPetInterrupt)

GeneratePatrol = createClass(GeneratePatrolBase, Interrupt)
GeneratePatrolDefault = createClass(GeneratePatrolBase, DefaultInterrupt)
GeneratePatrolPack = createClass(GeneratePatrolBase, PackInterrupt)
GeneratePatrolVillageRaider = createClass(GeneratePatrolBase, VillageRaiderInterrupt)

Wait = createClass(WaitBase, Interrupt)
WaitDefault = createClass(WaitBase, DefaultInterrupt)
WaitPack = createClass(WaitBase, PackInterrupt)
WaitCreaturePet = createClass(WaitBase, CreaturePetInterrupt)
WaitDroidPet = createClass(WaitBase, DroidPetInterrupt)
WaitFactionPet = createClass(WaitBase, FactionPetInterrupt)

Wait10 = createClass(Wait10Base, Interrupt)
Wait10Default = createClass(Wait10Base, DefaultInterrupt)
Wait10Pack = createClass(Wait10Base, PackInterrupt)
Wait10CreaturePet = createClass(Wait10Base, CreaturePetInterrupt)
Wait10DroidPet = createClass(Wait10Base, DroidPetInterrupt)
Wait10FactionPet = createClass(Wait10Base, FactionPetInterrupt)
Wait10VillageRaider = createClass(Wait10VillageRaiderBase, VillageRaiderInterrupt)

GetTarget = createClass(GetTargetBase, Interrupt)
GetTargetCreaturePet = createClass(GetTargetBase, CreaturePetInterrupt)
GetTargetDroidPet = createClass(GetTargetBase, DroidPetInterrupt)
GetTargetFactionPet = createClass(GetTargetBase, FactionPetInterrupt)
GetTargetVillageRaider = createClass(GetTargetBase, VillageRaiderInterrupt)

SelectWeapon = createClass(SelectWeaponBase, Interrupt)
SelectWeaponCreaturePet = createClass(SelectWeaponBase, CreaturePetInterrupt)
SelectWeaponDroidPet = createClass(SelectWeaponBase, DroidPetInterrupt)
SelectWeaponFactionPet = createClass(SelectWeaponBase, FactionPetInterrupt)
SelectWeaponVillageRaider = createClass(SelectWeaponBase, VillageRaiderInterrupt)

SelectAttack = createClass(SelectAttackBase, Interrupt)
SelectAttackCreaturePet = createClass(SelectAttackBase, CreaturePetInterrupt)
SelectAttackDroidPet = createClass(SelectAttackBase, DroidPetInterrupt)
SelectAttackFactionPet = createClass(SelectAttackBase, FactionPetInterrupt)
SelectAttackVillageRaider = createClass(SelectAttackBase, VillageRaiderInterrupt)

-- these are done backwards and should probably be moved
includeAiFile("actions/move.lua")
includeAiFile("actions/combatmove.lua")
includeAiFile("actions/walk.lua")
includeAiFile("actions/wait10.lua")
includeAiFile("actions/gettarget.lua")
includeAiFile("actions/selectweapon.lua")
includeAiFile("actions/selectattack.lua")
