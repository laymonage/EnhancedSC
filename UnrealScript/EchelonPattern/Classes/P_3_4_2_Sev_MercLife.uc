//=============================================================================
// P_3_4_2_Sev_MercLife
//=============================================================================
class P_3_4_2_Sev_MercLife extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S3_4_2Voice.uax

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
        if (P.name == 'spetsnaz1')
            Characters[1] = P.controller;
        if (P.name == 'spetsnaz24')
            Characters[2] = P.controller;
        if (P.name == 'EMafiaMuscle2')
            Characters[3] = P.controller;
        if (P.name == 'EMercenaryTechnician0')
            Characters[4] = P.controller;
        if (P.name == 'EMafiaMuscle3')
            Characters[5] = P.controller;
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
    Log("The off duty troops in the furnace room complain about their lot.");
MercLifeStart:
    Log("PART ONE A mafioso complains to two spetz about the toilet paper.");
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0001L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_36_01', 2, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0002L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_36_02', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0003L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_36_03', 2, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0004L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_36_04', 3, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0005L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_36_05', 2, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0006L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_36_06', 3, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0007L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_36_07', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0008L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_36_08', 3, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0009L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_36_09', 2, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0010L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_36_11', 3, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Talk(Sound'S3_4_2Voice.Play_34_36_10', 3, , TRUE, 0);
    Sleep(0.1);
    Close();
    Goal_Default(1,GOAL_Guard,0,,'PotapGuard',,'VikConv2Guard',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(1,GOAL_MoveTo,9,,,,'Viktor_100',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(1,GOAL_MoveTo,8,,'PotapConv',,'VikConv2Guard',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(1,GOAL_Action,7,,'PotapConv',,,'PrsoStNmCC0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Default(2,GOAL_Patrol,0,,,,'Zakhar_0',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Default(3,GOAL_Guard,0,,'KhrolGuard',,'TikTalkTwo',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(3,GOAL_MoveTo,9,,,,'TikAWaypoint',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(3,GOAL_MoveTo,8,,,,'Viktor_200',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(3,GOAL_MoveTo,7,,,,'TikTalkTwo',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    WaitForGoal(1,GOAL_Action,);
    Goal_Default(4,GOAL_Guard,0,,'VikConv2Guard',,'PotapConv',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Log("PART TWO A tech and a spetz talk about Grinko");
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0021L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_40_01', 4, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0022L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_40_02', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0023L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_40_03', 4, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0024L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_40_04', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0025L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_40_05', 4, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0026L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_40_06', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0027L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_40_07', 4, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0028L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_40_08', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0029L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_40_09', 4, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Close();
    Goal_Default(1,GOAL_Patrol,0,,,,'Viktor_0',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Default(4,GOAL_Wait,0,,'PotapConsole',,'PotapWork','KbrdStNmNt0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(4,GOAL_MoveTo,9,,'PotapConsole',,'PotapWork',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Log("PART THREE Two mafiosos talk about the SAM launchers");
    Sleep(6);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0011L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_38_01', 3, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0012L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_38_02', 5, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0013L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_38_03', 3, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0014L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_38_04', 5, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0015L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_38_05', 3, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0016L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_38_06', 5, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0017L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_38_07', 3, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0018L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_38_08', 5, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0019L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_38_09', 3, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_2_Sev_MercLife", "Speech_0020L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_38_10', 5, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Close();
    Goal_Default(3,GOAL_Patrol,0,,,,'Tikhon_0',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Default(5,GOAL_Patrol,0,,,,'Khrol_0',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    End();
KerSnap:
    Log("Sam busted the pipe and got everyone all worked up.");
    SendUnrealEvent('BreakPipe');
    ChangeGroupState('s_alert');
    Goal_Default(1,GOAL_Patrol,0,,,,'Viktor_0',,FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    Goal_Set(1,GOAL_Search,9,,,,'Viktor_0',,FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    Goal_Default(2,GOAL_Patrol,0,,,,'Zakhar_0',,FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    Goal_Set(2,GOAL_Search,9,,,,'Zakhar_0',,FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    Goal_Default(3,GOAL_Patrol,0,,,,'Tikhon_0',,FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    Goal_Set(3,GOAL_Search,9,,,,'TikTalkTwo',,FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    Goal_Default(5,GOAL_Patrol,0,,,,'Khrol_0',,FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    Goal_Set(5,GOAL_Search,9,,,,'PathNode',,FALSE,,MOVE_WalkAlert,,MOVE_WalkAlert);
    End();

}

defaultproperties
{
}
