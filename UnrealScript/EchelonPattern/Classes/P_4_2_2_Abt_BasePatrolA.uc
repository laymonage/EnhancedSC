//=============================================================================
// P_4_2_2_Abt_BasePatrolA
//=============================================================================
class P_4_2_2_Abt_BasePatrolA extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S4_2_2Voice.uax

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
        if (P.name == 'EGeorgianSoldier23')
            Characters[1] = P.controller;
        if (P.name == 'EGeorgianSoldier28')
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
BasePatrolA:
    Log("Basement Patrol A");
    ResetGroupGoals();
    Goal_Set(2,GOAL_MoveTo,9,,,,'PathNode237',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Default(2,GOAL_Guard,8,,,,'PathNode237',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Sleep(0.5);
    Goal_Set(1,GOAL_MoveTo,9,,,,'PathNode236',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Default(1,GOAL_Guard,8,,'EFocusPoint77',,'PathNode236',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Sleep(2);
    Speech(ConversationSubtitle("P_4_2_2_Abt_BasePatrolA", "Speech_0012L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_41_01', 2, 0, TR_CONVERSATION, 0, false);
    WaitForGoal(2,GOAL_MoveTo,);
    ResetGroupGoals();
    Goal_Set(1,GOAL_MoveTo,9,,,,'PathNode234',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Default(1,GOAL_Guard,8,,'EFocusPoint70',,'PathNode234',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Set(2,GOAL_MoveTo,9,,,,'PathNode235',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Default(2,GOAL_Guard,8,,'EFocusPoint71',,'PathNode235',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Sleep(1);
    Speech(ConversationSubtitle("P_4_2_2_Abt_BasePatrolA", "Speech_0012L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_41_02', 1, 0, TR_CONVERSATION, 0, false);
    WaitForGoal(2,GOAL_MoveTo,);
    Speech(ConversationSubtitle("P_4_2_2_Abt_BasePatrolA", "Speech_0005L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_41_03', 2, 0, TR_CONVERSATION, 0, false);
    ResetGoals(1);
    Goal_Set(1,GOAL_Action,9,,,,,'TalkStNmCC0',FALSE,,,,);
    Speech(ConversationSubtitle("P_4_2_2_Abt_BasePatrolA", "Speech_0006L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_41_04', 1, 0, TR_CONVERSATION, 0, false);
    ResetGoals(2);
    Goal_Set(2,GOAL_Action,8,,,,,'TalkStNmBB0',FALSE,,,,);
    Speech(ConversationSubtitle("P_4_2_2_Abt_BasePatrolA", "Speech_0007L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_41_05', 2, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Action,8,,,,,'TalkStNmAA0',FALSE,,,,);
    Speech(ConversationSubtitle("P_4_2_2_Abt_BasePatrolA", "Speech_0008L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_41_06', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,7,,,,,'TalkStNmCC0',FALSE,,,,);
    Speech(ConversationSubtitle("P_4_2_2_Abt_BasePatrolA", "Speech_0009L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_41_07', 2, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Action,7,,,,,'TalkStNmBB0',FALSE,,,,);
    Goal_Set(1,GOAL_Action,6,,,,,'TalkStNmCC0',FALSE,,,,);
    Speech(ConversationSubtitle("P_4_2_2_Abt_BasePatrolA", "Speech_0010L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_41_08', 1, 0, TR_CONVERSATION, 0, false);
    ResetGoals(1);
    Goal_Default(1,GOAL_Patrol,9,,,,'EGeorgianSoldier23_100',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Sleep(1);
    ResetGoals(2);
    Goal_Default(2,GOAL_Patrol,9,,,,'EGeorgianSoldier28_100',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    End();

}

