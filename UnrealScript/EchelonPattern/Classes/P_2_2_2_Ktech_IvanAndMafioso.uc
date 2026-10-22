//=============================================================================
// P_2_2_2_Ktech_IvanAndMafioso
//=============================================================================
class P_2_2_2_Ktech_IvanAndMafioso extends EPattern;

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
            EventJump('MafiosoDead');
            break;
        case AI_HEAR_SOMETHING:
            EventJump('MafiosoMetSam');
            break;
        case AI_LOST_PLAYER:
            EventJump('MafiosoMetSam');
            break;
        case AI_SEE_CHANGED_ACTOR:
            EventJump('MafiosoMetSam');
            break;
        case AI_SEE_PLAYER_ALERT:
            EventJump('MafiosoMetSam');
            break;
        case AI_SEE_PLAYER_INVESTIGATE:
            EventJump('MafiosoMetSam');
            break;
        case AI_SEE_PLAYER_SURPRISED:
            EventJump('MafiosoMetSam');
            break;
        case AI_TAKE_DAMAGE:
            EventJump('MafiosoMetSam');
            break;
        case AI_UNCONSCIOUS:
            EventJump('MafiosoDead');
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
        if (P.name == 'EMafiaMuscle17')
        {
            Characters[1] = P.controller;
            EAIController(Characters[1]).bAllowKnockout = true;
            EPawn(P).bNoPickupInteraction = false; // Joshua - The player should be able to pick up their body
        }
        if (P.name == 'EIvan0')
        {
            Characters[2] = P.controller;
            EPawn(P).bNoPickupInteraction = false; // Joshua - The player should be able to pick up their body
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
IvanAndMafioso:
    Log("When a mafioso finds Ivan");
    ChangeState(1,'s_alert');
    Goal_Set(1,GOAL_Guard,9,,'IvanFocus01',,'IvanAndMafiosoNode02',,FALSE,,MOVE_JogAlert,,MOVE_JogAlert);
    Goal_Set(2,GOAL_Wait,9,,'IvanFocus01',,,'IvanCrAlNt0',FALSE,,MOVE_CrouchJog,,MOVE_CrouchJog);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0001L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_01', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0002L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_02', 2, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,9,,,,,'IvanCrAlPr0',FALSE,,MOVE_CrouchJog,,MOVE_CrouchJog);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0003L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_03', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,9,,,,,'IvanCrAlBB0',FALSE,,MOVE_CrouchJog,,MOVE_CrouchJog);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0004L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_04', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0005L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_05', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,9,,,,,'IvanCrAlAA0',FALSE,,MOVE_CrouchJog,,MOVE_CrouchJog);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0006L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_06', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0007L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_07', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,9,,,,,'IvanCrAlAA0',FALSE,,MOVE_CrouchJog,,MOVE_CrouchJog);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0008L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_08', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0009L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_09', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,9,,,,,'IvanCrAlPr0',FALSE,,MOVE_JogAlert,,MOVE_JogAlert);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0010L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_10', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0011L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_11', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,9,,,,,'IvanCrAlAA0',FALSE,,MOVE_CrouchJog,,MOVE_CrouchJog);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0012L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_12', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0013L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_13', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,9,,,,,'IvanCrAlCC0',FALSE,,MOVE_CrouchJog,,MOVE_CrouchJog);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0014L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_14', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_IvanAndMafioso", "Speech_0015L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_50_15', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    Goal_Set(1,GOAL_Attack,9,,'Ivan','Ivan','IvanAndMafiosoNode02',,FALSE,,MOVE_JogAlert,,MOVE_JogAlert);
    WaitForGoal(1,GOAL_Attack,);
    End();
MafiosoDead:
    Log("Check If AI is dead");
    CheckIfIsDead(1,'MafiosoReallyDead');
    CheckIfIsUnconscious(1,'MafiosoReallyDead');
    End();
MafiosoReallyDead:
    Log("MafiosoReallyDead");
    ResetGoals(2);
    Goal_Set(2,GOAL_Action,9,,'PLAYER','PLAYER',,'WaitCrAlBg0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    WaitForGoal(2,GOAL_Action,);
    Goal_Default(2,GOAL_Wait,9,,'PLAYER','PLAYER',,'IvanStAlNtA',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    End();
MafiosoMetSam:
    Log("Post attack and investigate for the mafioso - Kills Ivan");
    Goal_Default(1,GOAL_Attack,9,,'Ivan','Ivan','IvanAndMafiosoNode02',,FALSE,,MOVE_JogAlert,,MOVE_JogAlert);
    End();

}

