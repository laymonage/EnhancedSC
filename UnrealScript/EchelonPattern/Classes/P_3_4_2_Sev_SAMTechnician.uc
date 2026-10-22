//=============================================================================
// P_3_4_2_Sev_SAMTechnician
//=============================================================================
class P_3_4_2_Sev_SAMTechnician extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S3_4_2Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////

var int TheyveTalked;
var int TheyveTalkedTwice;


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
        if (P.name == 'EMercenaryTechnician2')
            Characters[1] = P.controller;
    }

    if (!bInit)
    {
    bInit=TRUE;
    TheyveTalked=0;
    TheyveTalkedTwice=0;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
TalkTech:
    Log("This is the interrogation pattern for the tech in the foundry.");
    CheckIfGrabbed(1,'talk');
    End();
talk:
    CheckFlags(TheyveTalked,TRUE,'Already');
    SetFlags(TheyveTalked,TRUE);
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0008L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_01', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0009L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_02', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0010L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_03', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0011L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_04', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0012L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_05', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0013L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_06', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0001L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_07', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0002L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_08', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0003L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_09', 1, 0, TR_CONVERSATION, 0, false);
    //AddNote("", "P_3_4_2_Sev_SAMTechnician", "Note_0014L", "Localization\\P_3_4_2Severonickel");
    // Joshua - Fixing incorrect note assigned
    AddNote("", "P_3_4_2_Sev_SAMTechnician", "Note_0005L", "Localization\\P_3_4_2Severonickel");
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0004L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_10', 0, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
Already:
    Log("Theyve already talked.");
    CheckFlags(TheyveTalkedTwice,TRUE,'SecondPoss');
    SetFlags(TheyveTalkedTwice,TRUE);
FirstPoss:
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0006L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_11', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
SecondPoss:
    Speech(ConversationSubtitle("P_3_4_2_Sev_SAMTechnician", "Speech_0007L", "Localization\\P_3_4_2Severonickel"), Sound'S3_4_2Voice.Play_34_33_12', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    EndConversation();
    End();

}

defaultproperties
{
}
