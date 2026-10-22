//=============================================================================
// P_3_2_2_NPP_RelayTech
//=============================================================================
class P_3_2_2_NPP_RelayTech extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S3_2_2Voice.uax

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
        if (P.name == 'EMercenaryTechnician1')
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
Relay:
    Log("Mojo");
    Speech(ConversationSubtitle("P_3_2_2_NPP_RelayTech", "Speech_0001L", "Localization\\P_3_2_2_PowerPlant"), Sound'S3_2_2Voice.Play_32_42_01', 1, 0, TR_CONVERSATION, 0, false);
    Sleep(8);
    Close();
    End();

}

defaultproperties
{
}
