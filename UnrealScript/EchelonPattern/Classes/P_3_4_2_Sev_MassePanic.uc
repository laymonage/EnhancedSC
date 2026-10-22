//=============================================================================
// P_3_4_2_Sev_MassePanic
//=============================================================================
class P_3_4_2_Sev_MassePanic extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S3_4_2Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////

var int PartADone;
var int PartBDone;


// EVENTS //////////////////////////////////////////////////////////////////////

function EventCallBack(EAIEvent Event,Actor TriggerActor)
{
    if (!bDisableMessages)
    {
        switch (Event.EventType)
        {
        case AI_DEAD:
            EventJump('SomeoneDOA');
            break;
        case AI_UNCONSCIOUS:
            EventJump('SomeoneDOA');
            break;
        default:
            break;
        }
    }
}

function InitPattern()
{
    local Pawn P;

    Super.InitPattern();

    ForEach DynamicActors(class'Pawn', P)
    {
        if (P.name == 'EMasse0')
            Characters[1] = P.controller;
        if (P.name == 'spetsnaz17')
            Characters[2] = P.controller;
    }

    if (!bInit)
    {
    bInit=TRUE;
    PartADone=0;
    PartBDone=0;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
MasseAPart:
    Log("Philip Masse puts himself in harms way with Nikolai");
    SendUnrealEvent('MapStartZoneAI');
    CheckFlags(PartADone,TRUE,'DoNothing');
    GoalCompleted('MASSE');
    SetFlags(PartADone,TRUE);
    CinCamera(0, 'MasseCamShot1', 'MasseCamFocus1',);
    Goal_Default(1,GOAL_Wait,0,,'MasseFocus',,,'3446MSS1',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Default(2,GOAL_Guard,0,,'PhillipMasse',,'NikWatchMasse',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Sleep(3);
    Goal_Set(1,GOAL_Action,9,,,,,'3447mss1',FALSE,,,,);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MassePanic", "Speech_0005L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_46_01', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,9,,,,,'PrsoStNmBB0',FALSE,,,,);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MassePanic", "Speech_0006L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_46_02', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MassePanic", "Speech_0007L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_46_03', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,9,,,,,'PrsoStNmCC0',FALSE,,,,);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MassePanic", "Speech_0008L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_46_04', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    CinCamera(1, , ,);
    Sleep(2);
    SendPatternEvent('LambertAI','JointChiefsB');
    End();
MasseBPart:
    Log("Masse yells at Nikolai some more.");
    Goal_Set(1,GOAL_Action,9,,,,,,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MassePanic", "Speech_0009L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_47_01', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MassePanic", "Speech_0010L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_47_02', 2, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MassePanic", "Speech_0011L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_47_03', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MassePanic", "Speech_0012L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_47_04', 2, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MassePanic", "Speech_0013L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_47_05', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Close();
    SetExclusivity(FALSE);
    Goal_Default(2,GOAL_Patrol,0,,,,'Nikolai_300',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(1,GOAL_MoveTo,9,,,,'MasseExit',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    WaitForGoal(1,GOAL_MoveTo,);
    Log("Masse energize.");
    Teleport(1, 'MasseTeleportDestination');
    End();
DoNothing:
    Log("Doing nothing");
    End();
SomeoneDOA:
    Log("Someone has been killed or knocked out.");
    CheckIfIsDead(1,'MasseDown');
    CheckIfIsUnconscious(1,'MasseDown');
    End();
MasseDown:
    Log("Masse is dead or unconscious");
    SendPatternEvent('LambertAI','MasseDeathFail');
    End();

}

defaultproperties
{
}
