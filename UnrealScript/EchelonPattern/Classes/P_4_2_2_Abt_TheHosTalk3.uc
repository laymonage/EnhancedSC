//=============================================================================
// P_4_2_2_Abt_TheHosTalk3
//=============================================================================
class P_4_2_2_Abt_TheHosTalk3 extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S4_2_2Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////

var int pass1;


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
        if (P.name == 'EUSPrisoner4')
            Characters[1] = P.controller;
    }

    if (!bInit)
    {
    bInit=TRUE;
    pass1=0;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
UShostage2:
    Log("");
    CheckFlags(pass1,FALSE,'Talk1');
    JumpRandom('Talk2', 0.50, 'Talk3', 1.00, , , , , ,);
Talk1:
    Log("");
    SetFlags(pass1,TRUE);
    Speech(ConversationSubtitle("P_4_2_2_Abt_TheHosTalk3", "Speech_0001L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_51_07', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_2_2_Abt_TheHosTalk3", "Speech_0002L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_51_08', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_2_2_Abt_TheHosTalk3", "Speech_0003L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_51_09', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
Talk2:
    Log("");
    Speech(ConversationSubtitle("P_4_2_2_Abt_TheHosTalk3", "Speech_0004L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_51_10', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
Talk3:
    Log("");
    Speech(ConversationSubtitle("P_4_2_2_Abt_TheHosTalk3", "Speech_0005L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_51_11', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();

}

