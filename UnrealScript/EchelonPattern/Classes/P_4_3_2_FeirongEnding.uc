//=============================================================================
// P_4_3_2_FeirongEnding
//=============================================================================
class P_4_3_2_FeirongEnding extends EPattern;

#exec OBJ LOAD FILE=..\Sounds\S4_3_2Voice.uax

// FLAGS ///////////////////////////////////////////////////////////////////////

var int BarkA;
var int BarkB;
var int BarkC;
var int BarkD;
var int BarkE;
var int FeinrongTalksDone;
var int FeirongTalkOver;
var int FeirongTalksBDone;
var int FeirongTalksCDone;


// EVENTS //////////////////////////////////////////////////////////////////////

function EventCallBack(EAIEvent Event,Actor TriggerActor)
{
    if (!bDisableMessages)
    {
        switch (Event.EventType)
        {
        case AI_DEAD:
            EventJump('FeirongDied');
            break;
        case AI_UNCONSCIOUS:
            EventJump('FeirongDied');
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
        if (P.name == 'EFeirong0')
            Characters[1] = P.controller;
    }

    if (!bInit)
    {
    bInit=TRUE;
    BarkA=0;
    BarkB=0;
    BarkC=0;
    BarkD=0;
    BarkE=0;
    FeinrongTalksDone=0;
    FeirongTalkOver=0;
    FeirongTalksBDone=0;
    FeirongTalksCDone=0;
    }

}


// PATTERN /////////////////////////////////////////////////////////////////////

state Pattern
{

Begin:
SamInTheHouse:
    Log("When Sam approaches Feirong");
    PlayerMove(false);
    CinCamera(0, 'FeirongEndingPosition01', 'FeirongEndingTarget01',);
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0003L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_44_01', 1, 0, TR_CONVERSATION, 0, false);
    CinCamera(1, , ,);
    CinCamera(0, 'FeirongEndingPosition02', 'FeirongEndingTarget01',);
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0004L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_44_02', 0, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Wait,9,,'PLAYER','PLAYER','FeirongChair','FeirAsNmAA0',FALSE,3.5,MOVE_WalkRelaxed,,MOVE_Sit);
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0029L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_01', 1, 0, TR_CONVERSATION, 0, false);
    ResetGoals(1);
    Close();
    CinCamera(1, , ,);
    PlayerMove(true);
    Goal_Set(1,GOAL_MoveTo,9,,,,'FeirongEndingNode04',,TRUE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    WaitForGoal(1,GOAL_MoveTo,);
    Goal_Set(1,GOAL_Attack,9,,'PLAYER','PLAYER',,'FeirStNmSh0',FALSE,3,,,);
    WaitForGoal(1,GOAL_Attack,);
    Goal_Set(1,GOAL_Action,9,,,,,'FeirStNmDk0',FALSE,,,,);
    WaitForGoal(1,GOAL_Action,);
    Goal_Default(1,GOAL_Guard,9,,'PLAYER','PLAYER','FeirongEndingNode04',,FALSE,,MOVE_WalkNormal,,MOVE_WalkNormal);
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0006L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_02', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Attack,9,,'PLAYER','PLAYER',,'FeirStNmSh0',FALSE,3,,,);
    WaitForGoal(1,GOAL_Attack,);
    Goal_Set(1,GOAL_Action,9,,,,,'FeirStNmDk0',FALSE,,,,);
    WaitForGoal(1,GOAL_Action,);
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0007L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_03', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Attack,9,,'PLAYER','PLAYER',,'FeirStNmSh0',FALSE,3,,,);
    WaitForGoal(1,GOAL_Attack,);
    Goal_Set(1,GOAL_Action,9,,,,,'FeirStNmDk0',FALSE,,,,);
    WaitForGoal(1,GOAL_Action,);
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0008L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_04', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Attack,9,,'PLAYER','PLAYER',,'FeirStNmSh0',FALSE,3,,,);
    WaitForGoal(1,GOAL_Attack,);
    Goal_Set(1,GOAL_Action,9,,,,,'FeirStNmDk0',FALSE,,,,);
    WaitForGoal(1,GOAL_Action,);
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0009L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_05', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Attack,9,,'PLAYER','PLAYER',,'FeirStNmSh0',FALSE,3,,,);
    WaitForGoal(1,GOAL_Attack,);
    Goal_Set(1,GOAL_Action,9,,,,,'FeirStNmDk0',FALSE,,,,);
    WaitForGoal(1,GOAL_Action,);
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0010L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_06', 1, 0, TR_CONVERSATION, 0, false);
    Goal_Set(1,GOAL_Attack,9,,'PLAYER','PLAYER',,'FeirStNmSh0',FALSE,3,,,);
    WaitForGoal(1,GOAL_Attack,);
    Goal_Set(1,GOAL_Action,9,,,,,'FeirStNmDk0',FALSE,,,,);
    WaitForGoal(1,GOAL_Action,);
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0011L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_07', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    Jump('FeirongBarks');
    End();
FeirongCycle:
    Log("Cycles a few anims after Feirong finishes talking");
    Goal_Set(1,GOAL_Action,9,,'PLAYER','PLAYER',,'4360fei6',FALSE,,,,);
    WaitForGoal(1,GOAL_Action,);
    Goal_Set(1,GOAL_Action,9,,,,,'4360fei5',FALSE,,,,);
    WaitForGoal(1,GOAL_Action,);
    Jump('FeirongCycle');
    End();
FeirongOnTheKeyboard:
    Log("FeirongOnTheKeyboard");
    Sleep(5);
    SendUnrealEvent('ESam');
    SetFlags(V4_3_2ChineseEmbassy(Level.VarObject).FeirongObjectiveDone,TRUE);
    SetFlags(V4_3_2ChineseEmbassy(Level.VarObject).FeirongCanDie,TRUE);
    DisableMessages(TRUE, TRUE);
    KillNPC(1, FALSE, FALSE);
    Sleep(3);
    SendPatternEvent('LambertComms','FeirongFiles');
    End();
FeirongBarks:
    Log("FeirongBarks");
BarkA:
    Log("BarkA");
    CheckFlags(BarkA,TRUE,'BarkB');
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0012L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_08', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    SetFlags(BarkA,TRUE);
    End();
BarkB:
    Log("BarkB");
    CheckFlags(BarkB,TRUE,'BarkC');
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0013L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_09', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    SetFlags(BarkB,TRUE);
    End();
BarkC:
    Log("BarkC");
    CheckFlags(BarkC,TRUE,'BarkD');
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0014L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_10', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    SetFlags(BarkC,TRUE);
    End();
BarkD:
    Log("BarkD");
    CheckFlags(BarkD,TRUE,'BarkE');
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0015L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_11', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    SetFlags(BarkD,TRUE);
    End();
BarkE:
    Log("BarkE");
    CheckFlags(BarkE,TRUE,'BarkF');
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0016L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_12', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    SetFlags(BarkE,TRUE);
    End();
BarkF:
    Log("BarkF");
    Speech(ConversationSubtitle("P_4_3_2_FeirongEnding", "Speech_0017L", "Localization\\P_4_3_2ChineseEmbassy"), Sound'S4_3_2Voice.Play_43_45_13', 1, 0, TR_CONVERSATION, 0, false);
    Close();
    Jump('FeirongCycle');
    End();
FeirongDied:
    Log("Check if Feirong can die, if not, Game over");
    CheckFlags(V4_3_2ChineseEmbassy(Level.VarObject).FeirongCanDie,TRUE,'EndAll');
    SendPatternEvent('LambertComms','GenericFail');
EndAll:
    End();

}

