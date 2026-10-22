//=============================================================================
// P_4_1_1_CEmb_Frances1
//=============================================================================
class P_4_1_1_CEmb_Frances1 extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S4_1_1Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////

var int TalkOnce;
var int TalkTwice;


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
        if (P.name == 'EFrances0')
            Characters[1] = P.controller;
    }

    if (!bInit)
    {
    bInit=TRUE;
    TalkOnce=0;
    TalkTwice=0;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
ConversationWithFrancesCoen:
    Log("This is the first covnersation with Frances in this level.");
    CheckFlags(TalkOnce,TRUE,'SecondTalk');
    SetFlags(TalkOnce,TRUE);
    Speech(ConversationSubtitle("P_4_1_1_CEmb_Frances1", "Speech_0012L", "Localization\\P_4_1_1ChineseEmbassy"), Sound'S4_1_1Voice.Play_41_05_01', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_1_1_CEmb_Frances1", "Speech_0013L", "Localization\\P_4_1_1ChineseEmbassy"), Sound'S4_1_1Voice.Play_41_10_01', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_1_1_CEmb_Frances1", "Speech_0014L", "Localization\\P_4_1_1ChineseEmbassy"), Sound'S4_1_1Voice.Play_41_10_02', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_1_1_CEmb_Frances1", "Speech_0015L", "Localization\\P_4_1_1ChineseEmbassy"), Sound'S4_1_1Voice.Play_41_10_03', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_1_1_CEmb_Frances1", "Speech_0016L", "Localization\\P_4_1_1ChineseEmbassy"), Sound'S4_1_1Voice.Play_41_10_04', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_1_1_CEmb_Frances1", "Speech_0017L", "Localization\\P_4_1_1ChineseEmbassy"), Sound'S4_1_1Voice.Play_41_10_05', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_1_1_CEmb_Frances1", "Speech_0018L", "Localization\\P_4_1_1ChineseEmbassy"), Sound'S4_1_1Voice.Play_41_10_06', 0, 0, TR_CONVERSATION, 0, false);
    Close();
    End();
SecondTalk:
    Log("SecondTalk");
    CheckFlags(TalkTwice,TRUE,'End');
    SetFlags(TalkTwice,TRUE);
    Speech(ConversationSubtitle("P_4_1_1_CEmb_Frances1", "Speech_0009L", "Localization\\P_4_1_1ChineseEmbassy"), Sound'S4_1_1Voice.Play_41_11_01', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_1_1_CEmb_Frances1", "Speech_0010L", "Localization\\P_4_1_1ChineseEmbassy"), Sound'S4_1_1Voice.Play_41_11_02', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_4_1_1_CEmb_Frances1", "Speech_0011L", "Localization\\P_4_1_1ChineseEmbassy"), Sound'S4_1_1Voice.Play_41_11_03', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    EndConversation();
End:
    End();

}

