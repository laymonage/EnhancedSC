//=============================================================================
// P_2_2_3_Ktech_RoofAmbushA
//=============================================================================
class P_2_2_3_Ktech_RoofAmbushA extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S2_2_3Voice.uax

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
        if (P.name == 'EMafiaMuscle2')
            Characters[1] = P.controller;
        if (P.name == 'EMafiaMuscle0')
            Characters[2] = P.controller;
        if (P.name == 'EMafiaMuscle1')
            Characters[3] = P.controller;
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
KtechRoofGroup1:
    Log("Talk Over A Barrel");
    Goal_Set(1,GOAL_MoveTo,9,,,,'SEvent2Path01',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Default(1,GOAL_Guard,8,,,,'SEvent2Path01',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    WaitForGoal(1,GOAL_MoveTo,);
    Speech(ConversationSubtitle("P_2_2_3_Ktech_RoofAmbushA", "Speech_0001L", "Localization\\P_2_2_3_Kalinatek"), Sound'S2_2_3Voice.Play_22_56_01', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_3_Ktech_RoofAmbushA", "Speech_0002L", "Localization\\P_2_2_3_Kalinatek"), Sound'S2_2_3Voice.Play_22_56_02', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_3_Ktech_RoofAmbushA", "Speech_0003L", "Localization\\P_2_2_3_Kalinatek"), Sound'S2_2_3Voice.Play_22_56_03', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_3_Ktech_RoofAmbushA", "Speech_0004L", "Localization\\P_2_2_3_Kalinatek"), Sound'S2_2_3Voice.Play_22_56_04', 3, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_3_Ktech_RoofAmbushA", "Speech_0005L", "Localization\\P_2_2_3_Kalinatek"), Sound'S2_2_3Voice.Play_22_56_05', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_3_Ktech_RoofAmbushA", "Speech_0006L", "Localization\\P_2_2_3_Kalinatek"), Sound'S2_2_3Voice.Play_22_56_06', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_3_Ktech_RoofAmbushA", "Speech_0007L", "Localization\\P_2_2_3_Kalinatek"), Sound'S2_2_3Voice.Play_22_56_07', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_3_Ktech_RoofAmbushA", "Speech_0008L", "Localization\\P_2_2_3_Kalinatek"), Sound'S2_2_3Voice.Play_22_56_08', 3, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_3_Ktech_RoofAmbushA", "Speech_0009L", "Localization\\P_2_2_3_Kalinatek"), Sound'S2_2_3Voice.Play_22_56_09', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_3_Ktech_RoofAmbushA", "Speech_0010L", "Localization\\P_2_2_3_Kalinatek"), Sound'S2_2_3Voice.Play_22_56_10', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_3_Ktech_RoofAmbushA", "Speech_0011L", "Localization\\P_2_2_3_Kalinatek"), Sound'S2_2_3Voice.Play_22_56_11', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();

}

