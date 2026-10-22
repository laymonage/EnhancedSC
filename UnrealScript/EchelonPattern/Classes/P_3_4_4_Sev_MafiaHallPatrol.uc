//=============================================================================
// P_3_4_4_Sev_MafiaHallPatrol
//=============================================================================
class P_3_4_4_Sev_MafiaHallPatrol extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S3_4_3Voice.uax

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
        if (P.name == 'EMafiaMuscle7')
            Characters[1] = P.controller;
        if (P.name == 'EMafiaMuscle1')
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
StartPatrol:
    Log("Sofron is starting his patrol now.");
    Goal_Default(1,GOAL_Patrol,0,,,'PLAYER','Sofron_0',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    End();
QuickBanter:
    Log("Sofron speaks to Billy Bob before going downstairs");
    Goal_Set(1,GOAL_Stop,9,,'Looky','Looky','Sofron_300',,FALSE,4,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_3_4_4_Sev_MafiaHallPatrol", "Speech_0001L", "Localization\\P_3_4_4Severonickel"), Sound'S3_4_3Voice.Play_34_55_01', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_4_Sev_MafiaHallPatrol", "Speech_0002L", "Localization\\P_3_4_4Severonickel"), Sound'S3_4_3Voice.Play_34_55_02', 2, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_3_4_4_Sev_MafiaHallPatrol", "Speech_0003L", "Localization\\P_3_4_4Severonickel"), Sound'S3_4_3Voice.Play_34_55_03', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Close();
    End();
CheckTime:
    Log("Sending Animation Event");
    Goal_Set(1,GOAL_Stop,9,,,,'Sofron_100',,FALSE,3,MOVE_WalkNormal,,MOVE_WalkNormal);
    Goal_Set(1,GOAL_Action,8,,'Sofron_100',,,'PrsoStNmAA0',FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    End();

}

defaultproperties
{
}
