//+------------------------------------------------------------------+
//|                                  WL_ParabolicSARTrailingStop.mq4 |
//|                                     Copyright 2016, Tsuriganeboz |
//|                                  https://github.com/Tsuriganeboz |
//+------------------------------------------------------------------+
#include <WL/WL_ParabolicSARTrailingStop_Logic.mqh>
#include <WL/WL_ParabolicSARTrailingStop_Misc.mqh>
#include <WL/WL_ParabolicSARTrailingStop_Strategy.mqh>

#include <WL/Enum/WL_TimeFrame.mqh>

#property copyright "Copyright 2016, Tsuriganeboz"
#property link      "https://github.com/Tsuriganeboz"
#property version   "1.00"
#property strict

//---
sinput WL_TimeFrameWithCurrent TimeFrame = XPeriodM15;    // 時間軸

sinput double Step = 0.02;       // 加速因子の増加単位
sinput double Maximum = 0.2;    // 加速因子の最大値

sinput double ShiftStopLossPips = 0.0;       // トレール幅マージン pips


//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   WL_TrailingStopOrderSymbolMatch();
   
  }
//+------------------------------------------------------------------+
