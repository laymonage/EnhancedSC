//=============================================================================
// P_2_2_2_Ktech_GuardPee
//=============================================================================
class P_2_2_2_Ktech_GuardPee extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S2_2_2Voice.uax

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
        if (P.name == 'EMafiaMuscle16')
            Characters[1] = P.controller;
        if (P.name == 'EMafiaMuscle15')
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
GuardGoingPee:
    Log("Guard going to pee");
    Goal_Default(1,GOAL_Guard,9,,'GuardPeeWaitFocus01',,'GuardPeeNode02',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Default(2,GOAL_Guard,9,,'GuardPeeWaitFocus01',,'GuardPeeNode01',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Set(2,GOAL_MoveTo,9,,,,'GuardPeeNode01',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Set(2,GOAL_InteractWith,8,,,,'KitchenLightSwitch',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_GuardPee", "Speech_0001L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_46_01', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_GuardPee", "Speech_0002L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_46_02', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_GuardPee", "Speech_0001L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_46_03', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_GuardPee", "Speech_0002L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_46_04', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_GuardPee", "Speech_0003L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_46_05', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_GuardPee", "Speech_0004L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_46_06', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_GuardPee", "Speech_0005L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_46_07', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    Sleep(2);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_GuardPee", "Speech_0006L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_46_08', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_GuardPee", "Speech_0007L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_46_09', 2, 0, TR_CONVERSATION, 0, false);
    Close();
    ResetGroupGoals();
    Goal_Default(2,GOAL_Guard,9,,'GuardPeeFocus01',,'GuardPeeNode04',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Set(1,GOAL_MoveTo,9,,,,'GuardPeeNode03',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    WaitForGoal(1,GOAL_MoveTo,);
    Goal_Set(1,GOAL_Action,9,,'GuardPeeingFocus01',,'GuardPeeingFocus01','PissStNmBg0',FALSE,,,,);
    WaitForGoal(1,GOAL_Action,);
    Goal_Set(1,GOAL_Wait,9,,'GuardPeeingFocus01',,'GuardPeeingFocus01','PissStNmNt0',FALSE,120,,,);
    Sleep(120);
    Goal_Set(1,GOAL_Action,9,,'GuardPeeingFocus01',,'GuardPeeingFocus01','PissStNmEd0',FALSE,,,,);
    ResetGroupGoals();
    Goal_Set(1,GOAL_MoveTo,9,,,,'GuardPeeNode01',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    WaitForGoal(1,GOAL_MoveTo,);
    Goal_Set(2,GOAL_MoveTo,9,,,,'GuardPeeNode04',,TRUE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Set(1,GOAL_MoveTo,8,,,,'GuardPeeNode05',,TRUE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    WaitForGoal(1,GOAL_MoveTo,);
    Goal_Default(1,GOAL_Guard,7,,'GuardPeeFocus02',,'GuardPeeNode05',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Default(2,GOAL_Guard,9,,'GuardPeeFocus02',,'GuardPeeNode04',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    CheckIfIsDead(2,'NoSpeech');
    Speech(ConversationSubtitle("P_2_2_2_Ktech_GuardPee", "Speech_0008L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_46_10', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_2_Ktech_GuardPee", "Speech_0009L", "Localization\\P_2_2_2_Kalinatek"), Sound'S2_2_2Voice.Play_22_46_11', 1, 0, TR_CONVERSATION, 0, false);
    Close();
NoSpeech:
    End();

}

