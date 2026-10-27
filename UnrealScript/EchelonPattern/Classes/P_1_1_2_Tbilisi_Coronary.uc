//=============================================================================
// P_1_1_2_Tbilisi_Coronary
//=============================================================================
class P_1_1_2_Tbilisi_Coronary extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S1_1_2Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////

var int GrinkoGravyPlayed;
var int IntOnePlayed;
var int IntTwoPlayed;


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
        if (P.name == 'EMercenaryTechnician0')
            Characters[1] = P.controller;
    }

    if (!bInit)
    {
    bInit=TRUE;
    GrinkoGravyPlayed=0;
    IntOnePlayed=0;
    IntTwoPlayed=0;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
    Log("This is the interogation pattern for the merc tech coroner");
WhichInt:
    Log("Checking which interrogation to play.");
    CheckFlags(V1_1_2Tbilisi(Level.VarObject).BodyFound,TRUE,'AfterBlaustein');
    CheckFlags(IntOnePlayed,TRUE,'BeforeRepeat');
    SetFlags(IntOnePlayed,TRUE);
    Log("Sam hasn't found the bodies, playing the first interrogation.");
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0020L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_24', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0021L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_25', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0022L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_26', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0023L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_27', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0024L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_28', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0025L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_29', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0026L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_30', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0027L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_31', 1, 0, TR_CONVERSATION, 0, false);
    End();
AfterBlaustein:
    Log("Blaustein has been found. Playing second interrogation.");
    CheckFlags(IntTwoPlayed,TRUE,'AfterRepeat');
    SetFlags(IntTwoPlayed,TRUE);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0001L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_01', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0002L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_02', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0003L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_03', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0004L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_04', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0005L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_05', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0006L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_06', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0007L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_07', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0008L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_08', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0009L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_09', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0010L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_10', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0011L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_11', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0012L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_12', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0013L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_13', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0014L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_14', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0015L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_15', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0016L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_16', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0017L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_17', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0018L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_18', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0019L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_19', 0, 0, TR_CONVERSATION, 0, false);
    End();
BeforeRepeat:
    Log("The tech has said all he has to say.");
    JumpRandom('B4Va', 0.50, 'B4Vb', 1.00, , , , , ,);
B4Va:
    Log("");
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0033L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_33', 1, 0, TR_CONVERSATION, 0, false);
    End();
B4Vb:
    Log("");
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0032L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_32', 1, 0, TR_CONVERSATION, 0, false);
    End();
AfterRepeat:
    Log("The tech has said all he has to say");
    CheckFlags(GrinkoGravyPlayed,TRUE,'BeforeRepeat');
    SetFlags(GrinkoGravyPlayed,TRUE);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0028L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_20', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0029L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_21', 1, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0030L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_22', 0, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_1_1_2_Tbilisi_Coronary", "Speech_0031L", "Localization\\P_1_1_2Tbilisi"), Sound'S1_1_2Voice.Play_11_32_23', 1, 0, TR_CONVERSATION, 0, false);
    End();
DoNothing:
    Log("Doing nothing");
    End();

}
