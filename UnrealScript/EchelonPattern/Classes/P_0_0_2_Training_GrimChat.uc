//=============================================================================
// P_0_0_2_Training_GrimChat
//=============================================================================
class P_0_0_2_Training_GrimChat extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S0_0_2Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////

var int ChatOnce;
var int ChatThrice;
var int ChatTwice;


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
        if (P.name == 'EAnna1')
            Characters[1] = P.controller;
    }

    if (!bInit)
    {
    bInit=TRUE;
    ChatOnce=0;
    ChatThrice=0;
    ChatTwice=0;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
    Log("This is Grimsdottir's conversation pattern.");
    CheckFlags(ChatThrice,TRUE,'FinalLoop');
FirstChat:
    Log("Sam approaches for the first time.");
    CheckFlags(ChatOnce,TRUE,'SecondChat');
    SetFlags(ChatOnce,TRUE);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0001L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_01', 0, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0002L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_02', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0003L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_03', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0004L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_04', 0, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0005L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_05', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0006L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_06', 0, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0007L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_07', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Close();
    End();
SecondChat:
    Log("Sam tries again");
    CheckFlags(ChatTwice,TRUE,'ThirdChat');
    SetFlags(ChatTwice,TRUE);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0008L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_08', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0009L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_09', 0, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0010L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_10', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0011L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_11', 0, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0012L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_12', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Close();
    End();
ThirdChat:
    Log("Jeez, what are you trying to do, pick her up or something?");
    CheckFlags(ChatThrice,TRUE,'FinalLoop');
    SetFlags(ChatThrice,TRUE);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0013L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_13', 0, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0014L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_14', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0015L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_15', 0, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0016L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_16', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0017L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_17', 0, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0018L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_18', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Close();
    SendPatternEvent('ScriptedEvents','GrimReturn');
    End();
FinalLoop:
    Log("Sam has drained it, looping the endings.");
    JumpRandom('ANiceties', 0.50, 'BNiceties', 1.00, , , , , ,);
    End();
ANiceties:
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0019L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_19', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Close();
    End();
BNiceties:
    Speech(ConversationSubtitle("P_0_0_2_Training_GrimChat", "Speech_0020L", "Localization\\P_0_0_2_Training"), Sound'S0_0_2Voice.Play_00_18_20', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(0.1);
    Close();
    End();

}

