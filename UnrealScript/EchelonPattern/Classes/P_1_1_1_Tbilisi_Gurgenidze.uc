//=============================================================================
// P_1_1_1_Tbilisi_Gurgenidze
//=============================================================================
class P_1_1_1_Tbilisi_Gurgenidze extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S1_1_0Voice.uax

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
        if (P.name == 'EBaxter0')
            Characters[1] = P.controller;
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
    Log("This is Gurgenidze's conversation pattern.");
    GoalCompleted('CONTACT');
    SetFlags(V1_1_0Tbilisi(Level.VarObject).GoalContact,TRUE);
    SetFlags(V1_1_0Tbilisi(Level.VarObject).GurgCanDie,TRUE);
    Speech(ConversationSubtitle("P_1_1_1_Tbilisi_Gurgenidze", "Speech_0001L", "Localization\\P_1_1_0Tbilisi"), Sound'S1_1_0Voice.Play_11_09_01', 0, 0, TR_CONVERSATION, 0, false);
    Goal_Default(1,GOAL_Wait,1,,'PLAYER',,'ContactEnd','TalkDnAlNt0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_1_Tbilisi_Gurgenidze", "Speech_0002L", "Localization\\P_1_1_0Tbilisi"), Sound'S1_1_0Voice.Play_11_09_02', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_1_Tbilisi_Gurgenidze", "Speech_0003L", "Localization\\P_1_1_0Tbilisi"), Sound'S1_1_0Voice.Play_11_09_03', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_1_Tbilisi_Gurgenidze", "Speech_0004L", "Localization\\P_1_1_0Tbilisi"), Sound'S1_1_0Voice.Play_11_09_04', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_1_Tbilisi_Gurgenidze", "Speech_0005L", "Localization\\P_1_1_0Tbilisi"), Sound'S1_1_0Voice.Play_11_09_05', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_1_Tbilisi_Gurgenidze", "Speech_0006L", "Localization\\P_1_1_0Tbilisi"), Sound'S1_1_0Voice.Play_11_09_06', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_1_Tbilisi_Gurgenidze", "Speech_0007L", "Localization\\P_1_1_0Tbilisi"), Sound'S1_1_0Voice.Play_11_09_07', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_1_Tbilisi_Gurgenidze", "Speech_0008L", "Localization\\P_1_1_0Tbilisi"), Sound'S1_1_0Voice.Play_11_09_08', 1, 0, TR_CONVERSATION, 0, false);
    AddGoal('BLACKBOX', "", 7, "", "P_1_1_1_Tbilisi_Gurgenidze", "Goal_0012L", "Localization\\P_1_1_0Tbilisi", "P_1_1_1_Tbilisi_Gurgenidze", "Goal_0013L", "Localization\\P_1_1_0Tbilisi");
    AddNote("", "P_1_1_1_Tbilisi_Gurgenidze", "Note_0009L", "Localization\\P_1_1_0Tbilisi");
    Speech(ConversationSubtitle("P_1_1_1_Tbilisi_Gurgenidze", "Speech_0010L", "Localization\\P_1_1_0Tbilisi"), Sound'S1_1_0Voice.Play_11_09_09', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_1_Tbilisi_Gurgenidze", "Speech_0011L", "Localization\\P_1_1_0Tbilisi"), Sound'S1_1_0Voice.Play_11_09_10', 1, 0, TR_CONVERSATION, 0, false);
    SetFlags(V1_1_0Tbilisi(Level.VarObject).GurgCanDie,TRUE);
    KillNPC(1, FALSE, FALSE);
    Close();
    EndConversation();
    End();
DoNothing:
    Log("Doing nothing");
    End();

}

