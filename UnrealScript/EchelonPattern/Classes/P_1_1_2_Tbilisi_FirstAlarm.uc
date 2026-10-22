//=============================================================================
// P_1_1_2_Tbilisi_FirstAlarm
//=============================================================================
class P_1_1_2_Tbilisi_FirstAlarm extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S1_1_1Voice.uax

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
        if (P.name == 'EGeorgianCop4')
            Characters[1] = P.controller;
        if (P.name == 'EGeorgianCop3')
            Characters[2] = P.controller;
        if (P.name == 'ERussianCivilian1')
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
    Log("This pattern deals with the cops harrassing the drunk and their potential response to the first zone alarm");
HARRASS:
    Log("Cops dealing with the drunk");
    Goal_Set(2,GOAL_MoveTo,9,,,'PLAYER','CopAStart',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(1,GOAL_MoveTo,9,,,'PLAYER','CopBStart',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    WaitForGoal(2,GOAL_MoveTo,);
    ResetGroupGoals();
    Goal_Default(2,GOAL_Guard,0,,'Drunk','PLAYER','CopAStart',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Default(1,GOAL_Guard,0,,'Drunk','PLAYER','CopBStart',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(1,GOAL_Action,9,,'Drunk',,'Drunk','LookStNmDn0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0001L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_01', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,9,,'Drunk',,'Drunk','LstnStNmBB0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0002L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_02', 2, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Action,8,,'Drunk',,'Drunk','PrsoStNmCC0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0003L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_03', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,8,,'Drunk',,'Drunk','TalkStNmBB0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0004L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_04', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0005L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_05', 3, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Action,7,,'Drunk',,'Drunk','ReacStNmFd0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0006L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_06', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,7,,'Drunk',,'Drunk','LstnStNmCC0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0007L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_07', 2, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0008L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_08', 3, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Action,6,,'Drunk',,'Drunk','TalkStNmCC0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0009L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_09', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,6,,'Drunk',,'Drunk','TalkStNmBB0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0010L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_10', 2, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Action,5,,'Drunk',,'Drunk','TalkStNmBB0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0011L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_11', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0012L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_12', 3, 0, TR_CONVERSATION, 0, false);
    SetFlags(V1_1_1Tbilisi(Level.VarObject).OKtoKODrunk,TRUE);
    SendPatternEvent('DrunkTicker','Knocked');
    End();
CopsReportDrunk:
    Log("Coming back to cops.");
    Goal_Set(2,GOAL_Action,9,,'Drunk',,'Drunk','LookStNmDn0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0014L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_13', 2, 0, TR_CONVERSATION, 0, false);
    SendPatternEvent('BGAnton','PatrolC');
    Goal_Set(1,GOAL_Action,9,,'Drunk',,'Drunk','PrsoStNmCC0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0015L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_14', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0016L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_15', 2, 0, TR_CONVERSATION, 0, false);
    Goal_Set(2,GOAL_Action,8,,'Drunk',,'Drunk','PokeStAlDn0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(1,GOAL_Action,8,,'Drunk',,'Drunk','RdioStNmNt0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0019L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_16', 1, 0, TR_CONVERSATION, 0, false);
    Speech(Localize("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0020L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_17', 1, 0, TR_HEADQUARTER, 0, false);
    Close();
    Goal_Set(1,GOAL_Action,7,,'Drunk',,'Drunk','RdioStNmNt0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0021L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_18', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0026L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_19', 2, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Action,6,,'Drunk',,'Drunk','ReacStNmAA0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0027L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_20', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0028L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_27_21', 2, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
AlarmResponse:
    Log("Cops responding to the first zone alarm");
    Sleep(5);
    Speech(Localize("P_1_1_2_Tbilisi_FirstAlarm", "Speech_0022L", "Localization\\P_1_1_1Tbilisi"), Sound'S1_1_1Voice.Play_11_06_01', 1, 0, TR_NPCS, 0, false);
    Close();
    Goal_Set(1,GOAL_Action,8,,'PLAYER','PLAYER','A1RadioPoint','RdioStNmNt0',FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    WaitForGoal(1,GOAL_Action,);
    Goal_Set(1,GOAL_MoveTo,8,,'PLAYER','PLAYER','Ignat_600',,FALSE,,MOVE_JogAlert,,MOVE_JogAlert);
    Goal_Set(2,GOAL_MoveTo,8,,'PLAYER','PLAYER','Ignat_300',,FALSE,,MOVE_JogAlert,,MOVE_JogAlert);
    WaitForGoal(1,GOAL_MoveTo,);
    Goal_Set(1,GOAL_Search,9,,'PLAYER','PLAYER','Ignat_600',,FALSE,40,MOVE_WalkAlert,,MOVE_WalkAlert);
    Goal_Set(2,GOAL_Search,9,,'PLAYER','PLAYER','Ignat_300',,FALSE,40,MOVE_WalkAlert,,MOVE_WalkAlert);
    WaitForGoal(1,GOAL_Search,);
    ResetGroupGoals();
    Goal_Set(1,GOAL_Action,8,,'PLAYER','PLAYER','PostSearcha','RdioStNmNt0',FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    Goal_Default(1,GOAL_Guard,0,,'PLAYER','PLAYER','PostSearcha',,FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    Goal_Default(2,GOAL_Guard,0,,'PLAYER','PLAYER','PostSearchb',,FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    End();
DoNothing:
    Log("Doing nothing");
    End();

}

