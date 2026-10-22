//=============================================================================
// P_4_2_2_Abt_TheHosTalk1
//=============================================================================
class P_4_2_2_Abt_TheHosTalk1 extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S4_2_2Voice.uax

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
        if (P.name == 'EUSPrisoner5')
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
UShostage0:
    Log("");
    JumpRandom('Talk1', 0.34, 'Talk2', 0.67, 'Talk3', 1.00, , , ,);
Talk1:
    Log("");
    Speech(ConversationSubtitle("P_4_2_2_Abt_TheHosTalk1", "Speech_0001L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_51_01', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
Talk2:
    Log("");
    Speech(ConversationSubtitle("P_4_2_2_Abt_TheHosTalk1", "Speech_0002L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_51_02', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
Talk3:
    Log("");
    Speech(ConversationSubtitle("P_4_2_2_Abt_TheHosTalk1", "Speech_0003L", "Localization\\P_4_2_2_Abattoir"), Sound'S4_2_2Voice.Play_42_51_03', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    End();

}

