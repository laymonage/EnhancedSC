//=============================================================================
// P_3_4_1Sev_5
//=============================================================================
class P_3_4_1Sev_5 extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S3_4_2Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////

var int TalkDone;


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
        if (P.name == 'EMercenaryTechnician1')
            Characters[1] = P.controller;
    }

    if (!bInit)
    {
    bInit=TRUE;
    TalkDone=0;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
    Log("This is the interrogation pattern for the merc tech named Vasilii");
Grabbed:
    Log("Vasilii has been grabbed.");
    CheckFlags(TalkDone,TRUE,'DoNothing');
    SetFlags(TalkDone,TRUE);
    GoalCompleted('INTTECH');
    SetFlags(V3_4_2Severonickel(Level.VarObject).OkToKOVasilii,TRUE);
    Speech(ConversationSubtitle("P_3_4_1Sev_5", "Speech_0001L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_16_01', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_1Sev_5", "Speech_0002L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_16_02', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_1Sev_5", "Speech_0003L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_16_03', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_1Sev_5", "Speech_0004L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_16_04', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_1Sev_5", "Speech_0005L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_16_05', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_1Sev_5", "Speech_0006L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_16_06', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_1Sev_5", "Speech_0008L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_16_07', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_1Sev_5", "Speech_0009L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_16_08', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_1Sev_5", "Speech_0016L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_16_17', 0, 0, TR_CONVERSATION, 0, false);
    Close();
DoNothing:
    End();

}

defaultproperties
{
}
