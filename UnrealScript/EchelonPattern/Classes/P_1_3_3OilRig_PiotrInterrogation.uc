//=============================================================================
// P_1_3_3OilRig_PiotrInterrogation
//=============================================================================
class P_1_3_3OilRig_PiotrInterrogation extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S1_3_3Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////

var int FirstSpoken;
var int SpokenSecond;
var int ThirdSpokenMonkey;


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
        {
            Characters[1] = P.controller;
            EAIController(Characters[1]).bAllowKnockout = true;
        }
    }

    if (!bInit)
    {
    bInit=TRUE;
    FirstSpoken=0;
    SpokenSecond=0;
    ThirdSpokenMonkey=0;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
Piotr:
    Log("Piotr's interrogation dialog.");
    CheckFlags(FirstSpoken,TRUE,'Two');
    SetFlags(FirstSpoken,TRUE);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0001L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_01', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0002L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_02', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0003L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_03', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0004L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_04', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0005L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_05', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0006L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_06', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0007L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_07', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0008L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_08', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0009L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_09', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0010L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_10', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
Two:
    Log("Two times.");
    CheckFlags(SpokenSecond,TRUE,'Three');
    SetFlags(SpokenSecond,TRUE);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0011L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_11', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0012L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_12', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0013L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_13', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0014L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_14', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
Three:
    Log("Three times.");
    CheckFlags(ThirdSpokenMonkey,TRUE,'Four');
    SetFlags(ThirdSpokenMonkey,TRUE);
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0015L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_15', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
Four:
    Log("Four times.");
    Speech(ConversationSubtitle("P_1_3_3OilRig_PiotrInterrogation", "Speech_0016L", "Localization\\P_1_3_3CaspianOilRefinery"), Sound'S1_3_3Voice.Play_13_51_16', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    EndConversation();
    End();

}

