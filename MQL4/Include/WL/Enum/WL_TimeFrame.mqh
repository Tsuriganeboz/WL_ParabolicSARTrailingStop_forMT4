//+------------------------------------------------------------------+
//|                                                 WL_TimeFrame.mqh |
//|                                    Copyright 2016, Tsuriganeboz  |
//|                                  https://github.com/Tsuriganeboz |
//+------------------------------------------------------------------+
#property copyright "Copyright 2016, Tsuriganeboz"
#property link      "https://github.com/Tsuriganeboz"
#property strict
//+------------------------------------------------------------------+
//| defines                                                          |
//+------------------------------------------------------------------+
// #define MacrosHello   "Hello, world!"
// #define MacrosYear    2010
//+------------------------------------------------------------------+
//| DLL imports                                                      |
//+------------------------------------------------------------------+
// #import "user32.dll"
//   int      SendMessageA(int hWnd,int Msg,int wParam,int lParam);
// #import "my_expert.dll"
//   int      ExpertRecalculate(int wParam,int lParam);
// #import
//+------------------------------------------------------------------+
//| EX5 imports                                                      |
//+------------------------------------------------------------------+
// #import "stdlib.ex5"
//   string ErrorDescription(int error_code);
// #import
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
enum WL_TimeFrame
{
   PeriodM1 = PERIOD_M1,         // 1分
   PeriodM5 = PERIOD_M5,         // 5分
   PeriodM15 = PERIOD_M15,       // 15分
   
   PeriodM30 = PERIOD_M30,       // 30分
   PeriodH1 = PERIOD_H1,       // 1時間
   PeriodH4 = PERIOD_H4,       // 4時間
   
   PeriodD1 = PERIOD_D1,       // 1日
   PeriodW1 = PERIOD_W1,       // 1週間
   PeriodMN1 = PERIOD_MN1,     // 1カ月
      
};

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
enum WL_TimeFrameWithCurrent
{
   XPeriodCurrent = PERIOD_CURRENT,  // チャート追従

   XPeriodM1 = PERIOD_M1,         // 1分
   XPeriodM5 = PERIOD_M5,         // 5分
   XPeriodM15 = PERIOD_M15,       // 15分
   
   XPeriodM30 = PERIOD_M30,       // 30分
   XPeriodH1 = PERIOD_H1,       // 1時間
   XPeriodH4 = PERIOD_H4,       // 4時間
   
   XPeriodD1 = PERIOD_D1,       // 1日
   XPeriodW1 = PERIOD_W1,       // 1週間
   XPeriodMN1 = PERIOD_MN1,     // 1カ月
      
};
