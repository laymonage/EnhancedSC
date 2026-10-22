//=============================================================================
// P_4_3_1_HallTurretAttackA
//=============================================================================
class P_4_3_1_HallTurretAttackA extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S4_3_1Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////



// EVENTS //////////////////////////////////////////////////////////////////////

function EventCallBack(EAIEvent Event,Actor TriggerActor)
{
    if (!bDisableMessages)
    {
        switch (Event.EventType)
        {
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
        if (P.name == 'EChineseSoldier15')
            Characters[1] = P.controller;
        if (P.name == 'EChineseSoldier16')
            Characters[2] = P.controller;
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
HallTurretAttackA:
    Log("HallTurretAttackA");
    Teleport(1, 'HallSquadASpawn2');
    Teleport(2, 'HallSquadASpawn1');
    ResetGroupGoals();
    Goal_Default(1,GOAL_Guard,9,,'SquadAFocus',,'SquadAPatrolnode02',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Default(2,GOAL_Guard,9,,'SquadAFocus',,'SquadAPatrolnode01',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Set(1,GOAL_Stop,9,,,,'HallSquadASpawn2',,FALSE,5,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Set(2,GOAL_Stop,9,,,,'HallSquadASpawn1',,FALSE,5,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Speech(ConversationSubtitle("P_4_3_1_HallTurretAttackA", "Speech_0001L", "Localization\\P_4_3_1ChineseEmbassy"), Sound'S4_3_1Voice.Play_43_27_01', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_3_1_HallTurretAttackA", "Speech_0002L", "Localization\\P_4_3_1ChineseEmbassy"), Sound'S4_3_1Voice.Play_43_27_02', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_3_1_HallTurretAttackA", "Speech_0003L", "Localization\\P_4_3_1ChineseEmbassy"), Sound'S4_3_1Voice.Play_43_27_03', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_3_1_HallTurretAttackA", "Speech_0004L", "Localization\\P_4_3_1ChineseEmbassy"), Sound'S4_3_1Voice.Play_43_27_04', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_3_1_HallTurretAttackA", "Speech_0005L", "Localization\\P_4_3_1ChineseEmbassy"), Sound'S4_3_1Voice.Play_43_27_05', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_3_1_HallTurretAttackA", "Speech_0006L", "Localization\\P_4_3_1ChineseEmbassy"), Sound'S4_3_1Voice.Play_43_27_06', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_3_1_HallTurretAttackA", "Speech_0007L", "Localization\\P_4_3_1ChineseEmbassy"), Sound'S4_3_1Voice.Play_43_27_07', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_3_1_HallTurretAttackA", "Speech_0008L", "Localization\\P_4_3_1ChineseEmbassy"), Sound'S4_3_1Voice.Play_43_27_08', 2, 0, TR_CONVERSATION, 0, false);
    Close();
    End();

}

