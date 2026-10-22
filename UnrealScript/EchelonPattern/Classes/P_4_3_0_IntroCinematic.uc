//=============================================================================
// P_4_3_0_IntroCinematic
//=============================================================================
class P_4_3_0_IntroCinematic extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S4_3_0Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////

var int TriggerConversationOnce;


// EVENTS //////////////////////////////////////////////////////////////////////

function EventCallBack(EAIEvent Event,Actor TriggerActor)
{
    if (!bDisableMessages)
    {
        switch (Event.EventType)
        {
        case AI_DEAD:
            EventJump('SamKilledFrances');
            break;
        case AI_TAKE_DAMAGE:
            EventJump('SamKilledFrances');
            break;
        case AI_UNCONSCIOUS:
            EventJump('SamKilledFrances');
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
        if (P.name == 'EFrances0')
            Characters[1] = P.controller;
    }

    if (!bInit)
    {
    bInit=TRUE;
    TriggerConversationOnce=0;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
IntroCinematicStart:
    Log("IntroStart");
    Speech(ConversationSubtitle("P_4_3_0_IntroCinematic", "Speech_0001L", "Localization\\P_4_3_0ChineseEmbassy"), Sound'S4_3_0Voice.Play_43_03_01', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_3_0_IntroCinematic", "Speech_0002L", "Localization\\P_4_3_0ChineseEmbassy"), Sound'S4_3_0Voice.Play_43_03_02', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_3_0_IntroCinematic", "Speech_0003L", "Localization\\P_4_3_0ChineseEmbassy"), Sound'S4_3_0Voice.Play_43_03_03', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    EndConversation();
    End();
SamKilledFrances:
    Log("If Sam Kills Frances");
    DisableMessages(TRUE, TRUE);
    Sleep(2);
    SendPatternEvent('LambertComms','GenericFail');
    End();

}

