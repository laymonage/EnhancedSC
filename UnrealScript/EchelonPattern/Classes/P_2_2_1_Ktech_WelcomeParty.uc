//=============================================================================
// P_2_2_1_Ktech_WelcomeParty
//=============================================================================
class P_2_2_1_Ktech_WelcomeParty extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S2_2_1Voice.uax

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
        if (P.name == 'EMercenaryTechnician4')
            Characters[1] = P.controller;
        if (P.name == 'EMercenaryTechnician6')
            Characters[2] = P.controller;
        if (P.name == 'EMafiaMuscle12')
            Characters[3] = P.controller;
        if (P.name == 'EMafiaMuscle11')
            Characters[4] = P.controller;
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
WelcomePartyStart:
    Log("The Show Goes On");
    Sleep(1);
    CinCamera(0, 'WelcomePartyCinematicPosition02', 'WelcomePartyCinematicTarget02',);
    ChangeGroupState('s_alert');
    Goal_Set(2,GOAL_MoveTo,9,,,,'WelcomePartyNode01',,FALSE,,MOVE_JogAlert,,MOVE_CrouchJog);
    Goal_Set(2,GOAL_Wait,8,,,,'WelcomePartyNode01','PrsoCrAlCC0',FALSE,,MOVE_CrouchJog,,MOVE_CrouchJog);
    Goal_Set(4,GOAL_MoveTo,9,,'AI201MTech2','AI201MTech2','AI5AttackPoint2',,FALSE,,MOVE_JogAlert,,MOVE_JogAlert);
    Goal_Set(1,GOAL_MoveTo,9,,,,'WelcomePartyNode02',,FALSE,,MOVE_JogAlert,,MOVE_CrouchJog);
    Goal_Set(3,GOAL_MoveTo,9,,'AI201MTech1',,'AI5AttackPoint1',,FALSE,,MOVE_JogAlert,,MOVE_JogAlert);
    Goal_Set(3,GOAL_Attack,8,,'AI201MTech1','AI201MTech1','AI5AttackPoint1',,FALSE,,MOVE_JogAlert,,MOVE_JogAlert);
    Goal_Set(3,GOAL_MoveTo,7,,,,'WelcomePartyWallMine01',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Set(3,GOAL_PlaceWallMine,6,,,,'WelcomePartyWallMine02',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Set(4,GOAL_Attack,8,,'AI201MTech2','AI201MTech2','AI5AttackPoint2',,FALSE,,MOVE_JogAlert,,MOVE_JogAlert);
    Goal_Default(3,GOAL_Guard,9,,'WallMineChatFocus01',,'WallMineChatNode01',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Default(4,GOAL_Guard,9,,'WelcomePartyCinematicPosition03',,'WallMineChatNode02',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    WaitForGoal(3,GOAL_Attack,);
    ChangeState(3,'s_default');
    WaitForGoal(4,GOAL_Attack,);
    ChangeState(4,'s_default');
    Sleep(1);
    CinCamera(1, , ,);
    CinCamera(0, 'WelcomePartyCinematicPosition03', 'WelcomePartyCinematicTarget03',);
    WaitForGoal(3,GOAL_PlaceWallMine,);
    Sleep(1.5);
    CinCamera(1, , ,);
    SetExclusivity(FALSE);
    Sleep(1);
    ChangeGroupState('s_default');
    Speech(ConversationSubtitle("P_2_2_1_Ktech_WelcomeParty", "Speech_0002L", "Localization\\P_2_2_1_Kalinatek"), Sound'S2_2_1Voice.Play_22_64_01', 4, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_1_Ktech_WelcomeParty", "Speech_0003L", "Localization\\P_2_2_1_Kalinatek"), Sound'S2_2_1Voice.Play_22_64_02', 3, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_1_Ktech_WelcomeParty", "Speech_0004L", "Localization\\P_2_2_1_Kalinatek"), Sound'S2_2_1Voice.Play_22_64_03', 4, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_1_Ktech_WelcomeParty", "Speech_0005L", "Localization\\P_2_2_1_Kalinatek"), Sound'S2_2_1Voice.Play_22_64_04', 3, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_1_Ktech_WelcomeParty", "Speech_0006L", "Localization\\P_2_2_1_Kalinatek"), Sound'S2_2_1Voice.Play_22_64_05', 4, 0, TR_CONVERSATION, 0, false);
    Speech(ConversationSubtitle("P_2_2_1_Ktech_WelcomeParty", "Speech_0007L", "Localization\\P_2_2_1_Kalinatek"), Sound'S2_2_1Voice.Play_22_64_06', 3, 0, TR_CONVERSATION, 0, false);
    Close();
    ResetGroupGoals();
    Goal_Default(3,GOAL_Guard,9,,'WelcomePartyFocus01',,'WelcomePartyNode06',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    Goal_Default(4,GOAL_Guard,9,,'WelcomePartyPAFocus02',,'WelcomePartyPAPointTag1',,FALSE,,MOVE_WalkRelaxed,,MOVE_WalkRelaxed);
    End();

}

