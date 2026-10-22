//=============================================================================
// P_0_0_3_Training_T3_Interrog_Conv
//=============================================================================
class P_0_0_3_Training_T3_Interrog_Conv extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S0_0_Voice.uax
#exec OBJ LOAD FILE=..\Sounds\S0_0_3Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////

var int bFirstTimeConv;
var int bInterrogate;


// EVENTS //////////////////////////////////////////////////////////////////////

function EventCallBack(EAIEvent Event,Actor TriggerActor)
{
    if (!bDisableMessages)
    {
        switch (Event.EventType)
        {
        case AI_DEAD:
            EventJump('ManDown');
            break;
        case AI_RELEASED:
            EventJump('BreakConv');
            break;
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
        if (P.name == 'ECIARookie1')
        {
            Characters[1] = P.controller;
            EAIController(Characters[1]).bAllowKnockout = true;
        }
    }

    if (!bInit)
    {
    bInit=TRUE;
    bFirstTimeConv=1;
    bInterrogate=0;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
BeginConversation:
    Log("BeginConversation");
    CheckFlags(bInterrogate,TRUE,'AfterInterrogateConv');
    CheckIfGrabbed(1,'GrabbedConv');
    End();
GrabbedConv:
    Log("GrabbedConv");
    Speech(ConversationSubtitle("P_0_0_3_Training_T3_Interrog_Conv", "Speech_0007L", "Localization\\P_0_0_3_Training"), Sound'S0_0_Voice.Play_00_25_01', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_0_0_3_Training_T3_Interrog_Conv", "Speech_0016L", "Localization\\P_0_0_3_Training"), Sound'S0_0_3Voice.Play_00_25_02', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_0_0_3_Training_T3_Interrog_Conv", "Speech_0009L", "Localization\\P_0_0_3_Training"), Sound'S0_0_3Voice.Play_00_25_03', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_0_0_3_Training_T3_Interrog_Conv", "Speech_0010L", "Localization\\P_0_0_3_Training"), Sound'S0_0_3Voice.Play_00_25_04', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_0_0_3_Training_T3_Interrog_Conv", "Speech_0011L", "Localization\\P_0_0_3_Training"), Sound'S0_0_3Voice.Play_00_25_05', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_0_0_3_Training_T3_Interrog_Conv", "Speech_0012L", "Localization\\P_0_0_3_Training"), Sound'S0_0_3Voice.Play_00_25_06', 1, 0, TR_CONVERSATION, 0, false);
    SendPatternEvent('GroupKeypad03','GotCode');
    AddNote("", "P_0_0_3_Training_T3_Interrog_Conv", "Note_0017L", "Localization\\P_0_0_3_Training");
    SetFlags(bInterrogate,TRUE);
    Speech(ConversationSubtitle("P_0_0_3_Training_T3_Interrog_Conv", "Speech_0014L", "Localization\\P_0_0_3_Training"), Sound'S0_0_3Voice.Play_00_25_07', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_0_0_3_Training_T3_Interrog_Conv", "Speech_0018L", "Localization\\P_0_0_3_Training"), Sound'S0_0_3Voice.Play_00_25_08', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
AfterInterrogateConv:
    Log("AfterInterrogateConv");
    Speech(ConversationSubtitle("P_0_0_3_Training_T3_Interrog_Conv", "Speech_0015L", "Localization\\P_0_0_3_Training"), Sound'S0_0_3Voice.Play_00_25_06', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
BreakConv:
    Log("Break Conv");
    Close();
    End();
ManDown:
    Log("Sam killed the NPC. Telling Lambert.");
    CheckIfIsDead(1,'Murder');
    End();
Murder:
    SendPatternEvent('T3CommsGroup','BloodyMurder');
DoNothing:
    Log("Doing nothing");
    End();

}

