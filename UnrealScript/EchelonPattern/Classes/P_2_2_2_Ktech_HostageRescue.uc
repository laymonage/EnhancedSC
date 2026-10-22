//=============================================================================
// P_2_2_2_Ktech_HostageRescue
//=============================================================================
class P_2_2_2_Ktech_HostageRescue extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S2_2_2Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////



// EVENTS //////////////////////////////////////////////////////////////////////

function EventCallBack(EAIEvent Event,Actor TriggerActor)
{
    if (!bDisableMessages)
    {
        switch (Event.EventType)
        {
        case AI_DEAD:
            EventJump('HostageDied');
            break;
        case AI_UNCONSCIOUS:
            EventJump('HostageDied');
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
        if (P.name == 'EMercenaryTechnician9')
        {
            Characters[1] = P.controller;
            // Joshua - Set technicians as dying so Sam crouches during this conversation
            EPawn(P).bDyingDude = true;
        }
        if (P.name == 'EMercenaryTechnician2')
        {
            Characters[2] = P.controller;
            // Joshua - Set technicians as dying so Sam crouches during this conversation
            EPawn(P).bDyingDude = true;
        }
        if (P.name == 'EMercenaryTechnician4')
        {
            Characters[3] = P.controller;
            // Joshua - Set technicians as dying so Sam crouches during this conversation
            EPawn(P).bDyingDude = true;
        }
    }

    if (!bInit)
    {
    bInit=TRUE;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
WallMineOff:
    Log("Check If Sam Has Disabled the wall mines");
    CheckFlags(V2_2_2_Kalinatek(Level.VarObject).WallMinesOff,TRUE,'HostageRescue');
    Goal_Set(3,GOAL_Wait,9,,'PLAYER',,,,FALSE,,MOVE_CrouchJog,,MOVE_CrouchJog);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0012L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_27_05', 3, 0, TR_CONVERSATION, 0, false);
    Close();
    ResetGoals(3);
    End();
HostageRescue:
    Log("If Wall Mines = OFF then start speech");
    CheckFlags(V2_2_2_Kalinatek(Level.VarObject).ConversationA,TRUE,'BarkA');
    SetFlags(V2_2_2_Kalinatek(Level.VarObject).ConversationA,TRUE);
    Goal_Default(3,GOAL_Wait,9,,'PLAYER','PLAYER',,,FALSE,,MOVE_CrouchJog,,MOVE_CrouchJog);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0001L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_26_01', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0003L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_26_02', 3, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0004L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_26_03', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0005L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_26_04', 3, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0006L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_26_05', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0007L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_26_06', 3, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0008L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_26_07', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0009L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_26_08', 3, 0, TR_CONVERSATION, 0, false);
    Close();
    AddNote("", "P_2_2_2_Ktech_HostageRescue", "Note_0002L", "Localization\\P_2_2_2_Kalinatek");
    ResetGoals(3);
    GoalCompleted('Hostages');
    SetFlags(V2_2_2_Kalinatek(Level.VarObject).HostagesDone,TRUE);
    SendPatternEvent('LambertComms','DefuseBomb');
    End();
BarkA:
    Log("BarkA");
    CheckFlags(V2_2_2_Kalinatek(Level.VarObject).BarkA,TRUE,'BarkB');
    SetFlags(V2_2_2_Kalinatek(Level.VarObject).BarkA,TRUE);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0013L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_27_01', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0014L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_27_02', 0, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
BarkB:
    Log("BarkB");
    CheckFlags(V2_2_2_Kalinatek(Level.VarObject).BarkB,TRUE,'BarkC');
    SetFlags(V2_2_2_Kalinatek(Level.VarObject).BarkB,TRUE);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0015L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_27_03', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0016L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_27_04', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
BarkC:
    Log("BarkC");
    Speech(ConversationSubtitle("P_2_2_2_Ktech_HostageRescue", "Speech_0017L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_27_06', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
HostageDied:
    Log("If an Hostage dies");
    DisableMessages(TRUE, TRUE);
    SendPatternEvent('HostageWallMinesGroup','AbortComms');
    Sleep(2);
    SendPatternEvent('LambertComms','HostageKilled');
AlreadyStarted:
    End();
ArchivesRoomOpen:
    Log("If the Archives room opens before Sam has rescued the hostages");
    CheckFlags(V2_2_2_Kalinatek(Level.VarObject).WallMinesOff,TRUE,'AlreadyStarted');
    CinCamera(0, 'TechRunsInWallMinesCamera01', 'TechRunsInWallMinesTarget01',);
    Goal_Set(3,GOAL_MoveTo,9,,,,'RoomCleanUpNode11',,FALSE,,MOVE_JogAlert,,MOVE_JogAlert);
    End();

}

